#include "types.h"

extern s32 (*D_800CEAC0)(const char *, ...);
extern u8 D_800CEAC6;
extern char D_80014F78[];
extern u8 D_800CEB70[];
extern u32 D_800CEB84;

/* Native packet words: a positive count and that many live aligned words.
 * No direct resident caller was found; the historical SDK return type is
 * unknown, but the full exit sequence leaves the final tag pointer in v0. */
u32 *func_800AE958(u32 *tags, u32 count)
{
    u32 *next;
    u32 *terminator;
    if (D_800CEAC6 >= 2) {
        D_800CEAC0(D_80014F78, (u32)tags, (s32)count);
    }
    count--;
    if (count != 0) {
        u32 low_mask = 0xFFFFFFU;
        do {
            count--;
            next = tags + 1;
            /* Byte alias followed by the original word reread, not MMIO. */
            ((u8 *)tags)[3] = 0;
            *tags = (*tags & 0xFF000000U) | ((u32)next & low_mask);
            tags = next;
        } while (count != 0);
    }
    terminator = &D_800CEB84;
    *terminator = ((u32)D_800CEB70 & 0xFFFFFFU) | 0x4000000U;
    *tags = (u32)terminator & 0xFFFFFFU;
    return tags;
}
