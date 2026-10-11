#include "common.h"

/* Existing packet/tag words. Full object layout and historical API unknown. */
void func_800ADC04(u32 *first, u32 *second)
{
    register u32 addressMask __asm__("$6") = 0x00FFFFFF;

    *second = (*second & ~addressMask) | (*first & addressMask);
    *first = (*first & ~addressMask) | ((u32)second & addressMask);
}
