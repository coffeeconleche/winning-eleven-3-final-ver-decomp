#include "common.h"

extern s32 func_8005CE14(u32);
extern s32 func_80052C6C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_800B1128(u32);
extern u8 D_800FF748[];

/* Partial aligned PS1 pool views; existing records have 1000-byte stride.
 * Coordinates are signed halfwords, but squares/sum and heading differences
 * deliberately wrap as unsigned words. Preserve post-helper captures.
 * B36C's older narrow private prototype needs native API reconciliation.
 * Mapped scratch, pool extent and native alignment/layout remain provisional. */
u8 func_800791A0(u8 *object, u32 requestedHeading)
{
    u8 *other;
    u8 *chosen;
    u8 *reference;
    s32 i;
    s32 x;
    s32 y;
    s32 dx;
    s32 dy;
    u32 distance;
    u32 heading;
    u32 delta;
    u32 forward;
    u32 choice;
    u32 best;
    u32 offset;
    u8 result;
    u8 *pool;
    u8 *scratch;

    pool = D_800FF748;
    scratch = (u8 *)0x1F800000;
    if (object[0x39A] != 0) {
        result = *(u8 *)0x1F8002AE;
    } else {
        best = 0xFFFFFFFFU;
        offset = ((u8)func_8005CE14(object[0x38D]) % 24);
        other = pool + offset * 1000;
        i = 0;
        do {
            if (object != other && !(func_80052C6C(other) & 0xFF)) {
                reference = *(u8 **)(scratch + 0x2F4);
                x = *(s16 *)(other + 2);
                dx = *(s16 *)(reference + 2) - x;
                y = *(s16 *)(other + 6);
                dy = *(s16 *)(reference + 6) - y;
                distance = (u32)dx * (u32)dx + (u32)dy * (u32)dy;
                heading = func_8005B36C(*(s16 *)(object + 2),
                    *(s16 *)(object + 6), x, y);
                forward = heading - requestedHeading;
                /* One measured value identity preserves the original heading
                 * lifetime; it emits no instruction and has no clobbers. */
                __asm__("" : "=r"(heading) : "0"(heading));
                if ((forward & 0xFF) < 0x81U) {
                    choice = forward;
                } else {
                    choice = requestedHeading - heading;
                }
                delta = choice & 0xFF;
                if (delta < 4U && distance <= 0x04000000U && best >= delta) {
                    chosen = other;
                    best = delta;
                    *(u16 *)(object + 0x3C6) = func_800B1128(distance);
                }
            }
            i++;
            other += 1000;
        } while (i < 11);
        if (best != 0xFFFFFFFFU) {
            result = chosen[0x38D];
        } else {
            result = scratch[0x2AE];
        }
    }
    return result;
}
