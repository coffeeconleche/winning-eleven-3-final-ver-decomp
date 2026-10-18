#include "common.h"

extern u8 D_800FF748[];
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_8005CE30(u32);

/* Predicate: is the record's position (or its next step) within the measured
 * squared-distance limit of the ring-table position selected by its 0x38D
 * index? Partial record/table views only; the 1,000-byte record stride and the
 * 24-entry ring are measured, and the historical field meanings, helper
 * contracts and full layouts remain unknown.
 *
 * Final-source removal controls retain only three initialized value bindings:
 * dx2 in $a0, oy and dy2 in $v1. All earlier bindings and both empty uses were
 * removed cumulatively. Shared ok/fail labels retain the native branch shape.
 * Signed products are widened before low-word truncation, and sums wrap as
 * unsigned words before the native signed comparison. Native mapping and
 * narrowing conventions remain required; these are not historical API types.
 */
s32 func_800531D8(u8 *record)
{
    u8 *bank = D_800FF748;
    s32 goal;
    u32 angle;
    u32 difference;
    u8 index;
    u8 *other;
    s32 xa;
    s32 xb;
    s32 distance;
    s32 square;

    {
        /* Call-site argument views; both die in the call. */
        s32 argX;
        s32 argY;

        argX = *(s16 *)(record + 2);
        argY = *(s16 *)(record + 6);
        goal = -0x3320;
        if (record[0x399] == 0) {
            goal = 0x3320;
        }
        angle = func_8005B36C(argX, argY, goal, 0);
    }
    {
        /* Post-call facing byte and the masked angle difference. */
        u32 side;

        side = record[0x399];
        difference = ((side << 7) - angle) & 255;
        if (difference >= 129) {
            s32 armX;
            s32 armY;

            armX = *(s16 *)(record + 2);
            armY = *(s16 *)(record + 6);
            goal = -0x3320;
            if (side == 0) {
                goal = 0x3320;
            }
            angle = func_8005B36C(armX, armY, goal, 0);
            if ((s32)((angle - (record[0x399] << 7)) & 255) >= 53) {
                goto fail;
            }
        } else {
            s32 armX;
            s32 armY;

            armX = *(s16 *)(record + 2);
            armY = *(s16 *)(record + 6);
            goal = -0x3320;
            if (side == 0) {
                goal = 0x3320;
            }
            angle = func_8005B36C(armX, armY, goal, 0);
            if ((s32)(((record[0x399] << 7) - angle) & 255) >= 53) {
                goto fail;
            }
        }
    }
    index = (u8)((u8)func_8005CE30(record[0x38D]) % 24U);
    other = bank + index * 1000;
    xa = *(s16 *)(record + 2);
    {
        /* Squared distance to the selected record with the measured register
         * roles: dx/dy in v0, dx^2 in a0, dy^2 and the sum in v1. */
        s32 dx;
        register s32 dx2 __asm__("$4");
        s32 yy;
        register s32 oy __asm__("$3");
        register s32 dy2 __asm__("$3");
        s32 dsum;

        dx = xa - *(s16 *)(other + 2);
        dx2 = (s32)(u32)((long long)dx * dx);
        yy = *(s16 *)(record + 6);
        oy = *(s16 *)(other + 6);
        dx = yy - oy;
        dy2 = (s32)(u32)((long long)dx * dx);
        dsum = (s32)((u32)dx2 + (u32)dy2);
        distance = dsum;
    }
    if (distance > 0x143FFFF) {
        /* Second test: the record's own position stepped one heading offset
         * towards the selected side. */
        s32 firstReg;

        xb = xa;
        if (record[0x399] == 0) {
            firstReg = xb - 0x3320;
        } else {
            firstReg = xb + 0x3320;
        }
        square = (s32)(u32)((long long)*(s16 *)(record + 6) * *(s16 *)(record + 6));
        if (record[0x399] == 0) {
            s32 sum;

            sum = (s32)((u32)((long long)firstReg * (xb - 0x3320)) + (u32)square);
            if (sum <= 0x143FFFF) {
                goto ok;
            }
            goto fail;
        } else {
            s32 sum;

            sum = (s32)((u32)((long long)firstReg * (xb + 0x3320)) + (u32)square);
            if (sum > 0x143FFFF) {
                goto fail;
            }
            goto ok;
        }
    }
ok:
    return 1;
fail:
    return 0;
}
