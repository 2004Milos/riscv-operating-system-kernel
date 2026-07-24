//
// Created by os on 6/7/24.
//

#ifndef BUFFER
#define BUFFER

#include "semaphore.hpp"


class Buffer
{
public:
        void put(char item);
        char get();
        Buffer(int cap);
        ~Buffer();
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