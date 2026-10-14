#include "common.h"

/* Access views of existing scratch storage; no storage is allocated. */
extern u8 scratch2A9 __asm__("0x1F8002A9");
extern s16 scratch31C __asm__("0x1F80031C");

/* Partial record and measured MIPS argument/result view; historical API unknown. */
s32 func_800551C8(u8 *record)
{
    s32 selector = scratch2A9;
    u8 *scratch = (u8 *)0x1F800000;
    s16 boundary;
    u8 *other;
    s32 first;
    u32 square;
    s32 second;
    s32 distance;
    s32 side;
    u16 rawHorizontal;
    s32 horizontal;
    s32 signedBoundary;
    u16 rawVertical;
    s32 vertical;

    if (selector != 0) {
        boundary = -0x21E2;
        if (record[0x38D] != selector) {
            if (((u8 *)0x1F8002CF)[record[0x398]] == 0) {
                goto false_result;
            }
        }
    } else {
        if (scratch31C < 11) {
            goto false_result;
        }
        boundary = -0x24E2;
    }

    other = *(u8 **)(scratch + 0x2F4);
    first = *(s16 *)(record + 2) - *(s16 *)(other + 2);
    square = (u32)((long long)first * first);
    second = *(s16 *)(record + 6) - *(s16 *)(other + 6);
    /* Widen signed products, retain their low words and wrap the sum.
     * The signed conversion follows the measured MIPS representation. */
    distance = (s32)(square + (u32)((long long)second * second));
    side = record[0x399];
    if (distance <= 0x3FFFF) {
        goto true_result;
    }
    /* These unsigned halfword accesses precede signed narrowing in the original. */
    rawHorizontal = *(u16 *)(scratch + 0x46);
    horizontal = (s16)rawHorizontal;
    signedBoundary = (s16)boundary;
    if (side != 0 ? -horizontal < signedBoundary : horizontal < signedBoundary) {
        rawVertical = *(u16 *)(scratch + 0x76);
        vertical = (s16)rawVertical;
        if (vertical < 0) {
            vertical = -vertical;
        }
        if (vertical < 0xAB6) {
            goto true_result;
        }
    }
false_result:
    return 0;
true_result:
    return 1;
}
