#ifndef KERNEL_HPP
#define KERNEL_HPP

#include "../lib/hw.h"
#include "../lib/console.h"
#include "buffer.hpp"

class Kernel {
public:
    // entry point init
    static void init();

    // Posebna, uvek-aktivna nit koja prazni buffOUT na konzolu. Blokiranje na
    // semaforu unutar KBuffer::get() sme da se desi samo u kontekstu obicne niti
    // (ne unutar prekidne rutine), zato ovo mora biti nit, a ne deo
    // supervisorTrapHandler-a.
    static void outputThreadBody(void* arg);

    // Da li jos ima karaktera koje output nit nije stigla da isprazni na konzolu.
    // Koristi se da se pozivalac (npr. main()) ne vrati pre nego sto se sav
    // ispis stvarno prenese, jer je pra_njenje buffOUT-a asinhrono (u posebnoj niti).
    static bool outputPending() { return !buffOUT->empty(); }

private:
    static void supervisorTrapHandler();
    static void supervisorTrap();
    static void initBuffers();
    static KBuffer *buffIN;
    static KBuffer *buffOUT;
public:
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

    static inline void w_a0(uint64 x) {
        __asm__ volatile("mv a0, %0" : : "r"(x));
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

    static inline uint64 r_sip() { //koji prekid postoji? bit 0 softver; bit 9 spoljasni hardverski
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


    static void popSppSpie() __attribute__((noinline)); //Kada se vratiš iz trap-a, vrati se u User mode. (spp je prethodni privilegovani režim i treba ga pregaziti)

    enum SstatusBits {
        SSTATUS_SIE  = (1 << 1), //čime se maskiraju spoljašnji prekidi
        SSTATUS_SPIE = (1 << 5), //prethodna vrednost sia
        SSTATUS_SPP  = (1 << 8), //Koji je bio privilegovani režim pre nego što je nastao trap
    };

    enum BitMaskSip
    {
        SIP_SSIP = (1UL << 1),
        SIP_STIP = (1UL << 5),
        SIP_SEIP = (1UL << 9),
    };
};

#endif