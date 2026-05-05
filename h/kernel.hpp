#ifndef KERNEL_HPP
#define KERNEL_HPP

#include "../lib/hw.h"

class Kernel {
public:
    // entry point init
    static void init();

    // central trap handler
    static void trapHandler(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4);

private:
    static void syscallHandler(uint64 id, uint64 a1, uint64 a2, uint64 a3, uint64 a4);
    static void timerHandler();
    static void consoleHandler();
};

#endif