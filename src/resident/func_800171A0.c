#include "common.h"

/* Numeric scalar names view the existing scratch bytes without allocating data.
 * State meanings and the original API remain provisional. */
extern u8 scratchMode __asm__("0x1F80029A");
extern u8 scratchState __asm__("0x1F80029B");

void func_800171A0(void)
{
    s32 mode = scratchMode;

    scratchState = 0;
    scratchMode = mode + 1;
}
