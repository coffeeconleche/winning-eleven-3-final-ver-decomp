#include "common.h"

extern s32 func_8001E6B8(s32 divisor);

/* Existing scratchpad and partial record access views; complete layouts,
 * pointer ownership and original helper/target declarations remain unknown.
 * Callers consume either a full word or its low byte; all exits return 0/1.
 * The real scratch base survives the callback and needs no allocation aid. */
u32 func_80094DC4(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 quotient;
    u8 divisorQuotient;
    s32 random;
    s32 threshold;

    if (*(u8 *)0x1F8002A9 != 0) {
        goto reject;
    }
    if (*(u32 *)0x1F8002B0 == 9) {
        return 1;
    }
    quotient = (u32)record[0x3B9] / 10;
    if (*(s16 *)0x1F80031C < 29 - (u8)quotient) {
        if (*(u32 *)(*(u8 **)0x1F8002F4 + 0x3A0) >= 0x3000) {
            return 1;
        }
    }
    if ((s16)*(u16 *)(scratch + 0x31C) >= 48) {
reject:
        /* Both vetoes share this rejection before the callback path. */
        return 0;
    }
    /* Reread the byte. The signed divisor includes negative values and zero;
     * multiplication keeps these values defined without shifting negatives. */
    divisorQuotient = (u32)record[0x3B9] / 10;
    random = func_8001E6B8(((s32)divisorQuotient - 7) * 3072);
    /* Reread the signed halfword, pointer and pointed word after the callback.
     * The final addition wraps as a word before the unsigned comparison. */
    threshold = ((s16)*(u16 *)(scratch + 0x31C) - 22) * 768 + 0xA000;
    return (u32)random + (u32)threshold <
           *(u32 *)(*(u8 **)(scratch + 0x2F4) + 0x3A0);
}
