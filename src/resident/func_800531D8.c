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
 * Matching aids (they emit no instruction or memory access):
 *  - fixed-register bindings pin the measured GCC 2.7.2 allocation:
 *    argX/argY for the first call's arguments (they die at the jal), `side`
 *    for the post-call byte, armX/armY for the angle re-test arguments,
 *    xa/xb for the table x and its preserved copy, firstReg/squareReg and the
 *    per-arm `sum` for the final squared-distance test;
 *  - the empty identity on `xb` keeps the preserved table x live so the
 *    per-arm `x +- 0x3320` factor is materialised in v0 instead of clobbering
 *    the copy;
 *  - the shared ok/fail labels keep both final tests as real tests; folding
 *    them into a single return makes GCC 2.7.2 merge the two arms.
 * The `side == 0` arm that appears to compute the same value on both paths is
 * retained because the retail code really branches there. */
s32 func_800531D8(u8 *record)
{
    u8 *bank = D_800FF748;
    s32 goal;
    u32 angle;
    u32 difference;
    u8 index;
    u8 *other;
    register s32 xa __asm__("$5");
    register s32 xb __asm__("$4");
    s32 distance;
    s32 square;

    {
        /* Call-site argument views; both die in the call. */
        register s32 argX __asm__("$4");
        register s32 argY __asm__("$5");

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
        register u32 side __asm__("$4");

        side = record[0x399];
        difference = ((side << 7) - angle) & 255;
        if (difference >= 129) {
            register s32 armX __asm__("$2");
            register s32 armY __asm__("$5");

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
            register s32 armX __asm__("$2");
            register s32 armY __asm__("$5");

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
        register s32 dx __asm__("$2");
        register s32 dx2 __asm__("$4");
        register s32 yy __asm__("$2");
        register s32 oy __asm__("$3");
        register s32 dy2 __asm__("$3");
        s32 dsum;

        dx = xa - *(s16 *)(other + 2);
        dx2 = dx * dx;
        yy = *(s16 *)(record + 6);
        oy = *(s16 *)(other + 6);
        dx = yy - oy;
        dy2 = dx * dx;
        dsum = dx2 + dy2;
        distance = dsum;
    }
    if (distance > 0x143FFFF) {
        /* Second test: the record's own position stepped one heading offset
         * towards the selected side. */
        register s32 firstReg __asm__("$5");

        xb = xa;
        if (record[0x399] == 0) {
            firstReg = xb - 0x3320;
        } else {
            firstReg = xb + 0x3320;
        }
        square = *(s16 *)(record + 6) * *(s16 *)(record + 6);
        if (record[0x399] == 0) {
            register s32 sum __asm__("$3");

            sum = firstReg * (xb - 0x3320) + square;
            __asm__("" : : "r"(xb));
            if (sum <= 0x143FFFF) {
                goto ok;
            }
            goto fail;
        } else {
            register s32 sum __asm__("$3");

            sum = firstReg * (xb + 0x3320) + square;
            __asm__("" : : "r"(xb));
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
