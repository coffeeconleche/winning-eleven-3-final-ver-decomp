#include "common.h"

extern u8 D_801D7DA0[];
/* Preserve word argument values before the callee's halfword stores narrow them. */
extern void func_80196800(s32, s32, s32, s32, u16, u8, u8, u8, u8);

void func_80193F18(void) {
    u8 i;

    for (i = 0; i < 5; i++) {
        if (D_801D7DA0[i] == 0xFF) {
            func_80196800(0x40000000, 0xFF7E, i * 20 + 0xFFBC,
                         16, 11, 0, 0, 0, 2);
        }
    }
}
