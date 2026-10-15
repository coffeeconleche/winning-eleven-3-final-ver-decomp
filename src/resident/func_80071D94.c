#include "common.h"

/* Private PS1 call-site views, not complete native APIs or packet layouts.
 * Input low bytes are used; the divisor low byte must be nonzero. Original
 * GCC emits division traps; native C needs that precondition or trap adapter.
 * 1D004 consumes one selector; residual a1 is not a second argument. Existing
 * callers use pointer/u32 results and several selector types: reconcile these
 * private declarations with a mapped packet API before native compilation.
 * Halfword views assume original aligned writable storage and extent.
 * The final postincrement compares the reread old byte and wraps its store. */

extern s32 func_8006F87C(u32, s32, s32, s32);
extern u8 *func_8001D004(u32);
extern u8 D_800E6D52;

s32 func_80071D94(s32 arg0, s32 arg1)
{
    s32 count;
    s32 step;
    s32 scale0;
    s32 scale1;
    u8 *packet;

    count = arg1 & 0xFF;
    step = 0x1000 / count;
    func_8006F87C(1, 0x1000, 0x1000, step);
    func_8006F87C(2, 0x1000, 0x1000, step);
    scale0 = (arg0 & 0xFF) << 12;
    scale1 = count << 12;
    func_8006F87C(3, scale0, scale1, 0x1000);
    func_8006F87C(4, scale0, 0x1000, 0x1000);
    func_8006F87C(5, 0x1000, scale1, 0x1000);
    func_8006F87C(6, 0x1000, 0x1000, 0x1000);
    if (D_800E6D52 != 0 && D_800E6D52 < (u32)count) {
        packet = func_8001D004(0x66);
        *(u16 *)(packet + 0x8) -= 8;
        *(u16 *)(packet + 0x14) += 8;
        packet = func_8001D004(0x68);
        *(u16 *)(packet + 0x8) -= 8;
        *(u16 *)(packet + 0x14) -= 8;
        *(u16 *)(packet + 0x20) += 8;
        *(u16 *)(packet + 0x2C) += 8;
    }
    return D_800E6D52++ < (u32)(arg1 & 0xFF);
}
