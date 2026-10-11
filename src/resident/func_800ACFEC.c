#include "common.h"

/* Existing interrupt-register pointer and mask table. Selector domain and
 * complete historical API remain provisional; indexing is not clamped. */
extern u32 *D_800CEA44;
extern u32 D_800CEA4C[];

s32 func_800ACFEC(u32 selector)
{
    s32 index = (u16)selector;
    register u32 offset __asm__("$4") = index * 4;
    u32 *registers = D_800CEA44;
    u32 mask = *(u32 *)((u8 *)D_800CEA4C + offset);

    registers[1] |= mask;
    return index < 3;
}
