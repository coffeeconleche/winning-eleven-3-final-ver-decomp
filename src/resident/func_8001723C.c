#include "common.h"

/* Numeric scalar names describe existing scratch bytes without allocating data. */
extern u8 scratchDF __asm__("0x1F8002DF");
extern u8 scratchE0 __asm__("0x1F8002E0");

/* Store the low byte before its low bit. Original API and field meanings are
 * provisional; callers also pass word values before the byte narrowing. */
void func_8001723C(u32 value)
{
    scratchDF = value;
    scratchE0 = value & 1;
}
