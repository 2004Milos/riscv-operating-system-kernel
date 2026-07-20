#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"
#include "tcb.hpp"

typedef TCB* thread_t;

// Syscall IDs
constexpr unsigned long SYS_MEM_ALLOC = 0x01;
constexpr unsigned long SYS_MEM_FREE  = 0x02;

void* mem_alloc(size_t);
int   mem_free(void*);
int thread_create(thread_t*, void (*start_routine)(void*), void*);
void thread_dispatch();


#endif