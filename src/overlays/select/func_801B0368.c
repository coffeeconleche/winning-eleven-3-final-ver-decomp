#include "common.h"

u8 *func_801B0368(u8 *glyph, s32 value) {
    /* Only an upper cap exists; retain signed division/remainder and the
     * original negative-input behavior rather than adding a lower bound. */
    if (value >= 1000) {
        value = 999;
    }
    if (value >= 100) {
        s32 digit = value / 100;
        s32 remaining = value % 100;
        s32 tens;
        glyph[10] = 14;
        glyph[3] = digit * 8 - 80;
        glyph += 12;
        glyph[10] = 14;
        tens = (remaining / 10) * 8 - 80;
        /* Keep this quotient tail separate from the two-digit path. This
         * empty input constraint emits no instructions. */
        __asm__("" : : "r"(tens));
        glyph[3] = tens;
    } else if (value >= 10) {
        glyph[3] = 0xB0;
        glyph[10] = 91;
        glyph += 12;
        glyph[10] = 14;
        glyph[3] = (value / 10) * 8 - 80;
    } else {
        glyph[3] = 0xB0;
        glyph[10] = 91;
        glyph += 12;
        glyph[3] = 0xB0;
        glyph[10] = 91;
    }
    glyph += 12;
    /* Preserve the pointer advance before the final remainder calculation;
     * the matching operand leaves value unchanged and emits no instructions. */
    __asm__("" : "=r"(value) : "0"(value), "r"(glyph));
    glyph[10] = 14;
    glyph[3] = (value % 10) * 8 - 80;
    return glyph + 12;
}
