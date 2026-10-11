#include "common.h"

/* Address/access views only; the full record and table layouts are unknown. */
extern u8 D_8010C32C[];
extern s32 func_8001E6B8(s32);

s32 func_80083E88(u8 *record)
{
    u32 inner = record[0x392];
    u32 outer = record[0x398];
    /* Both strides and the established base are word-aligned. This does
     * not assert ownership or bounds for the complete underlying table. */
    u32 offset = inner * 12 + outer * 264;
    u32 packed = *(u32 *)((u32)D_8010C32C + offset);

    return func_8001E6B8(((packed >> 4) & 15) + 2) == 2;
}
