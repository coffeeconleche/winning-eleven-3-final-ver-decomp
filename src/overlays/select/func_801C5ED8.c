#include "common.h"

/* Scalar view of the observed byte; this allocates no new storage. */
extern u8 tick __asm__("D_801D42AC+1");
extern u8 D_801D89EC[], D_801D89F0[];
extern u8 D_801D89F4[];
/* Word caller ABI view: coordinates have explicit signed-half conversions;
 * six colors and the final selector are narrowed by the callee. */
extern void func_801C6250(u32, s32, s32, s32, s32, u32, u32, u32,
                         u32, u32, u32, u32);

void func_801C5ED8(u32 unused, u16 x, u16 y, u16 right, u16 bottom,
                   u8 selector) {
    u16 savedX = x;
    u16 savedY = y;
    u16 savedRight = right;
    u16 savedBottom = bottom;
    u32 i = 0;
    u32 j;
    u32 group, within;
    s32 opposite;
    s32 sum4;
    s32 adjusted;
    s32 left;
    s32 top;
    s32 end;
    s32 lower;
    u32 r0;
    u32 g0;
    u32 b0;
    u32 r1;
    u32 g1;
    u32 b1;
    /* Ordered byte access views preserve the six captures and their reloads
     * across submissions, including the two separate b[3] reads below.
     * These qualifiers do not classify the tables as hardware registers. */
    volatile u8 *r;
    volatile u8 *g;
    volatile u8 *b;

    tick = (u8)(tick + 1) % 60;
    while ((u8)i < 4) {
        u32 index = (u8)i;
        i++;
        D_801D89F4[index] = 0;
        D_801D89EC[index] = 0;
        D_801D89F0[index] = 255;
    }

    {
        u32 firstGroup = (u8)(tick / 15);
        within = (u8)(tick % 15);
        D_801D89EC[firstGroup] = (within + 1) * 17;
    }
    group = tick / 15;
    sum4 = (s32)group + 3;
    adjusted = sum4;
    if (sum4 < 0) adjusted = (s32)group + 6;
    i = 0;
    r = D_801D89EC;
    g = D_801D89F0;
    b = D_801D89F4;
    /* The byte quotient is at most 17, so this signed rounding sequence
     * computes (group + 3) % 4. Its mask retains the measured nine-bit
     * remainder access view without changing any reachable table index. */
    opposite = sum4 - (adjusted & 0x1FC);
    D_801D89EC[opposite] = ~D_801D89EC[group];
    do {
        register u32 callZero __asm__("$4");
        if ((u8)i != 0) {
            u32 k = 0;
            do {
                u32 index = (u8)k;
                k++;
                D_801D89F0[index] >>= 1;
            } while ((u8)k < 4);
        }
        callZero = 0;
        /* Preserve the observed literal-zero setup before the captures.
         * Removing this input or its binding changes setup order; removing
         * the binding also adds a word. This input emits no instructions. */
        __asm__ volatile("" : : "r"(callZero));
        j = (u8)i;
        r0 = r[0]; g0 = g[0]; b0 = b[0];
        r1 = r[1]; g1 = g[1]; b1 = b[1];
        i++;
        left = (s16)(savedX + j);
        top = (s16)(savedY + j);
        end = (s16)(savedRight + j);
        func_801C6250(callZero, left, top, end, top, r0, g0, b0,
                     r1, g1, b1, selector);
        r0 = r[1]; g0 = g[1]; b0 = b[1];
        r1 = r[2]; g1 = g[2]; b1 = b[2];
        lower = (s16)(savedBottom + j);
        func_801C6250(0, end, top, end, lower, r0, g0, b0,
                     r1, g1, b1, selector);
        r0 = r[2]; g0 = g[2]; b0 = b[3];
        r1 = r[3]; g1 = g[3]; b1 = b[3];
        func_801C6250(0, end, lower, left, lower, r0, g0, b0,
                     r1, g1, b1, selector);
        r0 = r[3]; g0 = g[3]; b0 = b[3];
        r1 = r[0]; g1 = g[0]; b1 = b[0];
        func_801C6250(0, left, lower, left, top, r0, g0, b0,
                     r1, g1, b1, selector);
    } while ((u8)i < 2);
}
