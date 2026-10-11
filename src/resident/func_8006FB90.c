#include "common.h"

/* Access view of the existing pointer field at a measured 40-byte stride.
 * Table extent, target ownership and complete record layouts are unknown. */
extern u8 D_80105514[];

s32 func_8006FB90(u32 first, u32 second, u32 value)
{
    u8 *items = *(u8 **)(D_80105514 + (u8)first * 40);

    items[(u8)second * 12 + 3] = value;
    return 1;
}
