#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../h/buffer.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

void Kernel::init() {
    initBuffers();
    // set trap routine
    w_stvec((uint64)&supervisorTrap);
    //ms_sstatus(SstatusBits::SSTATUS_SIE);

    // Nit koja jedina prazni buffOUT na konzolu (mora biti nit, ne kod u
    // prekidnoj rutini, jer Buffer::get() blokira na semaforu kad je prazan).
    TCB::createThread(outputThreadBody, nullptr, new uint64[TCB::STACK_SIZE]);
}

void Kernel::outputThreadBody(void*) {
    while (true) {
        while (*((volatile char*) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
            char c = buffOUT->get(); //blokira (preko semafora) dok ima nesto za slanje - bezbedno ovde, ovo je obicna nit, ne prekidna rutina
            (*(char *) CONSOLE_TX_DATA) = c;
        }
        thread_dispatch(); //ako konzola trenutno nije spremna za prijem, ustupi procesor umesto da se vrti u mestu
    }
}

void Kernel::popSppSpie() {
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra"); //sepc = adresa odmah iza poziva ove funkcije (ra), da bi sret "nastavio" tacno tu, samo u User modu
    __asm__ volatile("sret"); //vrati se iz trap-a
}

Buffer *Kernel::buffIN;
Buffer *Kernel::buffOUT;

void Kernel::initBuffers() {
    buffIN = new Buffer(512);
    buffOUT = new Buffer(512);
}

using Body = void (*)(void*);

void Kernel::supervisorTrapHandler()
{
    uint64 scause = r_scause();
    if(scause == 0x8000000000000001UL) {//timer interrupt can be recognized by the value 1 only in the least and most significant bits in the scause register.
        mc_sip(BitMaskSip::SIP_SSIP); //clear the timer interrupt pending bit in the sip register
        TCB::time_tick(); // increases time for sleeping threads.

        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();

            TCB::dispatch();

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if(scause == 0x8000000000000009UL){ //Hardware interrupt
        int irq = plic_claim();
        if (irq == 10) // Keyboard interrupt
        {
            volatile char status = *((char *) CONSOLE_STATUS);
            while (status & CONSOLE_RX_STATUS_BIT) { //receive data dok god ima novopristiglih znakova
                char c = (*(char *) CONSOLE_RX_DATA);
                if (!buffIN->full()) buffIN->put(c);
                if (!buffOUT->full()) buffOUT->put(c); //eho na konzolu
                status = *((char *) CONSOLE_STATUS);
            }
        }
        plic_complete(irq);
    }
    else if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // Not external interupt
        // ecall from user or supervisor mode

        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus =  r_sstatus();
        
        uint64 volatile opcode = r_a0();
        KSemaphore* semHandlePtr;
        int returnValue;
        
        int value;
        void* pointer;
        switch (opcode) {
            case 0x01: //mem_alloc
                size_t size;
                __asm__ volatile("mv %0, a1" : "=r" (size));

                pointer = MemoryAllocator::instance().kmem_alloc(size);

                __asm__ volatile("mv t0, %0" : : "r"(pointer));
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
                break;

            case 0x02: //mem_free
                __asm__ volatile("mv %0, a1" : "=r" (pointer));

                value = MemoryAllocator::instance().kmem_free(pointer);

                __asm__ volatile("mv t0, %0" : : "r"(value));
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
                break;
            case 0x11: // thread_create(*handle, start_routine, arg)
                TCB** tcb; //handle is pointer to TCB, so we need pointer to pointer to TCB to write the address of new TCB into it
                Body body; // pointer to function that takes a void pointer as an argument and returns void
                void* arg;
                uint64* stack;
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
                __asm__ volatile ("mv %0, a2" : "=r" (body));
                __asm__ volatile ("mv %0, a3" : "=r" (stack));
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
                
                *tcb = TCB::createThread(body, arg, stack);
                if(*tcb != nullptr) {
                    //__asm__ volatile ("li a0, 0");
                    __asm__ volatile ("li t0, 0"); //load immediate 0 into t0 (success)
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
                }
                else {
                    //__asm__ volatile ("li a0, -1");
                    __asm__ volatile ("li t0, -1"); //-1 = error
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
                }
                break;
            case 0x12: // thread_exit
                TCB::running->setFinished(true);
                TCB::dispatch();
                __asm__ volatile ("li t0, 0");
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
                break;
            case 0x13: // thread_dispatch
                TCB::dispatch();
                break;
            case 0x21: //sem_open
                unsigned init;
                KSemaphore** semHandle;

                __asm__ volatile ("mv %0, a2" : "=r" (init)); //initial value of semaphore
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
                *semHandle = KSemaphore::createSemaphore(init);

                if(*semHandle != nullptr) {
                    __asm__ volatile ("li t0, 0"); //load immediate 0 into t0 (success)
                    __asm__ volatile ("sw t0, 80(x8)"); //override a0 on stack to return value
                }
                else {
                    __asm__ volatile ("li t0, -1"); //load immediate -1 into t0 (error)
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                break;
            case 0x22: //sem_close
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->close();
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue)); //load return value into temporary register t0
                __asm__ volatile ("sw t0, 80(x8)"); //override a0 on stack to return value
                break;
            case 0x23: //sem_wait
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->kwait_n(1);
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)"); 
                break;
            case 0x24: //sem_signal
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->ksignal_n(1);
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case 0x25: // sem_wait_n
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                __asm__ volatile ("mv %0, a2" : "=r" (value)); //n value
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->kwait_n(value);
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case 0x26: // sem_signal_n
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                __asm__ volatile ("mv %0, a2" : "=r" (value)); //n value
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->ksignal_n(value);
                }
                else returnValue = -2;
                break;
            case 0x31: // time_sleep
                __asm__ volatile ("mv %0, a1" : "=r" (value)); //time value
                returnValue = TCB::time_sleep(value);
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case 0x41: // getc
                returnValue = buffIN->get();
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case 0x42: // putc
                char c;
                __asm__ volatile ("mv %0, a1" : "=r" (c));
                buffOUT->put(c);
                break;
            default:
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    
    return;
}