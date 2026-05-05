#ifndef RISCV_HPP
#define RISCV_HPP

#include "../lib/hw.h"

class Riscv {
public:
    // CSR read/write
    static uint64 r_scause();
    static void    w_scause(uint64);

    static uint64 r_sepc();
    static void    w_sepc(uint64);

    static uint64 r_stvec();
    static void    w_stvec(uint64);

    static uint64 r_stval();
    static void    w_stval(uint64);

    static uint64 r_sstatus();
    static void    w_sstatus(uint64);

    // bit operations
    static void ms_sstatus(uint64 mask);
    static void mc_sstatus(uint64 mask);

    static void ms_sip(uint64 mask);
    static void mc_sip(uint64 mask);
    static uint64 r_sip();

    static void popSppSpie();

    enum SstatusBits {
        SSTATUS_SIE  = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP  = (1 << 8)
    };
};

#endif