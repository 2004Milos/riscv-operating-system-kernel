#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"

// Syscall IDs
constexpr unsigned long SYS_MEM_ALLOC = 0x01;
constexpr unsigned long SYS_MEM_FREE  = 0x02;

void* mem_alloc(size_t);
int   mem_free(void*);


#endif