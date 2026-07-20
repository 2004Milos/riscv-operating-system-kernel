#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"

void Kernel::init() {
    // set trap routine
    w_stvec((uint64)&supervisorTrap);
    //ms_sstatus(SstatusBits::SSTATUS_SIE);
}

using Body = void (*)(void*);

void Kernel::supervisorTrapHandler()
{
    uint32 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // Not external interupt
        // ecall from user or supervisor mode

        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus =  r_sstatus();
        
        uint64 volatile opcode = r_a0();
        
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
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
                __asm__ volatile ("mv %0, a2" : "=r" (body));
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
                *tcb = TCB::createThread(body, arg);
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
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case 0x13: // thread_dispatch
                TCB::dispatch();
                break;
            case 0x14: // thread_join
                TCB* handle;
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
                TCB::join(handle);
                TCB::dispatch();
                break;
            default:
                break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    
    return;
}