#include "../h/syscall_c.hpp"
#include "../lib/console.h"
/**
 * @param size Size in bytes to be allocated
 */
// Upis vrednosti registra sstatus u automatsku promenljivu x 
//asm volatile("csrr %0, sstatus" : "=r" (x)); 
// Upis vrednosti automatske promenljive x u registar sstatus 
//asm volatile("csrw sstatus, %0" : : "r" (x)); 
// Instrukcija koja učitava podatak iz memorije u registar s0 
//asm volatile("ld s0, 8(sp)"); 
void* mem_alloc(size_t size)
{
    return nullptr;

}