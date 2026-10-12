#include "common.h"

/* Packs four control/coordinate words into one small packet value. The four
 * word formals and the signed result are measured ABI views; callers narrow
 * the result to a halfword. Original masks use arithmetic shifts on values
 * that are never negative after masking. */
s32 func_800ADAD8(s32 a0, s32 a1, s32 a2, s32 a3)
{
    s32 value = (a0 & 3) << 7;
    value |= (a1 & 3) << 5;
    value |= (a3 & 0x100) >> 4;
    value |= (a2 & 0x3FF) >> 6;
    value |= (a3 & 0x200) << 2;
    return value;
}
