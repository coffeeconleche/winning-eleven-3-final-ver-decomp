#include "common.h"

extern u32 D_8010C32C[];
extern s32 func_8002B1E4(u8 *);
extern s32 func_8001E6B8(s32);
extern s32 func_8001E730(s16);

/* Partial record/table views and observed helper APIs. The initial helper
 * returns -8..16. Its signed-remainder adjustment has magnitude at most8;
 * the later adjustments keep every score calculation inside -33..37, so
 * signed arithmetic is safe even when the random remainder is negative.
 * Record fields and scratch state are reread after calls as in the target. */
s32 func_80036230(u8 *input)
{
    register u8 *record __asm__("$17") = input;
    s32 score;
    u32 entry;
    s32 nibble;
    s32 random;
    s32 adjusted;
    u8 *scratch = (u8 *)0x1F800000;

    score = func_8002B1E4(record);
    entry = *(u32 *)((u8 *)D_8010C32C + record[0x392] * 12 + record[0x398] * 264);
    nibble = (entry >> 20) & 15;
    {
        /* Both bindings hold initialized values consumed by ordinary C. */
        register s32 maximum __asm__("$3") = 9;
        score += func_8001E6B8(maximum - nibble);
    }
    if ((u8)func_8001E730(record[0x3B8]) == 0 ||
        (record[0x39B] != 0 && (u8)func_8001E730(record[0x3B8] - 40) == 0)) {
        if ((u8)func_8001E730(record[0x3B8] - 80) != 0 &&
            *(s16 *)(*(u8 **)0x1F8002F4 + 4) >= *(s16 *)0x1F8000F2 - 64) {
            random = func_8001E6B8(5);
            adjusted = score - 13;
            score = adjusted - random;
        } else {
            random = func_8001E6B8(8);
            adjusted = score + 6;
            goto add;
        }
    } else if ((u8)func_8001E730(record[0x3B8] - 40) != 0 &&
               *(s16 *)(*(u8 **)(scratch + 0x2F4) + 4) >= *(s16 *)(scratch + 0xF2) - 64) {
        score -= 14;
    } else {
        random = func_8001E6B8(4);
        adjusted = score - 5;
add:
        score = adjusted + random;
    }
    if (score >= 25) {
        score = 24;
    }
    return score;
}
