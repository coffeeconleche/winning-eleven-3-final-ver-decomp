#include "common.h"

extern u8 D_80105508[];

/* The 40-byte stride and these three bytes are partial access views only.
 * Targets may alias the record; keep their reads after each byte store.
 * The step is narrowed for comparison, but subtraction uses the full word.
 * Table extent, selector domain and the historical API remain provisional. */
s32 func_8006F714(u32 selector, u8 *target, u32 step)
{
    s32 first = 0;
    s32 second = 0;
    s32 third = 0;
    u8 *record = D_80105508 + (u8)selector * 40;
    u8 value = record[0x16];
    u8 value1;
    /* Preserve the observed full-word copy of the incoming step to $t0. */
    register u32 amount __asm__("$8") = step;

    if ((u8)value > target[0]) {
        if ((u8)value < (u8)amount) {
            record[0x16] = 0;
        } else {
            record[0x16] = value - step;
        }
        if (record[0x16] > target[0]) {
            goto next_byte;
        }
    }
    record[0x16] = target[0];
    first = 1;

next_byte:
    value1 = record[0x17];
    if ((u8)value1 > target[1]) {
        if ((u8)value1 < (u8)amount) {
            record[0x17] = 0;
        } else {
            record[0x17] = value1 - amount;
        }
        if (record[0x17] > target[1]) {
            goto last_byte;
        }
    }
    record[0x17] = target[1];
    second = 1;

last_byte:
    {
        u32 value2 = record[0x18];

        if ((u8)value2 > target[2]) {
            if ((u8)value2 < (u8)amount) {
                record[0x18] = 0;
            } else {
                /* The original final decrement and byte store use $v0. */
                register u32 decreased __asm__("$2") = value2 - amount;
                record[0x18] = decreased;
            }
            if (record[0x18] > target[2]) {
                goto done;
            }
        }
        record[0x18] = target[2];
        third = 1;
    }

done:
    return third & (first & second);
}
