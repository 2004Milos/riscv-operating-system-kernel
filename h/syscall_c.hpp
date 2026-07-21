#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"
#include "tcb.hpp"
#include "semaphore.hpp"

typedef TCB* thread_t;

// Syscall IDs
constexpr unsigned long SYS_MEM_ALLOC = 0x01;
constexpr unsigned long SYS_MEM_FREE  = 0x02;

void* mem_alloc(size_t);
int   mem_free(void*);
int thread_create(thread_t*, void (*start_routine)(void*), void*);
void thread_dispatch();

typedef Semaphore* sem_t;

int sem_open(sem_t* handle, unsigned init);
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);

#endif