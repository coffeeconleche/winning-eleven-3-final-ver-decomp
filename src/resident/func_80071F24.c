#include "common.h"

/* Private PS1 call-site views, not complete native APIs or packet layouts.
 * Only low bytes of the two inputs are used; divisor low byte must be nonzero.
 * The original compiler emits its division traps for invalid input. Native C
 * must preserve that precondition or provide an explicit trap adapter.
 * 1D004 consumes one selector; its residual a1 is not a second argument.
 * Existing callers use both pointer and u32 views of its 32-bit result; a
 * native port must reconcile these declarations with a mapped packet API.
 * Halfword views require the original packet alignment and writable extent. */

extern s32 func_8006F934(u32, s32, s32, s32);
extern u8 *func_8001D004(u32);
extern u8 D_800E6D52;

u8 func_80071F24(s32 arg0, s32 arg1)
{
    s32 step;
    s32 scale;
    s32 previous;
    u8 *packet;

    step = 0x1000 / (s32)(arg1 & 0xFF);
    func_8006F934(1, 0x1000, 0, step);
    func_8006F934(2, 0x1000, 0, step);
    scale = (arg0 & 0xFF) << 12;
    func_8006F934(3, scale, 0, 0x1000);
    func_8006F934(5, 0x1000, 0, 0x1000);
    previous = D_800E6D52 & 0xFF;
    D_800E6D52 += 0xFF;
    if (previous == 1) {
        func_8006F934(4, scale, 0, 0x1000);
        func_8006F934(6, 0x1000, 0, 0x1000);
    } else {
        packet = func_8001D004(0x66);
        *(u16 *)(packet + 0x8) += 8;
        *(u16 *)(packet + 0x14) -= 8;
        packet = func_8001D004(0x68);
        *(u16 *)(packet + 0x8) += 8;
        *(u16 *)(packet + 0x14) += 8;
        *(u16 *)(packet + 0x20) -= 8;
        *(u16 *)(packet + 0x2C) -= 8;
    }
    return D_800E6D52;
}
