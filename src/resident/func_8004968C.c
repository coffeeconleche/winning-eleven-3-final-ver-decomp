#include "common.h"

extern u8 D_800FF748[];
extern void func_800676C4(u32, s32, s32, u32);

/* Partial access views; full layouts and historical API types are unknown. */
s32 func_8004968C(u8 *origin, s32 arg1, s32 arg2)
{
    s32 x = (s16)arg1;
    s32 z = (s16)arg2;
    u8 *base;
    u8 *other;
    s32 deltaX;
    s32 deltaZ;

    func_800676C4(origin[0x399] ^ 1, x, z, 1);
    base = D_800FF748;
    other = base +
        ((((u8 *)0x1F800322)[(origin[0x399] ^ 1) * 2] % 24U) & 0xFF) * 1000;
    deltaX = *(s16 *)(other + 2) - x;
    deltaZ = *(s16 *)(other + 6) - z;
    /* Preserve the original low products and unsigned modulo-32-bit sum. */
    return (s32)((u32)((long long)deltaX * deltaX) +
                 (u32)((long long)deltaZ * deltaZ));
}
