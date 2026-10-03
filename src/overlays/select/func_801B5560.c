#include "common.h"

extern u8 D_801DAD84;
extern u16 D_800AD638;
extern s16 D_801D8A86, D_801D8A88;

void func_801B5560(u8 selector) {
    s32 x = 0;
    u32 mode = D_801DAD84;
    s32 y = 0;

    /* The byte selector's meaning is unknown. Modes outside 0..5 retain
     * the initialized zero coordinates, as in the original dispatch. */
    switch (mode) {
    case 0:
        x = -132;
        y = D_800AD638 * 20 - 64;
        break;
    case 1:
        x = 52;
        y = D_800AD638 * 20 - 64;
        break;
    case 2:
        if (selector == 0) {
            x = 166;
            y = -48;
        } else {
            x = -144;
            y = -96;
        }
        break;
    case 3:
        if (selector == 0) {
            x = 166;
            y = 88;
        } else {
            x = -16;
            y = -96;
        }
        break;
    case 4:
        if (selector == 0) {
            x = 148;
            y = -88;
        } else {
            x = -80;
            y = -96;
        }
        break;
    case 5:
        x = 0;
        y = 88;
        break;
    }
    D_801D8A86 = x;
    D_801D8A88 = y;
}
