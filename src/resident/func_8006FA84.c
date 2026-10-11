#include "common.h"

/* Byte access view of existing storage; its extent and record layout are
 * unknown. The 40-byte stride is observed, not a complete object type. */
extern u8 D_8010550C[];

s32 func_8006FA84(u32 selector, u32 value)
{
    D_8010550C[(u8)selector * 40] = value;
    return 1;
}
