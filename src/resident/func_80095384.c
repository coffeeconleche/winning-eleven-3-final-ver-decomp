#include "common.h"

/* Matching argument/result views; complete helper APIs remain provisional. */
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);

/* Partial record and existing scratch-storage views, not complete layouts. */
s32 func_80095384(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 side = (record[0x399] ^ 1) << 7;
    s32 phase = (*(u8 **)(scratch + 0x2F4))[0x3A4];
    s32 forward = side - phase;
    s32 chosen;
    u32 distance;
    s16 goal;
    s32 divisor;
    s32 component;
    u8 *current;
    s32 quotient;
    s32 level;
    /* Preserve the observed registers for these actual computed values. */
    register s32 threshold __asm__("$16");
    register s32 scaledDistance __asm__("$3");
    s32 offset;

    if ((u8)forward <= 128) {
        chosen = forward;
    } else {
        chosen = phase - side;
    }
    distance = (u8)chosen;
    if (distance >= 61) {
        return 0;
    }
    /* Reload the whole side byte; it is not assumed to be boolean. */
    goal = 0x3320;
    if (record[0x399] == 0) {
        goal = -0x3320;
    }
    divisor = func_8001E694((*(u8 **)(scratch + 0x2F4))[0x3A4], 0x3000);
    if (divisor == 0) {
        divisor = 1;
    }
    component = func_8001E5A4((*(u8 **)(scratch + 0x2F4))[0x3A4], 0x3000);
    /* Fresh capture after the second call; retain it for both coordinates. */
    current = *(u8 **)(scratch + 0x2F4);
    scaledDistance = distance * 4;
    {
        /* Widen the signed product, retain its low word, then divide signed.
         * Legacy division traps are not a portable native trap API. */
        s32 delta = (s16)goal - *(s16 *)(current + 2);
        s32 product = (s32)(u32)((long long)delta * component);
        quotient = product / divisor;
    }
    /* Empty actual-quotient identity keeps the level read after division;
     * it emits no game instructions and has no clobbers. */
    __asm__ __volatile__("" : "=r"(quotient) : "0"(quotient));
    level = (s16)*(u16 *)(scratch + 0x31C);
    threshold = 0x480 + scaledDistance;
    if (level < 24) {
        threshold += 16 * (24 - level);
    }
    {
        /* Capture this signed halfword before narrowing the quotient. */
        register s32 coordinate __asm__("$2") = *(s16 *)(current + 6);
        offset = coordinate + (s16)quotient;
    }
    if (offset < 0) {
        offset = -offset;
    }
    return offset < threshold;
}
