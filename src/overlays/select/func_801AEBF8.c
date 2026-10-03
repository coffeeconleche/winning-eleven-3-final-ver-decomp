#include "common.h"

extern u8 D_801DAD84, D_801D8A51;
extern u16 D_801D86F0;
extern s16 D_801D8A86, D_801D8A88;

void func_801AEBF8(void) {
    s32 x = 0;
    u32 mode = D_801DAD84;
    s32 y = 0;

    /* Modes outside the six-entry table leave both coordinates zero. */
    switch (mode) {
    case 0:
        x = -64;
        y = D_801D86F0 * 17 - 54;
        break;
    case 1:
        x = -20;
        y = D_801D86F0 * 17 - 54;
        break;
    case 2:
        x = 166;
        y = -48;
        break;
    case 3:
        x = 166;
        y = 88;
        break;
    case 4:
        x = 148;
        y = -86;
        break;
    case 5:
        if (D_801D8A51 == 0) {
            x = 0;
            y = 46;
        } else {
            x = 0;
            y = 88;
        }
        break;
    }
    D_801D8A86 = x;
    D_801D8A88 = y;
}
