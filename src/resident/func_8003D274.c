#include "common.h"

extern u8 D_800FF748[];
extern void func_8005C2AC(u8 *, u8, u8, u8, u8);

/* Offset views describe existing storage, not complete native structures. */
#define H(o) (*(u16 *)(scratch + (o)))
#define P (*(u8 **)(scratch + 0x2F4))
/* Keep the original low products and modulo-32-bit sums without signed overflow. */
#define SQUARE(v) ((u32)((long long)(v) * (v)))
#define SUM(x, z) (SQUARE(x) + SQUARE(z))

s32 func_8003D274(u8 *origin, u32 checkHeight)
{
    u8 *base = D_800FF748;
    register u8 *scratch __asm__("$16") = (u8 *)0x1F800000;
    s32 height;
    u16 firstX;
    s32 x;
    s32 z;
    register u8 *destination __asm__("$7");

    if (origin[0x38D] != scratch[0x2A9]) {
        if (scratch[0x2FC] || *(s16 *)(scratch + 0x31C) < 7) return 0;
    }
    {
        u8 negate = origin[0x3AC];
        u8 selector;
        u8 index;
        u8 angle;

        __asm__("" : : "r"(negate));
        selector = origin[0x38E];
        index = origin[0x390];
        __asm__("" : : "r"(selector), "r"(index));
        angle = origin[0x3AA];
        __asm__("" : : "r"(angle));
        func_8005C2AC(origin, selector, index, angle, negate);
    }
    if ((u8)checkHeight) {
        u16 left = H(0xF2);
        register u16 right __asm__("$3") = H(0x4E);

        height = (s16)left - (s16)right;
        if (height < 0) height = -height;
        if (height > 128) return 0;
    }
    firstX = H(0xF0);
    {
        register u32 squareX __asm__("$4");
        register u32 squareZ __asm__("$3");
        register u32 total __asm__("$2");

        {
            register s32 initialX __asm__("$3") = (s16)firstX;
            initialX -= (s16)H(0x36);
            squareX = SQUARE(initialX);
        }
        {
            u16 leftZ = H(0xF4);
            register u16 rightZ __asm__("$3") = H(0x66);
            z = (s16)leftZ - (s16)rightZ;
        }
        squareZ = SQUARE(z);
        total = squareX + squareZ;
        if (total > 0x2400U) return 0;
    }
    destination = P;
    if (destination[0x396] == 4) {
        u8 *other = base + ((scratch[0x2AA] & 0xFF) % 24U & 0xFF) * 1000;
        s32 refX;
        s32 refZ;
        s32 otherX;
        s32 otherZ;
        s32 originDistance;

        if (other[0x38D] == 1 || other[0x38D] == 12) return 0;
        refX = (s16)H(0x40);
        x = *(s16 *)(origin + 2) - refX;
        refZ = (s16)H(0x70);
        z = *(s16 *)(origin + 6) - refZ;
        originDistance = (s32)SUM(x, z);
        otherX = *(s16 *)(other + 2) - refX;
        otherZ = *(s16 *)(other + 6) - refZ;
        if ((s32)SUM(otherX, otherZ) >= originDistance) goto fail;
    }
    *(u16 *)(destination + 2) = firstX;
    *(u16 *)(P + 4) = ((s16)H(0xF2) + (s16)H(0x4E)) >> 1;
    *(u16 *)(P + 6) = H(0xF4);
    return 1;
fail:
    return 0;
}
