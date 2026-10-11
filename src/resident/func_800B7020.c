#include "common.h"

extern u32 D_800D3950;

u32 func_800B7020(u32 value)
{
    u32 previous;
    register u32 base __asm__("$1");
    previous = D_800D3950;
    /* Retain the captured old word before materializing the store address. */
    __asm__("" : : "r"(previous));
    base = 0x800D0000;
    /* This initialized address identity emits no instructions. */
    __asm__("" : "=r"(base) : "0"(base));
    *(u32 *)(base + 0x3950) = value;
    return previous;
}
