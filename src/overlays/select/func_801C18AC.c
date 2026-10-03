#include "common.h"

extern u8 D_8010866B, D_801D4292[];
/* Word ABI views preserve the supplied negative coordinate bits; these
 * views do not establish the original descriptor declarations. */
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32);
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801C18AC(void) {
    u32 value = D_8010866B >> 4;
    u32 quotient = value / 10;
    u8 *text = D_801D4292;
    /* Keep only the second calculation in the measured argument register,
     * leaving the entry byte load unconstrained. */
    register u32 remainder asm("$4");
    u32 show;

    if ((u8)quotient) {
        *text = quotient + 48;
    } else {
        *text = 32;
    }
    remainder = value;
    /* This empty tie retains the measured byte narrowing before the second
     * division; it emits no instructions and does not change the value. */
    __asm__("" : "=r"(remainder) : "0"(remainder));
    remainder = (u8)remainder;
    text = D_801D4292 + 1;
    remainder %= 10;
    show = *(u8 *)0x1F80029B;
    remainder += 48;
    *text = remainder;
    if (show) {
        func_801942E0(3, text - 7, -142, -47, 104, 3, 1, 0, 0, 2, 1, 1);
    }
    func_80193FB4(3, 0x3125, 0, 0, 0, 12, 0, 0x1000, 0x1000,
                 0, 0, 128, 128, 128, 0, 2, 1);
}
