#include "common.h"

/* Halfword access view; valid row/column domains and field meanings are unknown. */
extern u16 D_800C7C68[];

/* The known callers ignore the result; the original return API is unknown. */
void func_80050888(u32 selector)
{
    u16 *base;
    u16 *row;

    selector = (u8)selector;
    base = D_800C7C68;
    row = base + selector * 6;

    *(u16 *)0x1F80000E = row[*(u8 *)0x1F8002E3];
}
