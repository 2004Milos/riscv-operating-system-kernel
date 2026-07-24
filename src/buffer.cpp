#include "../h/buffer.hpp"

Buffer::Buffer(int cap)
{
    this->cap = cap;
    head=tail=0;
    cnt=0;
    buff = (char*) MemoryAllocator::instance().kmem_alloc(cap*sizeof(char));
    itemAvailable = new KSemaphore(0);
    spaceAvailable = new KSemaphore(cap);
}

void Buffer::put(char item)
{
    spaceAvailable->kwait_n(1);
    buff[head]=item;
    head = (head+1)%cap;
    cnt++;
    itemAvailable->ksignal_n(1);
}

char Buffer::get()
{
    itemAvailable->kwait_n(1);
    char ret = buff[tail];
    tail = (tail+1)%cap;
    cnt--;
    spaceAvailable->ksignal_n(1);
    return ret;
}

Buffer::~Buffer()
{
    MemoryAllocator::instance().kmem_free(buff);
    delete itemAvailable;
    delete spaceAvailable;
}