#include "common.h"

void func_800ADD6C(void *packet)
{
    ((u8 *)packet)[3] = 9;
    ((u8 *)packet)[7] = 0x2C;
}
