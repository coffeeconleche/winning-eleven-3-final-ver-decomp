#include "types.h"

extern u8 D_8010C330[];
extern u32 func_8005B7CC(u32, u32, u32);
extern s32 abs(s32);

/* Existing scratch-memory access view; no storage or hardware API is defined. */
#define scratch_pointer (*(u8 **)(scratch + 0x2F4 / 2))

/* The observed caller supplies byte directions and a squared coordinate
 * distance. Record meanings, complete extents and table-index bounds remain
 * unknown. The table uses observed 12-byte and 264-byte strides. */
s32 func_80091518(u8 *record, u32 distance, s32 direction, s32 target)
{
    s32 coordinate;
    s32 coordinate2;
    s32 near_direction;
    s32 scale;
    s32 threshold;
    /* Keep these actual values in the original incoming/saved register views.
     * Both bindings have independent removal controls in the matching proof. */
    register s32 opposite __asm__("$5");
    s32 scaled;
    u32 delta;
    u8 current_direction;
    register s32 saved_direction __asm__("$18") = direction;
    u16 *scratch = (u16 *)0x1F800000;
    u32 latest_direction;

    /* Widen before taking the magnitude, including the -32768 input. */
    coordinate = abs(*(s16 *)0x1F800048);
    if (coordinate < 0x32F8) {
        if (*(s16 *)(record + 0x3BC) == 0) {
            return 0;
        }
        if (*(s16 *)0x1F80031C < 15 - ((record[0x3B9] / 10) & 0xFF)) {
            return 0;
        }
        current_direction = (*(u8 **)0x1F8002F4)[0x3A4];
        delta = (direction - current_direction) & 0xFF;
        if (delta >= 0x81U) {
            near_direction = ((current_direction - direction) & 0xFF) < 0x21;
        } else {
            near_direction = (s32)delta < 0x21;
        }
        if (near_direction != 0) {
            scale = ((*(u32 *)(D_8010C330 + record[0x392] * 12 +
                               record[0x398] * 264) >> 11) & 0x7F) + 100;
            if (distance < (u32)((((scale << 8) / 180) * (scale << 8)) / 180)) {
                return 0;
            }
            scaled = scale * 0x500;
            if ((u32)(((scaled / 180) * scaled) / 180) < distance) {
                return 0;
            }
            threshold = -(scale * 0x224) / 180;
            if (threshold < (s16)scratch[0x60 / 2]) {
                return 0;
            }
            coordinate2 = (s16)scratch[0x4A / 2];
            if (coordinate2 < 0) {
                coordinate2 = -coordinate2;
            }
            if ((coordinate2 < 0x32F8) &&
                (threshold >= (s16)scratch[0x62 / 2]) &&
                ((*(u32 *)(scratch_pointer + 0x3A0) >> 8) <
                 (u32)(record[0x3B4] + 16))) {
                goto failure;
            }
            goto success;
        }
    }
failure:
    return 0;
success:
    /* Preserve the separate reads and their ordering across possible aliases. */
    *(u16 *)(record + 0x3C2) = scratch[0x48 / 2];
    *(u16 *)(record + 0x3C4) = scratch[0x60 / 2];
    *(u16 *)(record + 0x3C6) = scratch[0x78 / 2];
    record[0x3AA] = func_8005B7CC(target & 0xFF, record[0x3AA], 12);
    opposite = saved_direction + 0x80;
    record[0x3AB] = opposite;
    latest_direction = scratch_pointer[0x3A4];
    record[0x396] = 0xA0;
    record[0x397] = 0;
    record[0x3D1] = 0;
    record[0x3AC] = ((latest_direction - opposite) & 0xFF) >= 0x81U;
    return 1;
}
