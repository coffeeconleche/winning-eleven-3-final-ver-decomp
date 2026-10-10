#include "common.h"

/* Scalar view of the measured scratch byte; this allocates no storage. */
extern u8 D_1F80029C __asm__("0x1F80029C");

void func_8001722C(u32 value)
{
    D_1F80029C = value;
}
