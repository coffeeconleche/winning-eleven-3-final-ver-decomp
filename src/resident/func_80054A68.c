#include "common.h"

/* Views of existing storage and word-sized helper ABIs. Original declarations,
 * full record/scratch layouts, indirect users and native alias/alignment
 * contracts remain provisional. No storage is defined here. */
extern u8 *scratch2F4 __asm__("0x1F8002F4");
extern u32 func_8005B36C(s32, s32, s32, s32);
extern void func_80054A1C(u8 *);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005B7CC(u32, u32, u32);

/* Known callers test the returned 0/1 flag to skip their remaining processing.
 * Retain the state/counter reads across calls and the counter's final reread. */
s32 func_80054A68(u8 *record, u32 angle)
{
    /* Preserve the actual full-word argument across helper calls in original
     * $18. Removing this binding changes the measured save chronology. */
    register u32 savedAngle __asm__("$18") = angle;
    u32 own;
    u32 difference;
    u32 direction;
    u8 *other;

    if (*(u32 *)(record + 0x3A0) < 32 &&
        *(u16 *)(record + 0x38E) != 14) {
        return 0;
    }
    own = record[0x3A4];
    difference = (u8)(own - angle);
    if (difference > 128) {
        /* This initialized zero-result identity is a measured false-return
         * merge barrier, not a recovered game operation or historical-source
         * claim. It emits no instruction; the result is assigned before use. */
        s32 reverse = (u8)(angle - own);
        if (reverse > 64) {
            goto update;
        }
        reverse = 0;
        __asm__("" : "=r"(reverse) : "0"(reverse));
        return reverse;
    } else if ((s32)difference <= 64) {
        return 0;
    }

update:
    other = scratch2F4;
    direction = func_8005B36C(*(s16 *)(record + 2),
                             *(s16 *)(record + 6),
                             *(s16 *)(other + 2),
                             *(s16 *)(other + 6));
    if (*(u16 *)(record + 0x38E) != 14) {
        func_80054A1C(record);
        record[0x3AC] = (u8)(direction - savedAngle) <= 128;
        func_8005BA30(record, 14, 2);
    }
    record[0x3AA] = func_8005B7CC((u8)direction, record[0x3AA], 12);
    if (*(u32 *)(record + 0x3A0) < 9) {
        *(u32 *)(record + 0x3A0) = 0;
    } else {
        *(u32 *)(record + 0x3A0) -= 8;
    }
    if (*(u32 *)(record + 0x3A0) != 0) {
        return 1;
    }
    record[0x3A4] = savedAngle;
    return 0;
}
