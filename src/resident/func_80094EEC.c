#include "types.h"

extern void func_8005C2AC(u8 *, u8, u8, u8, u8);

/* Partial guest-memory views only. The helper consumes five byte arguments
 * and refreshes scratch coordinates; read them only after that call. Complete
 * record/vector layouts and native address translation remain provisional.
 * Coordinate differences fit s32. Squares and their sum intentionally wrap
 * modulo 2^32, including the full-word radius square; comparisons are unsigned. */
s32 func_80094EEC(u8 *record, u32 radius)
{
    s32 dx, dz;
    u32 xSquared, zSquared, radiusSquared;
    /* This initialized, consumed result is bound only to retain allocation. */
    register s32 result __asm__("$2");

    if (*(s16 *)0x1F8000E0 != 0) {
        goto fail;
    }
    if (record[0x38D] == *(u8 *)0x1F8002A8) {
        return 0;
    }
    if (*(s16 *)0x1F80031C >= 8) {
        goto work;
    }
fail:
    return 0;
work:
    func_8005C2AC(record, record[0x38E], record[0x390],
                  record[0x3AA], record[0x3AC]);
    dx = *(s16 *)0x1F8000F0 - *(s16 *)0x1F800036;
    xSquared = (u32)dx * (u32)dx;
    dz = *(s16 *)0x1F8000F4 - *(s16 *)0x1F800066;
    zSquared = (u32)dz * (u32)dz;
    radiusSquared = radius * radius;
    result = 0;
    if (xSquared + zSquared < radiusSquared) {
        result = *(s16 *)0x1F8000F2;
        result -= *(s16 *)0x1F80004E;
        if (result < 0) {
            result = -result;
        }
        result = (u32)result < radius;
    }
    return result;
}
