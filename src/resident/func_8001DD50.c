#include "common.h"

/* Address and word views; complete buffer ownership and layouts are unknown. */
extern u8 D_800F3568[];
extern u32 D_800F1018;
extern u8 *D_800F101C;
extern u32 D_800F102C;
extern u8 *D_800F1030;

/* Preserve the observed unchanged incoming argument registers at the callback.
 * This is an ABI view, not a recovered complete helper prototype. */
extern void func_8001F7C4(u32, u32, u32, u32);

void func_8001DD50(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    s32 state = *(u8 *)0x1F800298;

    D_800F101C = D_800F3568;
    D_800F1030 = D_800F3568 + 0x4000;
    *(u32 *)0x1F800000 = arg0;
    D_800F1018 = arg0;
    D_800F102C = arg0;
    switch (state) {
    case 3:
    case 5:
    case 6:
        func_8001F7C4(arg0, arg1, arg2, arg3);
        break;
    }
}
