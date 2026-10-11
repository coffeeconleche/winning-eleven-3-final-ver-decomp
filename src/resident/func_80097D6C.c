#include "common.h"

/* No-storage views preserve the measured scratch-word store order. Complete
 * ownership/layout and the original return declaration remain unknown.
 * Known callers ignore the measured $v0 residue of -0x4000. */
extern s32 D_1F800200 __asm__("0x1F800200");
extern s32 D_1F8001F4 __asm__("0x1F8001F4");
extern s32 D_1F8001FC __asm__("0x1F8001FC");
extern s32 D_1F800204 __asm__("0x1F800204");
extern s32 D_1F8001F0 __asm__("0x1F8001F0");
extern s32 D_1F8001F8 __asm__("0x1F8001F8");

void func_80097D6C(void)
{
    D_1F800200 = -0x380;
    D_1F8001F4 = -0xC00;
    D_1F8001FC = 0;
    D_1F800204 = 0;
    D_1F8001F0 = 0;
    D_1F8001F8 = -0x4000;
}
