#include "../h/tcb.hpp"
#include "../h/kernel.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    return new TCB(body, TIME_SLICE);
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::releaseAll() {
    while (this->joined.peekFirst()) {
        TCB* tcb = this->joined.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
}

void TCB::join(TCB* handle) {
    if(!handle->isFinished()) {
        running->setBlocked(true);
        handle->joined.addLast(running); //join this thread to the handle's joined list so it waits for the handle to finish
    }
}

void TCB::threadWrapper()
{
    Kernel::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    running->releaseAll(); //release all joined threads that are waiting for this thread to finish
    thread_dispatch();
}
