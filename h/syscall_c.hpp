#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"
#include "tcb.hpp"
#include "semaphore.hpp"

typedef TCB* thread_t;

void* mem_alloc(size_t);
int   mem_free(void*);

int thread_create(thread_t*, void (*start_routine)(void*), void*);
void thread_dispatch();
int thread_exit();

typedef KSemaphore* sem_t;

int sem_open(sem_t* handle, unsigned init);
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);
int sem_wait_n(sem_t id, unsigned n);
int sem_signal_n(sem_t id, unsigned n);
void putc(char c);
char getc();

char getc();
void putc(char c);

int time_sleep(time_t time);

#endif