#include "common.h"

/* Numeric assembly name denotes the existing scratch byte; no storage is added. */
extern u8 D_1F80029C __asm__("0x1F80029C");

void func_8001720C(void)
{
    D_1F80029C++;
}
