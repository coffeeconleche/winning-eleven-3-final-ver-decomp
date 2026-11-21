#include "common.h"

extern s32 (*D_800CEAC0)(const char *, ...);
extern const char D_80014D5C[];

s32 func_800ADB2C(u32 packed)
{
    u32 value = (u16)packed;
    /* Place input bits 4 and 11 into the two combined flag positions. */
    u32 flags = ((value << 4) & 0x100U) | ((value >> 2) & 0x200U);
    return D_800CEAC0(D_80014D5C, (value >> 7) & 3U, (value >> 5) & 3U,
                     (value << 6) & 0x7C0U, flags);
}
