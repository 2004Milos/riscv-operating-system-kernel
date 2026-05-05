#include "../h/kernel.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"


void Kernel::init() {

    // set trap vector
    Riscv::w_stvec((uint64)&supervisorTrap);
}

void Kernel::trapHandler(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4)
{
    uint64 scause = Riscv::r_scause();
    while (true);
}

void Kernel::syscallHandler(uint64 id, uint64 a1, uint64 a2, uint64 a3, uint64 a4)
{
    switch (id) {
        case 0x01:
            __asm__ volatile("mv a0, %0" : : "r"(MemoryAllocator::instance().kmem_alloc(a1)));
            break;

        case 0x02:
            __asm__ volatile("mv a0, %0" : : "r"(MemoryAllocator::instance().kmem_free((void*)a1)));
            break;



        //default:
        //    __asm__ volatile("mv a0, %0" : : "r"((uint64)-1));
    }
}
