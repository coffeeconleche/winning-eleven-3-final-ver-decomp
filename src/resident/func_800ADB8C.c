#include "common.h"

extern s32 (*D_800CEAC0)(const char *, ...);
extern const char D_80014D74[];

s32 func_800ADB8C(u32 packed)
{
    return D_800CEAC0(D_80014D74, (packed & 0x3FU) << 4, (u16)packed >> 6);
}
