#ifndef KERNEL_HPP
#define KERNEL_HPP

#include "../lib/hw.h"

class Kernel {
public:
    // entry point init
    static void init();


private:
    static void supervisorTrapHandler();
    static void supervisorTrap();
};

#endif