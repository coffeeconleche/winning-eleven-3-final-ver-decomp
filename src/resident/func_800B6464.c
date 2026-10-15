#include "types.h"

s32 func_800B6464(s32 *values)
{
    register s32 raw __asm__("v0") = values[0];
    s32 next = values[1];
    s32 maximum = raw;

    if (raw < 0) maximum = (s32)(0U - (u32)maximum);
    if (next < 0) next = (s32)(0U - (u32)next);
    __asm__("" : "=r" (next) : "0" (next));
    if (maximum < next) maximum = next;
    raw = values[2];
    next = raw;
    if (raw < 0) next = (s32)(0U - (u32)next);
    if (maximum < next) maximum = next;
    raw = values[3];
    next = raw;
    if (raw < 0) next = (s32)(0U - (u32)next);
    if (maximum < next) maximum = next;
    raw = values[4];
    next = raw;
    if (raw < 0) next = (s32)(0U - (u32)next);
    if (maximum < next) maximum = next;
    raw = values[5];
    next = raw;
    if (raw < 0) next = (s32)(0U - (u32)next);
    if (maximum < next) maximum = next;
    return maximum;
}
