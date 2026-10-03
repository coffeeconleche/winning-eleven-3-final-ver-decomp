#include "common.h"

/* Append observed control/glyph bytes; the original encoding/prototype is
 * unknown. No terminator or capacity check is added to the matching routine. */
u8 *func_801A9168(u8 *output, u8 prefix, u8 kind, s32 number) {
    s32 last;
    s32 tens;

    *output++ = 0x1A;
    *output++ = prefix;
    if (kind == 0x40) {
        if (prefix != 4) {
            *output++ = 'C';
            *output++ = 'P';
            last = 'U';
        } else {
            last = 0xCA;
        }
    } else {
        /* The narrowed byte is promoted to a signed word for the comparison
         * and division, retaining the signed multiply/quotient sequence. */
        number = (u8)number;
        if (number < 10) {
            if (prefix != 4) {
                *output++ = 'P';
                *output++ = '_';
                *output++ = 0x1A;
                *output++ = prefix;
                /* Keep this advance in its branch, rather than sharing the
                 * pointer-increment tail with the other one-digit path. */
                __asm__ volatile ("" : : "r"(output));
                last = number + '0';
            } else {
                *output++ = 0xC6;
                *output++ = '_';
                last = number + '0';
            }
        } else {
            if (prefix != 4) {
                tens = number / 10;
                *output++ = 'P';
            } else {
                tens = number / 10;
                *output++ = 0xC6;
            }
            *output++ = tens + '0';
            last = number - tens * 10 + '0';
        }
    }
    *output++ = last;
    /* Retain the pointer advance before the return-delay-slot copy. */
    __asm__ volatile ("" : : "r"(output));
    return output;
}
