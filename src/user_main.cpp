#include "../h/syscall_cpp.hpp"
sem_t sem;
void function(void* arg) {
    for (int i = 0; i < 5; i++) {
        Console::putc('a');
        Thread::sleep(5);
        sem_signal(sem);
    }
}

class MyPeriodicThread : public PeriodicThread {
public:
    MyPeriodicThread(time_t period)
        : PeriodicThread(period)
    {
    }

protected:
    void periodicActivation() override {
        Console::putc('b');
        sem_signal(sem);
    }
};

void userMain()
{
    
    sem_open(&sem, 0);
    Thread* t1 = new Thread(function, nullptr);
    t1->start();
    MyPeriodicThread* pt = new MyPeriodicThread(10);
    pt->start();
    sem_wait_n(sem, 10);
    pt->terminate();
}
