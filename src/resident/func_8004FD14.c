#include "common.h"

/* Address view only; the complete table layout and ownership are unknown. */
extern u8 D_80105508[];
extern void func_8004FAC0(u32, u32);

/* Measured low-byte input and void views, not recovered complete APIs. */
void func_8004FD14(u32 notify)
{
    u32 address = (u32)D_80105508;
    s32 count = 53;

    do {
        *(u8 *)(address + 4) = 0;
        address += 40;
    } while (--count >= 0);

    if ((u8)notify != 0) {
        func_8004FAC0(0, 0);
    }
}
