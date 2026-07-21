#include "../h/semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"

int Semaphore::kwait_n(unsigned n) { //lock/unlock unnecesary because with ecall we blocked interrupts
    if (closed) {
        return -1;
    }

    if (value >= n) { //value is never negative
        value -= n;
        return 0;
    }

    blocked.addLast(
        new BlockedThreadInfo(TCB::running, n)
    );

    TCB::running->setBlocked(true);
    thread_dispatch();

    if (closed) {
        return -1;
    }

    return 0;
}

int Semaphore::ksignal_n(unsigned n) {
    if(this->closed) {
        return -1;
    }

    this->value += n;

    while (this->blocked.peekFirst()) {
        BlockedThreadInfo* bti = this->blocked.peekFirst(); //FIFO - unlock threads in the order they were blocked
        if (bti->requested <= this->value) {
            this->value -= bti->requested;
            bti = this->blocked.removeFirst();
            bti->thread->setBlocked(false);
            Scheduler::put(bti->thread);
            delete bti;
        } else { 
            //if first thread cant be unblocked, we dont unblock any other threads either
            //starvation solved (resource-consuming threads wont wait indefinately)
            //FIFO kept
            break;
        }
    }

    return 0;
}

Semaphore *Semaphore::createSemaphore(unsigned int init) {
    return new Semaphore(init);
}

int Semaphore::close() {
    if (closed) {
        return -1;
    }
    closed = true;

    while (this->blocked.peekFirst()) {
        BlockedThreadInfo* bti = this->blocked.removeFirst();
        bti->thread->setBlocked(false);
        Scheduler::put(bti->thread);
    }
    return 0;
}