#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"

extern void userMain();

void main()
{

    Kernel::init();

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr, new uint64[DEFAULT_STACK_SIZE]); //main thread
    TCB::running = threads[0];

    Kernel::ms_sstatus(Kernel::SSTATUS_SIE); 

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);

    while(!threads[1]->isFinished() || Kernel::outputPending()) {
        thread_dispatch();
    }

    return;
}