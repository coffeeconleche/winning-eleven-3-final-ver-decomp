#include "common.h"

/* Scalar views of the measured scratch bytes; these allocate no storage. */
extern u8 D_1F80029A __asm__("0x1F80029A");
extern u8 D_1F80029B __asm__("0x1F80029B");

void func_800171C4(u32 value)
{
    D_1F80029A = value;
    D_1F80029B = 0;
}
