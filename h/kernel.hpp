#ifndef KERNEL_HPP
#define KERNEL_HPP

#include "../lib/hw.h"
#include "../lib/console.h"
class Kernel {
public:
    // entry point init
    static void init();

    inline static void print_int(int xx, int base, int sgn)
    {
        char my_digits[] = "0123456789ABCDEF";
        char buf[16];
        int i, neg;
        uint x;

        neg = 0;
        if(sgn && xx < 0){
            neg = 1;
            x = -xx;
        } else {
            x = xx;
        }

        i = 0;
        do{
            buf[i++] = my_digits[x % base];
        }while((x /= base) != 0);
        if(neg)
            buf[i++] = '-';

        while(--i >= 0)
            __putc(buf[i]);

    }

private:
    static void supervisorTrapHandler();
    static void supervisorTrap();

    static inline uint64 r_scause() {
        uint64 volatile x;
        __asm__ volatile("csrr %0, scause" : "=r"(x));
        return x;
    }

    static inline uint64 r_a0() {
        uint64 volatile x;
        __asm__ volatile("mv %0, a0" : "=r"(x));
        return x;
    }

    static inline void w_scause(uint64 x) {
        __asm__ volatile("csrw scause, %0" : : "r"(x));
    }

    static inline uint64 r_sepc() {
        uint64 volatile x;
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
        return x;
    }

    static inline void w_sepc(uint64 x) {
        __asm__ volatile("csrw sepc, %0" : : "r"(x));
    }

    static inline uint64 r_sstatus() {
        uint64 volatile x;
        __asm__ volatile("csrr %0, sstatus" : "=r"(x));
        return x;
    }

    static inline void w_sstatus(uint64 x) {
        __asm__ volatile("csrw sstatus, %0" : : "r"(x));
    }

    static inline void ms_sstatus(uint64 mask) {
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    }

    static inline void mc_sstatus(uint64 mask) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    }

    static inline uint64 r_sip() {
        uint64 volatile x;
        __asm__ volatile("csrr %0, sip" : "=r"(x));
        return x;
    }

    static inline void ms_sip(uint64 mask) {
        __asm__ volatile("csrs sip, %0" : : "r"(mask));
    }

    static inline void mc_sip(uint64 mask) {
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    }

    static inline uint64 r_stvec() {
        uint64 volatile x;
        __asm__ volatile("csrr %0, stvec" : "=r"(x));
        return x;
    }

    static inline void w_stvec(uint64 x) {
        __asm__ volatile("csrw stvec, %0" : : "r"(x));
    }

    static inline uint64 r_stval() {
        uint64 volatile x;
        __asm__ volatile("csrr %0, stval" : "=r"(x));
        return x;
    }

    static inline void w_stval(uint64 x) {
        __asm__ volatile("csrw stval, %0" : : "r"(x));
    }

    static inline void popSppSpie() {
        mc_sstatus(SSTATUS_SPP);
        __asm__ volatile("sret");
    }

    enum SstatusBits {
        SSTATUS_SIE  = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP  = (1 << 8)
    };

};


#endif