#include "common.h"

u32 func_800ADBCC(const u32 *word)
{
    return (*word & 0x00FFFFFFu) | 0x80000000u;
}
