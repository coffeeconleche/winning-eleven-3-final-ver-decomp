#include "common.h"

extern u8 D_80105514[];

/* The pointer field's 40-byte stride and destination's 12-byte stride are access
 * views. Their ownership, extents, valid selectors and original API are unknown.
 * Narrow selectors before indexing, and narrow the value only at its byte store. */
s32 func_8006FBCC(u32 first, u32 second, u32 value)
{
    u8 *entries = *(u8 **)(D_80105514 + (u8)first * 40);

    entries[(u8)second * 12 + 4] = value;
    return 1;
}
