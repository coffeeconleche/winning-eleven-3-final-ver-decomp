#include "common.h"

/* Existing record storage, with a measured 1,000-byte stride. Full layouts,
 * extents, alias relationships and gameplay meaning remain unknown. */
extern u8 D_800FF748[];
extern u32 func_8005CE30(u8);
extern u32 func_8005CE14(u8);
extern u32 func_8004968C(u8 *, s32, s32);

/* Low-byte selector and unsigned word thresholds are measured ABI views.
 * Halfword differences fit s32, but their squares need unsigned operands;
 * products, their sum and threshold + 0x4000 wrap as 32-bit words. The six
 * real-value register bindings and two empty constraints below retain the
 * measured allocation and control/load chronology under GCC 2.7.2; they
 * are matching aids, not recovered historical source or new storage. */
u8 func_80052A68(u8 *record, u8 index, u32 threshold)
{
    u8 *reference = *(u8 **)0x1F8002F4;
    s32 referenceX = *(s16 *)(reference + 2);
    u8 *bank = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    register u32 selected __asm__("$2");
    register u8 *other __asm__("$4");
    s16 x;
    register u32 firstSquared __asm__("$6");
    register u32 squared __asm__("$2");
    s32 y;

    if (record[0x399] != 0) {
        if (referenceX < 0) {
            goto second;
        }
        goto first;
    } else if (referenceX <= 0) {
        goto first;
    }
second:
    selected = (u8)func_8005CE30(record[0x38D]);
    goto coordinates;
first:
    selected = (u8)func_8005CE14(record[0x38D]);
coordinates:
    selected = (u8)(selected % 24U);
    {
        register u32 offset __asm__("$3") = selected * 1000;
        other = bank + offset;
    }
    x = ((s16 *)(scratch + 0x36))[index];
    /* Reuse the word for differences converted before either product. */
    selected = (u32)(*(s16 *)(other + 2) - x);
    firstSquared = selected * selected;
    y = ((s16 *)(scratch + 0x66))[index];
    selected = (u32)(*(s16 *)(other + 6) - y);
    {
        register u32 secondSquared __asm__("$3") = selected * selected;
        squared = firstSquared + secondSquared;
    }
    if (squared >= threshold + 0x4000U) {
        goto distance;
    }
    {
        if (record[0x399] != 0) {
            if (-x >= -0x32DF) {
                return 1;
            }
            /* Preserve this separate fallback edge rather than merging the
             * two signed tests. The real record pointer is needed below. */
            __asm__("" : : "r"(record));
            goto distance;
        } else if (x < -0x32DF) {
            goto distance;
        }
        return 1;
    }
distance:
    {
        s32 fallbackX = ((s16 *)(scratch + 0x36))[index];
        s32 fallbackY;
        /* Keep the measured X reload before the separate Y reload. */
        __asm__("" : "=r"(fallbackX) : "0"(fallbackX));
        fallbackY = ((s16 *)(scratch + 0x66))[index];
        return func_8004968C(record, fallbackX, fallbackY) < threshold;
    }
}
