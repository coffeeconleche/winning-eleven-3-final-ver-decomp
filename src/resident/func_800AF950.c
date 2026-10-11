#include "common.h"

u32 func_800AF950(u32 x, u32 y)
{
    y = (y & 0x7FF) << 11;
    x = (x & 0x7FF) | 0xE5000000;
    return y | x;
}
