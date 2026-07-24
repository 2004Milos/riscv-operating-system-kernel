//
// Created by os on 6/7/24.
//

#ifndef BUFFER
#define BUFFER

#include "semaphore.hpp"


class KBuffer
{
public:
        void put(char item);
        char get();
        KBuffer(int cap);
        ~KBuffer();
        void* operator new(size_t size)
        {
            return MemoryAllocator::instance().kmem_alloc(size);
        }
        void operator delete(void* ptr)
        {
            MemoryAllocator::instance().kmem_free(ptr);
            return;
        }
        bool full() { return cnt==cap;}
        bool empty() { return cnt==0;}
        int count() const {return cnt;}
private:
    int cap;
    KSemaphore* itemAvailable;
    KSemaphore* spaceAvailable;
    int head;
    int tail;
    char* buff;
    int cnt;
};
#endif 