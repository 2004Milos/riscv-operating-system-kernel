#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"

void print_hex(unsigned long long x)
{
    char hex[] = "0123456789abcdef";

    __putc('0');
    __putc('x');

    for (int i = (sizeof(unsigned long long) * 8) - 4; i >= 0; i -= 4) {
        __putc(hex[(x >> i) & 0xF]);
    }
}

void print_ptr(void* p)
{
    print_hex((unsigned long long)p);
}



void main()
{
    Kernel::init();

    char* ptr = (char*) mem_alloc(sizeof(char));
    char* ptr1 = (char*) mem_alloc(sizeof(char));
    char* ptr2 = (char*) mem_alloc(sizeof(char));
    print_ptr(ptr);
    print_ptr(ptr1);
    print_ptr(ptr2);


    return;
}