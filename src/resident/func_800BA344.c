#include "common.h"

/* Ordered forward word copy: no disjoint-buffer assumption is imposed. */
void func_800BA344(u32 *destination, const u32 *source, u32 count)
{
    u32 index;
    for (index = 0; index < count; index++) {
        *destination++ = *source++;
    }
}
