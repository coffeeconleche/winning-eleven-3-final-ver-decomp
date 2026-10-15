#include "common.h"

extern u8 D_80105508[];

/* Existing 40-byte storage view. Targets may alias the selected entry:
 * preserve the target rereads after each provisional byte store. */
s32 func_8006F624(u32 selector, u8 *target, u32 increment)
{
    s32 first = 0;
    s32 second = 0;
    s32 third = 0;
    u8 *entry = D_80105508 + (selector & 0xFF) * 40;
    u8 old;
    u8 value;
    u32 value1;
    /* The final full-word sum is narrowed only at its byte store/test. */
    register u32 value2 __asm__("$2");
    /* Retain the real incoming word for the second and third components. */
    register u32 amount __asm__("$7") = increment;

    old = entry[0x16];
    if (old >= target[0] ||
        (value = (u32)old + increment, entry[0x16] = value,
         (u32)(value & 0xFF) >= target[0])) {
        first = 1;
        entry[0x16] = target[0];
    }
    old = entry[0x17];
    if (old >= target[1] ||
        (value1 = (u32)old + amount, entry[0x17] = value1,
         (u32)(value1 & 0xFF) >= target[1])) {
        second = 1;
        entry[0x17] = target[1];
    }
    old = entry[0x18];
    if (old >= target[2] ||
        (value2 = (u32)old + amount, entry[0x18] = value2,
         (u32)(value2 & 0xFF) >= target[2])) {
        third = 1;
        entry[0x18] = target[2];
    }
    return third & (first & second);
}
