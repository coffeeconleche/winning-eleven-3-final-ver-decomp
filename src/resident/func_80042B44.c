#include "common.h"

/* Table extent and complete record layouts remain unknown. */
extern u8 D_800C6D78[];

u32 func_80042B44(u8 *record)
{
    u32 value = record[0x3B9];
    u32 result;

    if (value >= 0x5A) {
        result = 1;
    } else {
        u8 *other = *(u8 **)0x1F8002F4;
        s32 first = *(s16 *)(record + 2) - *(s16 *)(other + 2);
        s32 second;
        /* The signed products fit 64 bits. Narrow their low words explicitly,
         * add with unsigned wrap, then use the PS1 signed-word interpretation;
         * a signed 32-bit square/sum would overflow for halfword extremes. */
        u32 square = (u32)((long long)first * first);

        second = *(s16 *)(record + 6) - *(s16 *)(other + 6);
        if ((s32)(square + (u32)((long long)second * second)) > 0x90000) {
            result = 1;
        } else {
            result = (u8)(D_800C6D78[*(u8 *)0x1F800328] - value / 10);
        }
    }
    return result;
}
