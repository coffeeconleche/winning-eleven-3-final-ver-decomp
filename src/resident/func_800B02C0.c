#include "common.h"

/* Word arguments/result are an observed ABI view; callback APIs are provisional. */
extern s32 func_800B02E4(u32, u32, u32, u32);

s32 func_800B02C0(u32 first, u32 second, u32 third)
{
    return func_800B02E4(first, second, 0, third);
}
