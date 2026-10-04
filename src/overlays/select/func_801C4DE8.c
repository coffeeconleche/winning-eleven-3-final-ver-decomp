#include "common.h"

extern u8 D_8010A5B1;
extern void func_8018E538(u32);
extern s32 func_8018E720(u32, u32);
/* Word ABI views retain the arguments supplied by this caller. The callee
 * independently narrows its slot, resource and descriptor fields. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
    s32, s32, s32, s32, s32, s32, s32, s32);

void func_801C4DE8(void) {
    s32 selected;

    func_8018E538(0);
    func_80193FB4(1, 0x3004, 0, 0, 0, 24, 0, 0x1000, 0,
        0, -88, 128, 128, 128, 0, 1, 1);
    func_80193FB4(2, 0x300C, 0, 0, 0, 24, 0, 0x1000, 0,
        0, -88, 128, 128, 128, 0, 1, 1);
    func_8018E720(0, 0);
    /* Capture once; all three subsequent calls use the same transformed byte. */
    selected = (D_8010A5B1 >> 2) | 0xFC;
    func_80193FB4(55, 0x3000, 0x1000000, 0, 0, 13, selected, 0x1000,
        0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
    func_80193FB4(56, 0x3001, 0x1000000, 0, 0, 14, selected, 0x1000,
        0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
    func_80193FB4(57, 0x3002, 0x1000000, 0, 0, 15, selected, 0x1000,
        0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
    *(u16 *)0x1F800294 = 0;
}
