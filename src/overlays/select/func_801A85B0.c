#include "common.h"

/* Word-sized byte-field arguments preserve the original caller stores;
 * func_80196378 performs the measured byte/halfword narrowing itself. */
extern void func_80196378(s32, s16, s16, s16, u16, u32, u32, u32, u32, u16);

/* The switch constants are observed descriptor fields, not inferred names. */
void func_801A85B0(s16 x, s16 y, u8 digit, u8 style, u8 selector) {
    switch (style) {
    case 6:
        func_80196378(0, x, y, 8, 16, digit * 8, 0x70, 10, 0x5A, selector);
        break;
    default:
        func_80196378(0, x, y, 8, 16, digit * 8 + 0xB0, 0x70, 12, 0x68, selector);
        break;
    case 4:
        func_80196378(0, x, y, 8, 8, digit * 8 + 0x80, 0xF8, 26, 0x57, selector);
        break;
    case 1:
        func_80196378(0, x, y, 8, 16, digit * 8 + 0xB0, 0x60, 26, 0x91, selector);
        break;
    case 7:
        func_80196378(0, x, y, 8, 16, 0xF8, digit * 16 + 0x60, 29, 0x73, selector);
        break;
    case 8:
        func_80196378(0, x, y, 8, 16, 0xF8, digit * 16 + 0x60, 29, 0x94, selector);
        break;
    case 9:
        func_80196378(0, x, y, 8, 16, digit * 8 + 0x80, 0x90, 29, 0xBC, selector);
        break;
    case 10:
        func_80196378(0, x, y, 8, 16, digit * 8 + 0x80, 0x90, 29, 0xB3, selector);
        break;
    }
}
