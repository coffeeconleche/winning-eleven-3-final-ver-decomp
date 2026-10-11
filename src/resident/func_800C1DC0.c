#include "common.h"

extern u32 *D_800D55A0;

void func_800C1DC0(void)
{
    u32 *control = D_800D55A0;
    *control = (*control & 0xF0FFFFFF) | 0x20000000;
}
