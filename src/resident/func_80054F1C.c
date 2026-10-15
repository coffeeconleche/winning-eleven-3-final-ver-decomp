#include "common.h"

extern u8 D_8010C1D8[];
extern u8 D_8010C328[];
extern s32 func_8001E6B8(s32);

/* Partial access views of existing records, state and table storage. Complete
 * extents, selector domains and original helper APIs remain provisional. */
s32 func_80054F1C(u8 *record)
{
    u8 *state = D_8010C1D8;
    u8 *scratch = (u8 *)0x1F800000;
    s32 coordinate;
    s32 index;
    s32 level;
    s32 vertical;
    s32 gate;

    /* Signed halfwords widen to s32 before negation: magnitude <= 32768. */
    coordinate = *(s16 *)(record + 2);
    if (record[0x399] != 0) {
        gate = -coordinate < -0x1990;
    } else {
        gate = coordinate < -0x1990;
    }
    if (gate) {
        return 1;
    }
    if ((u32)state[3] >= 6U) {
        return 0;
    }
    if (scratch[0x2DF] != 0) {
        index = record[0x398];
        /* Original OR forms the first base/index address; the displacement
         * is added afterward. No complete scratch table extent is claimed. */
        if ((u32)((u8 *)((u32)index | (u32)scratch))[0x2D1] <=
            (u32)(scratch + (index ^ 1))[0x2D1]) {
            return 0;
        }
    }
    coordinate = *(s16 *)(record + 2);
    if (record[0x399] != 0) {
        if (-coordinate < 0xCC8) {
            goto near;
        }
        goto far;
    } else if (coordinate >= 0xCC8) {
        goto far;
    }
near:
    vertical = *(s16 *)(record + 6);
    if (vertical < 0) {
        vertical = -vertical;
    }
    if (vertical >= 0x1D00) {
        return 0;
    }
    level = *(u32 *)(D_8010C328 + record[0x392] * 12 + record[0x398] * 264) & 15;
    if (level < 8) {
        return 0;
    }
    /* level is 0..15: the signed numerator is -6..9, including negatives. */
    if (func_8001E6B8((9 - level) >> 1) != 0) {
        return 1;
    }
    gate = 0;
    goto zero_result;
far:
    level = *(u32 *)(D_8010C328 + record[0x392] * 12 + record[0x398] * 264) & 15;
    if (level < 5) {
        return 0;
    }
    if (func_8001E6B8((9 - level) >> 1) != 0) {
        return 1;
    }
    gate = 0;
zero_result:
    /* Both helper paths share this explicit zero-result join. */
    return gate;
}
