#include "common.h"

/* Partial native record/scratch access views, not complete backing layouts.
 * The threshold table is observed as unsigned halfwords. Helpers consume only
 * the listed inputs; unused a1-a3 residues are not source arguments. */
extern u16 D_800C6D7C[];
extern s32 func_800552F4(u8 *);
extern s32 func_800434D4(u8 *, u32);
extern s32 func_8003F560(u8 *);
extern s32 func_80053EB8(u8 *);
extern s32 func_8005CE30(u32);
extern s32 func_8003DB88(u8 *);

#define SH(p,o) (*(s16 *)((p) + (o)))
#define WORD(p,o) (*(u32 *)((p) + (o)))
#define BYTE(o) (*(volatile u8 *)(scratch + (o)))
#define HALF(o) ((s16)*(volatile u16 *)(scratch + (o)))
#define REF (*(u8 * volatile *)(scratch + 0x2F4))

/* The known caller supplies two coordinate records and a narrowed angle,
 * then ignores this result. Internal result paths retain the observed word/
 * low-byte return behavior; gameplay meanings and original types are unknown.
 * Squared products and sums wrap as u32 before the observed signed/unsigned
 * comparisons. Callbacks may change the scratch reference and mode fields. */
s32 func_80042BE0(u8 *actor, u8 *other, s32 angle)
{
    u8 *scratch = (u8 *)0x1F800000;
    s16 direction;
    u32 distance;
    u32 delta;
    s32 allowed;
    s32 successResult;
    u32 facing;
    if (actor[0x3D0]) goto no;
    facing = actor[0x3AA];
    {
        /* Aid A: keep the actual incoming angle in its consumed register. */
        register s32 initialAngle __asm__("$6") = angle;
        delta = (facing - initialAngle) & 255;
        if (delta >= 0x81U) allowed = (s32)((initialAngle - facing) & 255) < 0x61;
        else allowed = (s32)delta < 0x61;
        /* Aid B: preserve the incoming angle through both wrap directions. */
        __asm__("" : : "r"(initialAngle));
    }
    if (!allowed) return 0;
    if (BYTE(0x2A9)) {
        u8 *reference = REF;
        s32 x = SH(reference,2);
        s32 dx = SH(actor,2) - x;
        u32 actorX2 = (u32)dx * (u32)dx;
        s32 z = SH(reference,6);
        s32 dz = SH(actor,6) - z;
        u32 actorZ2 = (u32)dz * (u32)dz;
        s32 actorDistance = actorX2 + actorZ2;
        s32 ox = SH(other,2) - x;
        u32 otherX2 = (u32)ox * (u32)ox;
        s32 oz = SH(other,6) - z;
        u32 otherZ2 = (u32)oz * (u32)oz;
        s32 otherDistance = otherX2 + otherZ2;
        if (actorDistance <= otherDistance) goto action15;
    }
    if (func_800552F4(actor)) return 1;
    if (func_800434D4(actor, (u8)angle)) return 1;
    if ((u8)func_8003F560(actor)) return 1;
    if (!BYTE(0x2A9) && !(u8)func_80053EB8(actor)) {
        actor[0x396] = 1;
        actor[0x397] = 0;
        return 1;
    }
    if (D_800C6D7C[BYTE(0x328)] * 4 < SH(actor,0x3CC)) goto action15;
    {
        u8 *reference = REF;
        u32 a = reference[0x3A4];
        u32 b = reference[0x3A8];
        delta = (a - b) & 255;
        if (delta >= 0x81U) {
            if ((s32)((b - a) & 255) < 0x61) goto position;
            goto speed_check;
        }
        if ((s32)delta >= 0x61) {
speed_check:
            if (WORD(REF,0x3A0) < 0x4000U) goto position;
            goto no;
        }
    }
position:
    {
        s32 x = HALF(0x36);
        if (actor[0x399]) direction = -x;
        else direction = x;
    }
    {
        s32 dx = SH(actor,2) - HALF(0x36);
        s32 dz = SH(actor,6) - HALF(0x66);
        distance = (u32)dx * (u32)dx + (u32)dz * (u32)dz;
    }
    switch (BYTE(0x328)) {
    case 0:
    {
        u32 a, b;
        if ((s16)direction < -0x23E2) goto action15;
        if ((s16)direction < -0x198F) goto fallback;
        a = actor[0x3AA];
        b = REF[0x3A8];
        delta = (a - b) & 255;
        if (delta >= 0x81U) {
            s32 near = (s32)((b - a) & 255) < 0x39;
            if (near) return 0;
            /* Aid C: retain this record on the measured fallback edge. */
            __asm__("" : : "r"(actor));
            goto fallback;
        }
        if ((s32)delta < 0x39) {
            return 0;
        }
        goto fallback;
    }
    case 1:
        if (distance <= 0x3FFFFU) goto action15;
        if (BYTE(0x2A9) == (u8)func_8005CE30(actor[0x38D])) goto action15;
        if ((s16)direction < -0x27E2) {
            s32 z = SH(REF,6);
            if (z < 0) z = -z;
            {
                s32 close = z < 0x10F4;
                if (!close) goto fallback;
                {
                    successResult = 1;
                    goto store15;
                }
            }
        }
        goto fallback;
    case 2:
    default:
        if (BYTE(0x2A9) == (u8)func_8005CE30(actor[0x38D])) goto action15;
        if ((s16)direction < -0x1BE2) goto action15;
        {
            u8 *reference = REF;
            s32 z = SH(reference,6);
            u32 a, b;
            if (z < 0) z = -z;
            if (z < 0x12F5 && (s16)direction < -0x1BE1) goto distance_check;
            a = actor[0x3AA];
            b = reference[0x3A4];
            delta = (a - b) & 255;
            if (delta >= 0x81U) {
                s32 near = (s32)((b - a) & 255) < 0x41;
                if (near) return 0;
                /* Aid D: retain the record on the distance-check edge. */
                __asm__("" : : "r"(actor));
                goto distance_check;
            }
            if ((s32)delta >= 0x41) goto distance_check;
no:
            /* Aid E: retain the record at the shared zero-return edge. */
            __asm__("" : : "r"(actor));
            return 0;
        }
distance_check:
        if (distance > 0x3FFFFU) goto fallback;
    }
action15:
    {
        successResult = 1;
store15:
        actor[0x396] = 15;
        actor[0x397] = 0;
        return successResult;
    }
fallback:
    return (u8)func_8003DB88(actor);
}
