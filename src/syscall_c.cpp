#include "../h/syscall_c.hpp"
#include "../lib/console.h"

/**
 * C API function for allocation on heap
 * @param size Size in bytes to be allocated
 * @return pointer to allocated heap space
 */
void* mem_alloc(size_t size) {
    size_t size_in_blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    
    __asm__ volatile("mv a1, %0" : : "r"(size_in_blocks)); //send size as argument for ecall
    __asm__ volatile("li a0, 0x01"); //send opcode as second argument (0x01 - mem_alloc)
    __asm__ volatile("ecall");

    void* ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return ret;
}

/**
 * C API function to free allocated space
 * @param ptr pointer to heap space allocated by mem_alloc
 * @return negative error code or 0 for successfull free
 */
int mem_free (void* ptr) {
    __asm__ volatile("mv a1, %0" : : "r"(ptr)); //send pointer as argument for ecall
    __asm__ volatile("li a0, 0x02"); //send opcode as second argument (0x02 - mem_free)
    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {

    __asm__ volatile("mv a7, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}