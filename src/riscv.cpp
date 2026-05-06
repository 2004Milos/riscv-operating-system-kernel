#include "../h/riscv.hpp"

uint64 Riscv::r_scause() {
    volatile uint64 x;
    __asm__ volatile("csrr %0, scause" : "=r"(x));
    return x;
}

uint64 Riscv::r_a0() {
    volatile uint64 x;
    __asm__ volatile("mv %0, a0" : "=r"(x));
    return x;
}

void Riscv::w_scause(uint64 x) {
    __asm__ volatile("csrw scause, %0" : : "r"(x));
}

uint64 Riscv::r_sepc() {
    volatile uint64 x;
    __asm__ volatile("csrr %0, sepc" : "=r"(x));
    return x;
}

void Riscv::w_sepc(uint64 x) {
    __asm__ volatile("csrw sepc, %0" : : "r"(x));
}

uint64 Riscv::r_sstatus() {
    volatile uint64 x;
    __asm__ volatile("csrr %0, sstatus" : "=r"(x));
    return x;
}

void Riscv::w_sstatus(uint64 x) {
    __asm__ volatile("csrw sstatus, %0" : : "r"(x));
}

void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
}

void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
}

uint64 Riscv::r_sip() {
    volatile uint64 x;
    __asm__ volatile("csrr %0, sip" : "=r"(x));
    return x;
}

void Riscv::ms_sip(uint64 mask) {
    __asm__ volatile("csrs sip, %0" : : "r"(mask));
}

void Riscv::mc_sip(uint64 mask) {
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
}

uint64 Riscv::r_stvec() {
    volatile uint64 x;
    __asm__ volatile("csrr %0, stvec" : "=r"(x));
    return x;
}

void Riscv::w_stvec(uint64 x) {
    __asm__ volatile("csrw stvec, %0" : : "r"(x));
}

uint64 Riscv::r_stval() {
    volatile uint64 x;
    __asm__ volatile("csrr %0, stval" : "=r"(x));
    return x;
}

void Riscv::w_stval(uint64 x) {
    __asm__ volatile("csrw stval, %0" : : "r"(x));
}

void Riscv::popSppSpie() {
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
}