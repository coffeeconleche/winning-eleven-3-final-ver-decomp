#include "common.h"

/* Word access view; the original tag ownership and full API are unknown. */
s32 func_800ADBE8(u32 *tag)
{
    return (*tag & 0x00FFFFFFu) == 0x00FFFFFFu;
}
