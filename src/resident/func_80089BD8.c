#include "common.h"

/* View of the measured final halfword; no complete buffer layout is claimed. */
extern u16 D_800FB6BE;

/* The void view does not establish the original return contract. */
void func_80089BD8(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u16 fill = 0x7FFF;
    s32 count;
    u32 address;

    count = 119;
    address = (u32)&D_800FB6BE;

    /* 120 aligned stores, descending through 0x800FB5D0. Keep the final
     * unused 0x800FB5CE address as integer arithmetic, not an array pointer. */
    do {
        *(u16 *)address = fill;
        address -= 2;
    } while (--count >= 0);

    *(u16 *)(scratch + 0x288) = 0;
    scratch[0x2C0] = 0;
}
