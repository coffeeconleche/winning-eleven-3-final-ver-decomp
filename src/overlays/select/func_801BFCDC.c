#include "common.h"

extern u8 D_800C7C3C[];
/* Caller ABI view; original parameter declarations remain unknown. */
extern u32 func_800502A0(u32, u32);

void func_801BFCDC(u8 *destination, u32 selector, u32 option)
{
    u32 key;
    register s32 value __asm__("$7");
    s32 x;

    /* Local access view retains the measured LUI/selector setup order without
     * adding loads. This does not establish an original volatile/MMIO contract. */
    value = *(volatile u8 *)(D_800C7C3C + (u8)selector);
    key = (u8)selector;
    x = (value % 15) * 16;
    if (key >= 40) {
        x += 24;
    }
    destination[3] = x;

    /* Empty identities keep the first byte write before the second division
     * and retain the captured value's lifetime. They emit no instructions. */
    __asm__("" : "=r"(value) : "0"(value) : "memory");
    {
        s32 quotient = value / 15;
        __asm__("" : : "r"(quotient), "r"(value));
        destination[4] = quotient * 24 - 48;
    }
    destination[10] = func_800502A0((u8)selector, option);
}
