#ifndef MEMORY_ALLOCATOR_HPP
#define MEMORY_ALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator {
public:
    static MemoryAllocator& instance();

    void* kmem_alloc(size_t);
    int kmem_free(void*) ;
    

private:
    MemoryAllocator() = default;
    ~MemoryAllocator() = default;

    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

private:
    struct ChunkHeader {
        uint32 magic;
        size_t size;
        ChunkHeader* prev;
        ChunkHeader* next;
        bool free;
    };
    void kmem_init();
    void try_join(ChunkHeader*);
    ChunkHeader* head = nullptr;
    static constexpr uint32 MAGIC  = 0xABCDEF01;
};


#endif