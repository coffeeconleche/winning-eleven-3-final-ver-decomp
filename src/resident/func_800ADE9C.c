#include "common.h"

void func_800ADE9C(void *packet)
{
    ((u8 *)packet)[3] = 6;
    ((u8 *)packet)[7] = 0x4C;
    ((u32 *)packet)[6] = 0x55555555u;
}
