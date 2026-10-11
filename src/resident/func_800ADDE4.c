#include "common.h"

void func_800ADDE4(void *packet)
{
    ((u8 *)packet)[3] = 2;
    ((u8 *)packet)[7] = 0x68;
}
