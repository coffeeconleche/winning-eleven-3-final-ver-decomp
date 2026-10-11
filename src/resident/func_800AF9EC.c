#include "common.h"

/* The retail pointer contains 0x1F801814; preserve the actual word read. */
extern u32 *D_800CEB9C;

u32 func_800AF9EC(void)
{
    return *D_800CEB9C;
}
