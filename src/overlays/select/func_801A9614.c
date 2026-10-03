#include "common.h"

/* Emit two 12-byte glyph records; alignment selects the single-digit layout. */
u8 *func_801A9614(u8 *glyph, s32 value, u8 alignment, u8 style) {
    /* Retain the original compiler's register lifetimes and delay slots. */
    register s32 number asm("$9");
    register s32 digit asm("$4");
    register s32 pixel asm("$2");
    register s32 sign asm("$3");

    number = value;

    if (number >= 1000) {
        number = 99;
    }

    if (number >= 10) {
        digit = number / 10;
        glyph[3] = (digit % 6) * 8;
        digit = digit < 6;
        if (!digit) {
            glyph[4] = 8;
        } else {
            glyph[4] = 0;
        }
        digit = number % 10;
        glyph[10] = style;
        glyph += 12;
        pixel = (digit % 6) * 8;
        __asm__ volatile ("" : : "r"(pixel));
        glyph[3] = pixel;
        digit = digit < 6;
        if (!digit) {
            glyph[4] = 8;
        } else {
            glyph[4] = 0;
        }
        glyph[10] = style;
        glyph += 12;
    } else {
        switch (alignment) {
        case 1:
            pixel = (number % 6) * 8;
            glyph[3] = pixel;
            if (number >= 6) {
                __asm__ volatile ("");
                glyph[4] = 8;
            } else {
                glyph[4] = 0;
            }
            glyph[10] = style;
            glyph += 12;
            glyph[3] = 0;
            glyph[4] = 0;
            glyph[10] = 91;
            glyph += 12;
            break;
        case 2:
            sign = number >> 31;
            __asm__ volatile ("" : : "r"(sign));
            glyph[3] = 0;
            glyph[4] = 0;
            glyph[10] = 91;
            glyph += 12;
            pixel = (number % 6) * 8;
            glyph[3] = pixel;
            if (number >= 6) {
                glyph[4] = 8;
            } else {
                glyph[4] = 0;
            }
            glyph[10] = style;
            glyph += 12;
            break;
        }
    }

    __asm__ volatile ("" : : "r"(number));
    return glyph;
}
