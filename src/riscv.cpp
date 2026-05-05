#include "../h/riscv.hpp"

uint64 Riscv::r_scause() {
    uint64 x;
    asm volatile("csrr %0, scause" : "=r"(x));
    return x;
}

void Riscv::w_scause(uint64 x) {
    asm volatile("csrw scause, %0" : : "r"(x));
}

uint64 Riscv::r_sepc() {
    uint64 x;
    asm volatile("csrr %0, sepc" : "=r"(x));
    return x;
}

void Riscv::w_sepc(uint64 x) {
    asm volatile("csrw sepc, %0" : : "r"(x));
}

uint64 Riscv::r_sstatus() {
    uint64 x;
    asm volatile("csrr %0, sstatus" : "=r"(x));
    return x;
}

void Riscv::w_sstatus(uint64 x) {
    asm volatile("csrw sstatus, %0" : : "r"(x));
}

void Riscv::ms_sstatus(uint64 mask) {
    asm volatile("csrs sstatus, %0" : : "r"(mask));
}

void Riscv::mc_sstatus(uint64 mask) {
    asm volatile("csrc sstatus, %0" : : "r"(mask));
}

uint64 Riscv::r_sip() {
    uint64 x;
    asm volatile("csrr %0, sip" : "=r"(x));
    return x;
}

void Riscv::ms_sip(uint64 mask) {
    asm volatile("csrs sip, %0" : : "r"(mask));
}

void Riscv::mc_sip(uint64 mask) {
    asm volatile("csrc sip, %0" : : "r"(mask));
}

uint64 Riscv::r_stvec() {
    uint64 x;
    asm volatile("csrr %0, stvec" : "=r"(x));
    return x;
}

void Riscv::w_stvec(uint64 x) {
    asm volatile("csrw stvec, %0" : : "r"(x));
}

uint64 Riscv::r_stval() {
    uint64 x;
    asm volatile("csrr %0, stval" : "=r"(x));
    return x;
}

void Riscv::w_stval(uint64 x) {
    asm volatile("csrw stval, %0" : : "r"(x));
}

void Riscv::popSppSpie() {
    mc_sstatus(SSTATUS_SPP);
    asm volatile("sret");
}