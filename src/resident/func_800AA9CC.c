#include "common.h"

extern u32 D_800E6BC8, D_800E6B38;
extern s16 D_800E6B58;

void func_800AA9CC(u32 value)
{
    D_800E6BC8 = (u16)value;
    D_800E6B58 = 0x90;
    D_800E6B38 = 0;
}
