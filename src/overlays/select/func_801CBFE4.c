#include "common.h"

extern s8 D_801D59A4;
/* Word ABI views preserve the supplied coordinate bits. The callees consume
 * low bytes for their four trailing arguments; original types are unknown. */
extern void func_801964F8(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_8019659C(s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801CBFE4(void) {
    if (D_801D59A4 >= 20) {
        D_801D59A4 = 18;
    }
    if (D_801D59A4 < 0) {
        D_801D59A4 = 0;
    }
    if (D_801D59A4) {
        func_801964F8(0, -170, 0, 340, 0, 255, 255, 255, 3);
        func_801964F8(0, 0, -96, 0, 192, 255, 255, 255, 3);
        func_8019659C(0, -170, -96, 340, 192, 255, 255, 255, 3);
        func_8019659C(0, -171, -97, 342, 194, 0, 0, 0, 4);
        func_8019659C(0, -169, -95, 338, 190, 0, 0, 0, 4);
    }
}
