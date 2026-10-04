#include "common.h"

/* Word-width view of the final caller argument; the callee loads its low byte. */
extern void func_801A85B0(s16, s16, u8, u8, u32);

/* Width is a raw word on the right path, but narrowed for centering.
 * Original argument names and aggregate meanings remain unknown. */
void func_801A89F0(s32 xArg, s32 yArg, u32 width, u16 value, s32 spacing, u8 alignment, u8 style, u8 selector) {
    s32 y = yArg;
    /* These position bindings retain the distinct retail saved lifetimes. */
    register s32 x __asm__("$17") = xArg;
    u32 hundreds, tens, ones;
    s32 digits;
    s32 glyphWidth;
    if (value > 999) {
        value = 999;
    }
    /* Preserve unsigned division and each measured halfword conversion. */
    hundreds = (u16)((u32)value / 100);
    tens = (u16)((u32)(u16)((u32)value % 100) / 10);
    ones = (u16)((u32)value % 10);
    if (value >= 100) {
        digits = 3;
    } else if (value >= 10) {
        digits = 2;
    } else {
        digits = 1;
    }
    glyphWidth = 8;
    if (style == 7) {
        glyphWidth = 6;
    }
    switch (alignment) {
    case 3: {
        s32 extra = digits - 1;
        s32 span = extra * spacing + glyphWidth;
        x += ((s32)(u16)width - span) >> 1;
    }
    /* Centering falls through into the left-to-right callback sequence. */
    case 0:
    case 1:
    default:
        if (value >= 100) {
            func_801A85B0(x, y, hundreds, style, selector);
            x += spacing;
            func_801A85B0(x, y, tens, style, selector);
            x += spacing;
        } else if (value >= 10) {
            func_801A85B0(x, y, tens, style, selector);
            x += spacing;
        }
        func_801A85B0(x, y, ones, style, selector);
        break;
    case 2: {
        /* Reuse the incoming saved word while hiding its known byte range;
         * the input-only constraint anchors the retail mask before position
         * arithmetic. Both empty constraints are identities, not instructions. */
        register u32 rawSelector __asm__("$22") = selector;
        register u32 rightSelector __asm__("$18");
        register s32 rightX __asm__("$16");
        s16 rightY = y;
        __asm__("" : "=r"(rawSelector) : "0"(rawSelector));
        rightSelector = rawSelector & 0xFF;
        __asm__("" : : "r"(rightSelector));
        rightX = x + width - glyphWidth;
        func_801A85B0(rightX, rightY, ones, style, rightSelector);
        rightX -= spacing;
        if (value >= 100) {
            func_801A85B0(rightX, rightY, tens, style, rightSelector);
            func_801A85B0(rightX - spacing, rightY, hundreds, style, rightSelector);
        } else if (value >= 10) {
            func_801A85B0(rightX, rightY, tens, style, rightSelector);
        }
        break;
    }
    }
}
