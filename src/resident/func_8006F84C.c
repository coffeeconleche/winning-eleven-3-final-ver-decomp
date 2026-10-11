#include "common.h"

extern u8 D_80105508[];

/* The 40-byte stride and offsets are access evidence, not a complete layout.
 * Selector domain, array extent, fields and historical API remain provisional.
 * Both incoming words are narrowed only where the original accesses require. */
s32 func_8006F84C(u32 selector, u32 value)
{
    u8 *entry = D_80105508 + (u8)selector * 40;

    entry[0x18] = value;
    entry[0x17] = value;
    entry[0x16] = value;
    return 1;
}
