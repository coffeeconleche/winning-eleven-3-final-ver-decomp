#include "common.h"

extern u8 D_801D42A0[], D_801D42A4[], D_801D89E0[];
extern u8 D_801D89E1, D_801D89E2, D_801D89E3, D_801D89E4, D_801D89E5;
extern void func_801C6250(u32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32);

void func_801C4BF4(void) {
    s32 i;
    u8 *colors;

    for (i = 0; (u8)i < 3;) {
        s32 index = (u8)i;
        /* The measured signed shift/add keeps its value in a0. */
        register s32 color __asm__("$4");
        s32 next;
        s32 sign;

        if ((D_801D42A0[index] += D_801D42A4[index]) == 0)
            D_801D42A4[index] = 1;
        if (D_801D42A0[index] == 64)
            D_801D42A4[index] = 255;

        next = index + 1;
        /* Keep the measured signed remainder path rather than range-folding
         * its sign correction. These empty ties leave the values unchanged. */
        __asm__("" : "=r"(next) : "0"(next));
        i++;
        color = D_801D42A0[index];
        /* Retain SRA despite the byte load's known range; the second tie
         * schedules the independent sign calculation in that load's delay. */
        __asm__("" : "=r"(color) : "0"(color));
        sign = next >> 31;
        __asm__("" : "=r"(color) : "0"(color), "r"(sign));
        color = (color >> 1) + 48;
        D_801D89E0[index] = color;
        ((u8 *)&D_801D89E3)[next % 3] = color;
    }
    {
        u32 word = 0x50000000;
        s32 left = -192;
        s32 top = -69;
        s32 right = -75;
        u8 *initial;

        /* Preserve register-argument setup and the separate stack -69;
         * otherwise GCC shares top with that outgoing stack argument. */
        __asm__ volatile("" : "=r"(word), "=r"(left), "=r"(top), "=r"(right)
                         : "0"(word), "1"(left), "2"(top), "3"(right));
        i = 0;
        initial = D_801D89E0;
        /* Two input-only uses retain the original temporary-to-saved-pointer
         * transfer without hiding the known address: an opaque pointer output
         * changes alias analysis and the later byte-load/store ordering. */
        __asm__("" : : "r"(initial));
        colors = initial;
        __asm__ volatile("" : : "r"(colors));
        func_801C6250(word, left, top, right, -69, colors[0],
                     D_801D89E1, D_801D89E2, D_801D89E3,
                     D_801D89E4, D_801D89E5, 3);
    }
    for (; (u8)i < 8; i++) {
        s32 y = (u8)i * 14 - 50;
        func_801C6250(0x50000000, -192, y, 192, y,
                     colors[0], colors[1], colors[2],
                     colors[3], colors[4], colors[5], 3);
    }
}
