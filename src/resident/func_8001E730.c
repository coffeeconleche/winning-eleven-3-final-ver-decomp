#include "common.h"

extern s32 func_8001E6B8(s32);

/* Always consume the helper call, then compare its signed result against the
 * incoming low signed halfword. Original API and gameplay meaning are provisional. */
s32 func_8001E730(s16 threshold)
{
    return func_8001E6B8(100) < threshold;
}
