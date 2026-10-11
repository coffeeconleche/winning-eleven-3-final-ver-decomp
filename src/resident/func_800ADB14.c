#include "common.h"

u32 func_800ADB14(s32 first, u32 second)
{
    return (u16)((second << 6) | ((first >> 4) & 0x3F));
}
