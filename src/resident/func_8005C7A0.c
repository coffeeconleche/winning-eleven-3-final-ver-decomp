#include "common.h"

extern s32 func_8001E6B8(s32 divisor);

/* The incoming signed low halfword supplies a word-sized bound. The helper
 * is called twice even for zero; the historical API remains provisional. */
s32 func_8005C7A0(u32 limit)
{
    s32 bound = (s16)limit + 1;
    /* This target compiler evaluates the left call first, as measured in the
     * original. A native adaptation must sequence the two calls explicitly. */
    u32 result = (u32)func_8001E6B8(bound) -
                 (u32)func_8001E6B8(bound);

    return (s16)result;
}
