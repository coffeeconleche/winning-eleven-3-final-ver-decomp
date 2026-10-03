#include "common.h"

extern u8 D_801D8B17, D_80108667, D_801D8A70;
extern u16 D_801D8A86, D_801D8A88;

void func_801A4C6C(void) {
    s32 y;
    u32 mode;
    s32 x;
    x = 0;
    mode = D_801D8B17;
    y = 0;
    switch (mode) {
    case 0:
        if (!(D_80108667 & 15)) {
            u32 packed = D_801D8A70;
            u32 column = packed & 15;
            /* Retain the separate scaled term in the original a0 register. */
            register u32 scaled __asm__("$4") = column * 21;
            column >>= 2;
            column = column * 2 - 166;
            x = scaled + column;
            /* Prevent either live term from coalescing with the result. */
            __asm__("" : : "r"(scaled), "r"(column));
            y = (packed >> 4) * 32 - 53;
        } else {
            u32 packed = D_801D8A70;
            x = (packed & 7) * 21 + 7;
            y = (packed >> 3) * 26 - 48;
        }
        break;
    case 1: {
        /* Unsigned word division, with each result narrowed before scaling. */
        u32 value = *(u8 *)0x1F8002DD;
        u8 column = value % 11;
        u8 row = value / 11;
        x = column * 31 - 167;
        y = row * 22 + 14;
        break;
    }
    }
    D_801D8A86 = x;
    D_801D8A88 = y;
}
