#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "memory_allocator.hpp"

// Thread Control Block
class TCB
{
public:
    ~TCB() { MemoryAllocator::instance().kmem_free(stack); }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }

    void setSleeping(time_t value) { this->sleepTime = value; }

    bool isSleeping() { return this->sleepTime > 0; }

    void decSleep() { if (this->sleepTime > 0) this->sleepTime--; }

    using Body = void (*)(void*); //Body = pointer to function that takes a void pointer as an argument and returns void

    static TCB *createThread(Body body, void* arg, uint64 *stack);

    static void yield();

    static int time_sleep(uint64 time);

    static void time_tick();

    static TCB *running;

    static List<TCB> SleepingThreads;

    uint64 getTimeSlice() const { return timeSlice; }

    void* operator new(size_t size) {
        return MemoryAllocator::instance().kmem_alloc(size);
    }
    void* operator new[](size_t size) {
        return MemoryAllocator::instance().kmem_alloc(size);
    }
    
    void operator delete(void *ptr) {
        MemoryAllocator::instance().kmem_free(ptr);
    }
    void operator delete[](void *ptr) {
        MemoryAllocator::instance().kmem_free(ptr);
    }

private:
    TCB(Body body, void* arg, uint64 *stack) :
            body(body),
            stack(stack),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            sleepTime(0),
            arg(arg),
            timeSlice(DEFAULT_TIME_SLICE)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    bool blocked;
    time_t sleepTime;
    void* arg;
    List<TCB> joined;
    uint64 timeSlice;

    friend class Kernel;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);
    
    static void join(TCB* handle);
    static void dispatch();

    void releaseAll();

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
