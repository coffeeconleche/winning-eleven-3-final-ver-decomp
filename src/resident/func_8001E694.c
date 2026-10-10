#include "common.h"

extern s32 func_8001E5A4(u32, s32);

/* Shift the incoming low-byte phase by 64 and always forward the second word.
 * Original formal types and gameplay meaning remain provisional. */
s32 func_8001E694(u32 phase, s32 scale)
{
    return func_8001E5A4((u8)(phase + 64U), scale);
}
