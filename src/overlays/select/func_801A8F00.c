#include "common.h"

extern u8 D_80108667;
/* Word-sized arguments preserve the call-boundary bits; the callee narrows fields.
 * Its original prototype and complete descriptor meanings remain unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32, s32);

void func_801A8F00(void) {
    if ((D_80108667 & 15) == 0) {
        func_80193FB4(4, 0x30E8, 0x01000000, 1, -7, 30, 250,
                     0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(6, 0x30E8, 0x41000000, 4, -4, 30, 251,
                     0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
    } else {
        func_80193FB4(4, 0x30E6, 0x01000000, 0, -12, 31, 250,
                     0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(5, 0x30E7, 0x01000000, 0, -12, 30, 250,
                     0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(6, 0x30E6, 0x41000000, 3, -9, 31, 251,
                     0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
        func_80193FB4(7, 0x30E7, 0x41000000, 3, -9, 30, 251,
                     0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
    }
}
