#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"


void main()
{
    Kernel::init();
    Kernel::print_int((long long)MEM_BLOCK_SIZE, 16, 0);
    __putc('\n');
    Kernel::print_int((long long)HEAP_START_ADDR, 16, 0);
    __putc('\n');
    Kernel::print_int((long long)HEAP_END_ADDR, 16, 0);
    __putc('\n');
    __putc('\n');

    return;
}