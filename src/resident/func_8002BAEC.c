#include "common.h"

/* Existing linker symbol; the word table extent is unknown. Helper
 * declarations follow the established call-site views. */
extern u32 D_8010C32C[];
extern s32 func_8001E6B8(s32);
extern u32 func_8005B36C(s32, s32, s32, s32);

/* Proximity classifier. All differences wrap as unsigned 32-bit words
 * before the measured low-byte masks; the 0x81 comparison is unsigned
 * and both 0x21 comparisons and the final 0x18FFFF comparison are
 * signed, as measured. The squared-coordinate sum wraps as a word; the
 * products use the signed mult/mflo low words. The mask and threshold
 * test live inside each delta branch as measured. */
s32 func_8002BAEC(u8 *first, u8 *second, u32 reference)
{
    u32 offset = 12 * first[0x392] + 264 * first[0x398];
    u32 entry = *(u32 *)((u8 *)D_8010C32C + offset);
    u32 kind;
    u32 delta;
    s32 dx;
    s32 dy;
    u32 squared;

    if ((s32)(9 - ((entry >> 12) & 0xF)) >= 2) {
        return 0;
    }
    if (func_8001E6B8(2) == 0) {
        return 0;
    }
    kind = second[0x396];
    if (kind != 0x91 && kind != 0x9D) {
        return 0;
    }
    delta = (func_8005B36C(*(s16 *)(first + 2), *(s16 *)(first + 6),
                           *(s16 *)(second + 2), *(s16 *)(second + 6)) -
             reference) & 0xFF;
    if (delta < 0x81) {
        goto near;
    }
    delta = (reference - func_8005B36C(*(s16 *)(first + 2),
                                       *(s16 *)(first + 6),
                                       *(s16 *)(second + 2),
                                       *(s16 *)(second + 6))) & 0xFF;
    if ((s32)delta < 0x21) {
        goto squared;
    }
    goto zero;
near:
    delta = (func_8005B36C(*(s16 *)(first + 2), *(s16 *)(first + 6),
                           *(s16 *)(second + 2), *(s16 *)(second + 6)) -
             reference) & 0xFF;
    if ((s32)delta >= 0x21) {
        goto zero;
    }
squared:
    dx = *(s16 *)(first + 2) - *(s16 *)(second + 2);
    dy = *(s16 *)(first + 6) - *(s16 *)(second + 6);
    squared = (u32)(dx * dx) + (u32)(dy * dy);
    if ((s32)squared > 0x18FFFF) {
        goto zero;
    }
    return 1;
zero:
    return 0;
}
