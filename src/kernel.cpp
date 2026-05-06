#include "../h/kernel.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"


void Kernel::init() {
    // set trap routine
    Riscv::w_stvec((uint64)&supervisorTrap);
    //Riscv::ms_sstatus(Riscv::SstatusBits::SSTATUS_SIE);
}


void Kernel::supervisorTrapHandler()
{
    uint32 scause = Riscv::r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // Not external interupt
        // ecall from user or supervisor mode

        uint64 volatile sepc = Riscv::r_sepc() + 4;
        uint64 volatile sstatus =  Riscv::r_sstatus();
        uint64 volatile opcode = Riscv::r_a0();
        int value;
        void* pointer;
        
        switch (opcode) {
            case 0x01: //mem_alloc
                size_t size;
                __asm__ volatile("mv %0, a1" : "=r" (size));

                pointer = MemoryAllocator::instance().kmem_alloc(size);

                __asm__ volatile("mv t0, %0" : : "r"(pointer));
                __asm__ volatile ("sd t0, 80(x8)"); //override previously stored a0 in memory to return value
                break;

            case 0x02: //mem_free
                __asm__ volatile("mv %0, a1" : "=r" (pointer));

                value = MemoryAllocator::instance().kmem_free(pointer);

                __asm__ volatile("mv t0, %0" : : "r"(value));
                __asm__ volatile ("sd t0, 80(x8)"); //override previously stored a0 in memory to return value
                break;
            default:
                break;
        }

        Riscv::w_sstatus(sstatus);
        Riscv::w_sepc(sepc);
    }
    
    return;
}