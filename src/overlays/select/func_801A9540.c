#include "common.h"

/* Emit two 12-byte glyph records using the supplied coordinate base. */
u8 *func_801A9540(u8 *glyph, s32 value, u8 alignment, s32 base, s32 styleArg) {
    s32 digit;
    /* Keep the blank coordinate in the original shared temporary register. */
    register s32 blank asm("$3") = base;
    /* The original reads only the low byte of the fifth argument's stack slot. */
    u32 style = *(u8 *)&styleArg;

    if (value >= 1000) {
        value = 99;
    }
    /* Preserve the byte load and the clamp branch's register lifetimes. */
    __asm__ volatile ("" : "+r"(blank), "+r"(style));

    if (value >= 10) {
        digit = value / 10;
        glyph[3] = base + digit * 8;
        glyph[10] = style;
        glyph += 12;
        glyph[3] = base + (value % 10) * 8;
        glyph[10] = style;
        glyph += 12;
    } else {
        if (alignment == 1) {
            goto single_left;
        }
        /* Keep the second test out of the first branch's delay slot. */
        __asm__ volatile ("");
        if (alignment == 2) {
            goto single_right;
        }
        goto done;
single_left:
        glyph[3] = base + value * 8;
        glyph[10] = style;
        glyph += 12;
        glyph[3] = blank;
        glyph[10] = 91;
        glyph += 12;
        goto done;
single_right:
        /* Retain the original style write after the alignment branch. */
        __asm__ volatile ("");
        glyph[3] = blank;
        glyph[10] = 91;
        glyph += 12;
        glyph[3] = base + value * 8;
        glyph[10] = style;
        glyph += 12;
    }

done:
    /* Keep the return-pointer move in the return branch's delay slot. */
    __asm__ volatile ("" : : "r"(base));
    return glyph;
}
