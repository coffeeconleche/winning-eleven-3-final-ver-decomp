#include "common.h"

/* Scalar byte access views of the retained three-byte object; the original
 * field names and complete record type are unknown. */
extern u8 phase __asm__("D_801D8038+1"), step __asm__("D_801D8038+2");
extern u8 D_801D8078[];

void func_801A5CFC(u32 mode, u32 side) {
    s32 i;
    if (phase >= 252)
        step = 252;
    else if (phase < 4)
        step = 4;
    phase += step;
    /* Preserve raw word dispatch and the four records selected by side*4.
     * Captures of phase before intervening stores matter if rows alias it. */
    switch (mode) {
    case 0:
    case 3:
    case 4:
        {
            u8 *base;
            /* Bind only the measured 255 constant lifetime; no emitted asm. */
            register u32 full __asm__("$4");
            u32 v;
            i = 0;
            side *= 4;
            base = D_801D8078;
            full = 255;
            for (; i < 4; i++) {
                u32 index = side + i;
                u8 *p = (u8 *)(index * 36 + (u32)base);
                p[4] = full - phase;
                v = phase;
                p[6] = full;
                p[5] = full - v;
                p[12] = phase;
                v = phase;
                p[14] = full;
                p[13] = v;
                p[20] = full - phase;
                v = phase;
                p[22] = full;
                p[21] = full - v;
                p[28] = phase;
                v = phase;
                p[30] = full;
                p[29] = v;
            }
        }
        break;
    case 1:
        {
            u8 *base;
            /* Bind only the measured 255 constant lifetime; no emitted asm. */
            register u32 full __asm__("$4");
            u32 v;
            i = 0;
            side *= 4;
            base = D_801D8078;
            full = 255;
            for (; i < 4; i++) {
                u32 index = side + i;
                u8 *p = (u8 *)(index * 36 + (u32)base);
                p[4] = full;
                p[5] = full - phase;
                v = phase;
                p[12] = full;
                p[6] = full - v;
                p[13] = phase;
                v = phase;
                p[20] = full;
                p[14] = v;
                p[21] = full - phase;
                v = phase;
                p[28] = full;
                p[22] = full - v;
                p[29] = phase;
                p[30] = phase;
            }
        }
        break;
    case 2:
        {
            u8 *base;
            /* Bind only the measured 255 constant lifetime; no emitted asm. */
            register u32 full __asm__("$4");
            u32 v;
            i = 0;
            side *= 4;
            base = D_801D8078;
            full = 255;
            for (; i < 4; i++) {
                u32 index = side + i;
                u8 *p = (u8 *)(index * 36 + (u32)base);
                p[4] = full;
                p[5] = full;
                v = phase;
                p[12] = full;
                p[13] = full;
                p[6] = full - v;
                v = phase;
                p[20] = full;
                p[21] = full;
                p[14] = v;
                v = phase;
                p[28] = full;
                p[29] = full;
                p[22] = full - v;
                p[30] = phase;
            }
        }
        break;
    }
}
