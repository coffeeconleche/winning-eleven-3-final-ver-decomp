#include "common.h"

/* Existing scratch halfword and byte table; these externs allocate no storage. */
extern s16 scratch31C __asm__("0x1F80031C");
extern u8 D_800C6D60[];

/* Partial record and MIPS argument/result views; the historical API is unknown. */
s32 func_8004419C(u8 *record, u32 direction)
{
    s32 level = scratch31C;
    s32 difference;
    s32 reverse;
    s32 angle;
    u8 *scratch = (u8 *)0x1F800000;

    if (level < 5) {
        return 1;
    }
    if (((u8 *)0x1F8002CF)[record[0x398]] == 0 && level >= 8) {
        return 0;
    }

    angle = record[0x3AA];
    difference = (u8)(angle - direction);
    if ((u32)difference > 128 ? (reverse = (u8)(direction - angle)) < 24 : difference < 24) {
        u8 *other = *(u8 **)(scratch + 0x2F4);
        s32 first = *(s16 *)(record + 2) - *(s16 *)(other + 2);
        u32 square = (u32)((long long)first * first);
        s32 second = *(s16 *)(record + 6) - *(s16 *)(other + 6);

        /* Widen the signed products, retain their low words and wrap the sum.
         * Its signed conversion uses the measured MIPS word interpretation. */
        if ((s32)(square + (u32)((long long)second * second)) <= 0x3FFFF) {
            return 0;
        }
    }

    {
        u8 quotient = (u32)record[0x3B9] / 10;
        /* This real unsigned reload occupies a0 before signed narrowing.
         * Removing its binding changes allocation and the load-delay gap. */
        register u16 lateLevel __asm__("$4") = *(u16 *)(scratch + 0x31C);
        u8 selector = scratch[0x328];

        return (s16)lateLevel <= D_800C6D60[(u8)selector] - quotient;
    }
}
