#include "common.h"

void func_800AF31C(void *packet, u32 enabled)
{
    ((u8 *)packet)[3] = 2;
    ((u32 *)packet)[1] = enabled ? 0xE6000001u : 0xE6000000u;
    ((u32 *)packet)[2] = 0;
}
