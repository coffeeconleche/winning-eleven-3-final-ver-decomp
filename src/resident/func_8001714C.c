#include "common.h"

/* Scalar views of existing scratch bytes; these allocate no storage. */
extern u8 D_1F800298 __asm__("0x1F800298");
extern u8 D_1F80029A __asm__("0x1F80029A");
extern u8 D_1F800299 __asm__("0x1F800299");

/* This void view does not establish the original return contract. The exact
 * instructions retain the captured byte plus one in $v0, including 256. */
void func_8001714C(void)
{
    s32 state = D_1F800298;

    D_1F80029A = 0;
    D_1F800299 = 0;
    D_1F800298 = state + 1;
}
