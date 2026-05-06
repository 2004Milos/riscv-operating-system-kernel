#include "../h/memory_allocator.hpp"
#include "../lib/console.h"



MemoryAllocator& MemoryAllocator::instance() {
    static MemoryAllocator inst;
    return inst;
}

// Initializes heap memory as a one free chunk
void MemoryAllocator::kmem_init(){
    head = (ChunkHeader*) HEAP_START_ADDR;
    head->next = nullptr;
    head->prev = nullptr;
    head->size =  ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - sizeof(ChunkHeader));
    head->free = true;
    head->magic = MAGIC;
    return;
} 

/**
 * Allocates a chunk of memory from the heap.
 * @param size Number of blocks requested
 * @return nullptr (no suitable free chunk exists),
 *        pointer (pointer to allocated memory)
 */
void* MemoryAllocator::kmem_alloc(size_t size) {
    if (size == 0) return nullptr;

    // aligned size in bytes
    size_t aligned = size * MEM_BLOCK_SIZE;

    __putc('r');

    if (!head) kmem_init();
    
    ChunkHeader* curr = head;

    // first-fit algorithm
    while (curr) {
        if (curr->free){
            if (curr->size == aligned){
                // Full take
                curr->free = false;

                return (void*)((char*)curr + sizeof(ChunkHeader));
            }
            else if (curr->size > aligned + sizeof(ChunkHeader)){
                // Split free chunk in case its larger and large enaugh for making additional chunk inside
                size_t remaining = curr->size - aligned;
                
                ChunkHeader* newChunk = (ChunkHeader*)((char*)curr + sizeof(ChunkHeader) + aligned);
                newChunk->free = true;
                newChunk->size = remaining - sizeof(ChunkHeader);
                newChunk->next = curr->next;
                newChunk->prev = curr;
                newChunk->magic = MAGIC;
                if(curr->next) curr->next->prev = newChunk;
                curr->next = newChunk;
                curr->size = aligned;
                curr->free = false;

                return (void*)((char*)curr + sizeof(ChunkHeader));
            }
        }

        curr = curr->next;
    }

    return nullptr;
}

/**
 * Frees previously allocated memory block.
 * @param ptr Pointer returned by kmem_alloc.
 * @return Error codes:
 *         0 (success),
 *        -1 (null pointer or heap not initialized),
 *        -2 (pointer out of heap),
 *        -3 (invalid pointer, not previously allocated or corrupted)
 */
int MemoryAllocator::kmem_free(void* ptr) {
    if (!ptr) return -1;
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;

    ChunkHeader* chunkHeader = (ChunkHeader*)((char*)ptr - sizeof(ChunkHeader));
    if(chunkHeader->magic != MAGIC) return -3;

    chunkHeader->free = true;

    // Try joining with free neighbours
    try_join(chunkHeader);

    return 0;
}

// Joins chunk with free neighbouring chunks
void MemoryAllocator::try_join(ChunkHeader* chunk){
    if(!chunk->free) return;

    //join with next
    if(chunk->next){
        if(chunk->next->free && (char*)chunk + sizeof(ChunkHeader) + chunk->size == (char*)chunk->next){
            chunk->size += sizeof(ChunkHeader) + chunk->next->size;
            chunk->next = chunk->next->next;
            if (chunk->next)
                chunk->next->prev = chunk;
        }
    }
    //join with prev
    if(chunk->prev){
        if(chunk->prev->free && (char*)chunk->prev + sizeof(ChunkHeader) + chunk->prev->size == (char*)chunk){
            chunk->prev->size += sizeof(ChunkHeader) + chunk->size;
            chunk->prev->next = chunk->next;
            if (chunk->next)
                chunk->next->prev = chunk->prev;
            chunk = chunk->prev;
        }
    }
}