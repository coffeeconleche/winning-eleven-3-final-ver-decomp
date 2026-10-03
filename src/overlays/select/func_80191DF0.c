#include "common.h"

extern u8 D_801D1B19;
extern void func_80196800(s32, s16, s16, s16, u16, u8, u8, u8, u8);

/* Submit the fixed descriptor only when the byte flag is set. */
void func_80191DF0(void) {
    if (D_801D1B19 != 0) {
        func_80196800(0, -200, -126, 400, 253, 0, 0, 0, 2);
    }
}
