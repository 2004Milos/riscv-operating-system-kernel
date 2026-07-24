
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"

//SEMAPHORE
Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}

//THREAD
void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
    myHandle = nullptr;
}

Thread::~Thread() {
    delete this->myHandle;
}

int Thread::start() {
    return thread_create(&this->myHandle, body, arg);
}

Thread::Thread() {
    this->body = Thread::wrapper;
    this->arg = this;
    myHandle = nullptr;
}

void Thread::wrapper(void *thread) {
    ((Thread *) thread)->run();
    thread_exit();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

//CONSOLE
void Console::putc(char c) {
    ::putc(c);
}

char Console::getc() {
    return ::getc();
}

//PERIODIC THREAD
List<PeriodicThread> PeriodicThread::createdThreads;

PeriodicThread::PeriodicThread(time_t period)
    : Thread(), period(period), terminated(false)
{
    createdThreads.addLast(this);
}

void PeriodicThread::terminate() {
    terminated = true;
}

void PeriodicThread::run() {
    while (!terminated) {
        periodicActivation();
        Thread::sleep(period);
    }
}