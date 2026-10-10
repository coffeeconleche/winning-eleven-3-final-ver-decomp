#include "common.h"

s32 func_800174E0(u32 slot, s32 selector, s32 mask)
{
    s32 value;

    if (selector == 1) {
        value = *(u16 *)(0x1F800230U + (slot << 3)) & mask;
    } else {
        value = *(u16 *)(0x1F800234U + (slot << 3)) & mask;
    }
    /* Keep the full signed-word comparison; it is not equality for every mask. */
    return value >= mask;
}
