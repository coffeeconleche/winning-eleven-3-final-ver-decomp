#include "common.h"

u32 func_800B01F4(u32 index)
{
    u32 address = 0x800E0000u;
    /* Keep the real address base before adding the incoming index. */
    __asm__("" : "=r"(address) : "0"(address));
    address += index;
    return *(u8 *)(address + 0x7090u);
}
