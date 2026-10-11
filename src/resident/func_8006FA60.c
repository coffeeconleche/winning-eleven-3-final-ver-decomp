#include "common.h"

/* Byte access view at an existing symbol, not a recovered array extent or
 * complete 40-byte record layout. Both input word types are provisional ABI
 * views; the selector and stored value use only their low bytes. */
extern u8 D_8010551D[];

s32 func_8006FA60(u32 selector, u32 value)
{
    D_8010551D[40 * (u8)selector] = (u8)value;
    return 1;
}
