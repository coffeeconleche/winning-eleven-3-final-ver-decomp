#include "common.h"

void func_800AD088(u32 value)
{
    /* Preserve the measured address-base allocation without instructions. */
    register u32 base __asm__("$1") = 0x800D0000;
    __asm__("" : "=r"(base) : "0"(base));
    *(u32 *)(base - 0x159C) = value;
}
