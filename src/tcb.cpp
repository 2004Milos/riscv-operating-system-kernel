#include "../h/tcb.hpp"
#include "../h/kernel.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    TCB* newTCB = new TCB(body, arg);
    Scheduler::put(newTCB);
    return newTCB;
}

void TCB::yield()
{
    Kernel::w_a0(0x13);
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked() && !old->isSleeping()) {
        Scheduler::put(old);
    }
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

int TCB::time_sleep(time_t timeout) {
    if (timeout == 0) {
        return 0;
    }

    if (running->isBlocked() || running->isFinished()) {
        return -1;
    }

    running->setSleeping(timeout);
    SleepingThreads.addLast(running);
    TCB::dispatch(); //this won't put the sleeping thread back into the ready queue.

    return 0;
}
//static
void TCB::time_tick(){

    for(int i = 0; i < SleepingThreads.getSize(); i++) {
        TCB* t = SleepingThreads.removeFirst();
        t->decSleep();

        if (t->isSleeping()) {
            SleepingThreads.addLast(t);
        } else {
            Scheduler::put(t);
        }
    }
}