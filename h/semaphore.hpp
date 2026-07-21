#ifndef SemaphoreDef
#define SemaphoreDef

#include "list.hpp"
#include "tcb.hpp"
#include "memory_allocator.hpp"

class Semaphore {
public:
    explicit Semaphore(unsigned init = 1) {
        this->value = init;
        this->closed = false;
    }

    int kwait_n(unsigned n);
    int ksignal_n(unsigned n);
    static Semaphore* createSemaphore(unsigned init = 1);
    unsigned getValue() const { return value; }
    int close();

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
    class BlockedThreadInfo {
        TCB* thread; //pointer to blocked thread
        unsigned requested; //number of resources requested by the blocked thread (1 for wait, n for wait_n)

        BlockedThreadInfo(TCB* thread, unsigned requested) : thread(thread), requested(requested) {}
        friend class Semaphore;
    };

    bool closed;
    int value;
    List<BlockedThreadInfo> blocked;
};

#endif 