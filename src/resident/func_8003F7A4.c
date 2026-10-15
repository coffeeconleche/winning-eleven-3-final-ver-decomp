#include "common.h"

extern u8 D_800FF748[];
extern u8 func_80052A68(u8 *, u8, u32);
extern s32 func_8005CE30(u32);
extern u32 func_8005B36C(s32, s32, s32, s32);

/* Partial aligned PS1 record/scratch views; no complete native layout assumed.
 * Keep each callback and subsequent coordinate/side reload distinct. */
void func_8003F7A4(u8 *record)
{
    u8 *bank = D_800FF748;
    register u8 *scratch __asm__("$22") = (u8 *)0x1F800000;
    u16 rawX;
    u16 rawZ;
    s32 x;
    s32 z;
    s32 adjusted;
    u32 selected;
    u8 *other;
    s32 recordX;
    s32 recordZ;
    u32 nearbyDistance;
    u32 targetDistance;
    u32 goalDirection;
    u32 direction;
    u32 difference;
    s32 goal;

    if (*(s16 *)(scratch + 0x31C) < 9) {
        return;
    }
    __asm__("" : "=r"(bank) : "0"(bank));
    if ((u8)func_80052A68(record, 6, 0x24000) != 0) {
        return;
    }
    rawX = *(u16 *)(scratch + 0x44);
    rawZ = *(u16 *)(scratch + 0x74);
    if (scratch[0x2A9] != 0 || *(s16 *)(scratch + 0x5C) < -224) {
        return;
    }
    adjusted = (s16)rawX;
    if (record[0x399] != 0) {
        adjusted = -adjusted;
    }
    if (adjusted < 0x23E2) {
        return;
    }
    z = (s16)rawZ;
    if (__builtin_abs(z) >= 0xAB7) {
        return;
    }
    selected = (u8)((u8)func_8005CE30(record[0x38D]) % 24U);
    other = bank + selected * 1000;
    {
        /* Interpret the captured halfword through a signed word, not a
         * narrowed result of a later negation. */
        s32 signedXWord = (s32)((u32)rawX << 16);
        x = signedXWord >> 16;
    }
    recordX = *(s16 *)(record + 2);
    {
        s32 initialX = recordX - x;
        u32 firstSquare = (u32)initialX * (u32)initialX;
        s32 initialZ;
        recordZ = *(s16 *)(record + 6);
        initialZ = recordZ - z;
        nearbyDistance = firstSquare + (u32)initialZ * (u32)initialZ;
    }
    if (nearbyDistance > 0x100000U) {
        return;
    }
    __asm__("" : "=r"(scratch) : "0"(scratch));
    {
        register u16 targetX __asm__("$2") = *(u16 *)(scratch + 0xF8);
        u32 firstSquare;
        register u16 targetZ __asm__("$2");
        s32 differenceX = recordX - (s16)targetX;
        firstSquare = (u32)differenceX * (u32)differenceX;
        targetZ = *(u16 *)(scratch + 0xFC);
        {
            s32 differenceZ = recordZ - (s16)targetZ;
            targetDistance = firstSquare + (u32)differenceZ * (u32)differenceZ;
        }
    }
    goal = -0x3320;
    if (record[0x399] == 0) {
        goal = 0x3320;
    }
    goalDirection = func_8005B36C(x, z, goal, 0);
    direction = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6), x, z);
    if (((goalDirection - direction) & 255) >= 129) {
        difference = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6), x, z) - goalDirection;
    } else {
        difference = goalDirection - func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6), x, z);
    }
    if ((s32)(difference & 255) >= 73) {
        return;
    }
    {
        u32 nearbyLimit = nearbyDistance + 0x240000U;
        if (nearbyLimit < targetDistance) {
            goto change;
        }
    }
    adjusted = (s16)rawX;
    if (record[0x399] != 0) {
        adjusted = -adjusted;
    }
    if (adjusted >= 0x3220) {
        goto change;
    }
    __asm__("" : "=r"(record) : "0"(record));
    {
        register u16 gateX __asm__("$2") = *(u16 *)(scratch + 0xF8);
        u32 side = record[0x399];
        adjusted = (s16)gateX;
        if (side != 0) {
            adjusted = -adjusted;
        }
    }
    if (adjusted >= 0x3220) {
        goto change;
    }
    __asm__("" : "=r"(scratch) : "0"(scratch));
    {
        register u16 finalX __asm__("$3") = *(u16 *)(scratch + 0xF8);
        s32 deltaX = *(s16 *)(other + 2) - (s16)finalX;
        u32 firstSquare = (u32)deltaX * (u32)deltaX;
        register u16 finalZ __asm__("$3") = *(u16 *)(scratch + 0xFC);
        s32 deltaZ = *(s16 *)(other + 6) - (s16)finalZ;
        u32 limit = targetDistance + 0x24000U;
        u32 total = firstSquare + (u32)deltaZ * (u32)deltaZ;
        if (total >= limit) {
            return;
        }
    }
change:
    record[0x396] = 13;
    *(u16 *)(record + 0x3CC) = 0;
    record[0x397] = 6;
}
