#include "common.h"

extern u8 D_800FF748[];

void func_801AA40C(u8 sourceIndex, u8 destinationIndex) {
    s32 i = 0;
    s32 one = 1;
    u8 *base;
    u8 *source;
    s32 offset;

    /* Keep the reused flag value in the original early setup position. */
    __asm__ volatile ("" : : "r"(one));
    base = D_800FF748;
    source = base + sourceIndex * 22 + 0x88A5;
    offset = destinationIndex * 132;
    for (; i < 22; i++, offset += 6) {
        u8 *row = base + offset;
        if (row[0x93A9] != 0) {
            row[0x93A9] = 0;
        } else {
            /* These byte stores can alias the source: retain its reread and
             * the narrowed counter reread instead of combining the tests. */
            if (*source >= 2) {
                row[0x93A9] = one;
            }
            if (*source & 1) {
                row[0x93A8]++;
            }
            if (row[0x93A8] >= 2) {
                row[0x93A9] = one;
                row[0x93A8] = 0;
            }
        }
        source++;
    }
}
