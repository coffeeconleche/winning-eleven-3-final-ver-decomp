#include "common.h"

/* Partial byte access views; complete record extents and helper APIs are unknown.
 * Scratchpad casts refer to existing storage, with no MMIO/volatile claim. */
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_80036438(u8 *);
extern s32 func_80035A5C(u8 *);
extern s32 func_8003D4E8(u8 *, s32);
extern s32 func_80038C4C(u8 *, s32);

/* The caller consumes the low byte as a state code. The direction difference
 * wraps as a word before the low-byte masks; 0x81 is unsigned, 0x30 is signed.
 * Separate near/far branches retain the observed graph. Helpers can mutate the
 * record: the fallback byte is loaded at current, after any helper calls. */
s32 func_80035944(u8 *record)
{
    s32 delta;
    u32 low;
    s32 target;
    s32 x;
    s32 y;
    s32 direction;

    if (*(s16 *)0x1F80005E < -0x420) {
        goto current;
    }
    x = *(s16 *)0x1F800048;
    y = *(s16 *)0x1F800078;
    target = -0x3320;
    if (record[0x399] == 0) {
        target = 0x3320;
    }
    delta = (s32)(func_8005B36C(x, y, target, 0) -
                  (*(u8 **)0x1F8002F4)[0x3A4] - 0x80U);
    low = delta & 0xFF;
    if (low < 0x81U) {
        goto positive;
    }
    if ((s32)((0U - (u32)delta) & 0xFF) >= 0x30) {
        goto far;
    }
    goto near;
positive:
    if ((s32)low < 0x30) {
        goto near;
    }
far:
    if (func_80036438(record) & 0xFF) {
        return 0x23;
    }
    goto direction_test;
near:
    if (func_80035A5C(record) & 0xFF) {
        return 0x22;
    }
direction_test:
    direction = func_8003D4E8(record, 5);
    if (func_80038C4C(record, direction & 0xFF)) {
        goto success;
    }
current:
    return record[0x396];
success:
    record[0x3B2] = direction;
    return 0x27;
}
