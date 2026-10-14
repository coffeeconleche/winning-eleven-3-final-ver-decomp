#include "common.h"

/* Every abs input is a sign-extended halfword, including -32768. */
extern s32 abs(s32 value);

/* Partial field views only; full layout and historical signature are unknown. */
u32 func_80068E24(u32 side)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *record;

    if ((u8)side == 0 && *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) < 0) {
        return 0;
    }
    if ((u8)side == 1 && *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) > 0) {
        return 0;
    }
    record = *(u8 **)(scratch + 0x2F4);
    if (abs(*(s16 *)(record + 2)) >= 0x23E3 &&
        abs(*(s16 *)(record + 6)) >= 0x12F5) {
        return 2;
    }
    if (abs(*(s16 *)(record + 2)) >= 0x1EE3 &&
        abs(*(s16 *)(record + 6)) < 0xEF4) {
        return 5;
    }
    record = *(u8 **)(scratch + 0x2F4);
    if (abs(*(s16 *)(record + 2)) >= 0x13E3 &&
        abs(*(s16 *)(record + 6)) < 0x12F4) {
        return 4;
    }
    if (abs(*(s16 *)(record + 2)) >= 0xBE3 &&
        abs(*(s16 *)(record + 6)) < 0x1AF4) {
        return 3;
    }
    {
        /* Retain the observed final field/magnitude allocation in register $3. */
        register s32 value __asm__("$3") = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2);
        value = abs(value);
        {
            u32 result = 2;
            if (value <= 0x800) {
                result = 1;
            }
            return result;
        }
    }
}
