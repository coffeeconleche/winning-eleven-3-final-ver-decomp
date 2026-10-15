#include "types.h"

extern u8 D_800FF748[];
extern u8 D_8010C1D8[];
extern void func_8009E2A4(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);
extern void func_8005A85C(u8 *, s16 *, s16 *);
/* Incoming a1 is loaded by the caller but overwritten unused by the helper. */
extern void func_800A0F30(u8 *, u32, u8 *, u8 *);
extern void func_80068FC0(u8 *, u32, u32);

/* Partial views of existing guest storage; complete native record layouts,
 * allocation bounds and helper APIs remain provisional. No new storage. */
void func_8009E318(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *records = D_800FF748;
    u8 *state = D_8010C1D8;
    u32 offset;
    u8 identifier;
    u8 start;
    s32 count;
    u8 *candidate;
    u8 *pair;
    u8 *associated;
    s32 x, z, otherX, otherZ, dx, dz;
    u32 distance, other, phase;
    s32 component, magnitude, subtype, belowLimit;

    if (*(u8 *)0x1F80029A == 1) {
        if (*(u8 *)0x1F80030B != 0 &&
            (identifier = record[0x38D], offset = record[0x399] * 2,
             identifier != *(u8 *)(0x1F80031E + offset)) &&
            identifier != *(u8 *)(0x1F80031F + offset)) {
        } else {
            goto initial_reset;
        }
    } else {
        if (record[0x38D] == *(u8 *)(0x1F80031E + record[0x399] * 2)) {
initial_reset:
            func_8009E2A4(record);
        }
    }
    start = 13;
    if (record[0x399] == 1) start = 2;
    if (record[0x3E1] != 0) {
        count = 0;
        do {
            candidate = records + ((u32)start + (u8)((u8)count % 24U)) * 1000;
            if ((candidate[0] == 0 || candidate[0x3E0] != 1) &&
                record[0x3E1] == candidate[0x38D]) goto clear;
            count++;
        } while ((u8)count < 10U);
    }
    identifier = record[0x38D];
    pair = scratch + record[0x399] * 2;
    if (identifier == pair[0x31E] || identifier == pair[0x31F])
        record[0x3E1] = 0;
    if (record[0x3E1] == 0) goto reset;
    if ((u8)scratch[0x29A] == 4) {
        if (state[10] == record[0x38D] || state[11] == record[0x38D]) {
            record[0x3E1] = 0;
            record[0x3E2] = 1;
            record[0x3E3] = 0;
            return;
        }
        associated = *(u8 **)(scratch + 0x2F4);
        x = *(s16 *)(record + 2);
        otherX = *(s16 *)(associated + 2);
        dx = otherX - x;
        /* Signed16 differences fit32; wide products then unsigned low-word
         * addition preserve machine wrapping before the signed comparison. */
        distance = (u32)((long long)dx * dx);
        z = *(s16 *)(record + 6);
        otherZ = *(s16 *)(associated + 6);
        dz = otherZ - z;
        other = (u32)((long long)dz * dz);
        if ((s32)(distance + other) <= 0x53DCA1) {
            phase = (u8)func_8005B36C(otherX, otherZ, x, z);
            /* Each callback precedes the associated pointer/halfword reread. */
            component = func_8001E694(phase, 0x9E8);
            *(u16 *)(record + 0x3BC) = *(u16 *)(*(u8 **)(scratch + 0x2F4) + 2) + (u32)component;
            component = func_8001E5A4(phase, 0x9E8);
            *(u16 *)(record + 0x3BE) = *(u16 *)(*(u8 **)(scratch + 0x2F4) + 6) + (u32)component;
        }
    }
    record[0x3E3] = record[0x3E1];
    func_8005A85C(record, (s16 *)(scratch + 0xF8), (s16 *)(scratch + 0xFC));
    func_800A0F30(record, record[0x3E1], record + 0x3BC, record + 0x3BE);
    func_80068FC0(record, *(s16 *)(record + 0x3BC), *(s16 *)(record + 0x3BE));
    subtype = record[0x391];
    belowLimit = subtype < 26;
    if (belowLimit && subtype >= 21) {
        /* Promote before negation, including signed16 minimum -> 32768. */
        magnitude = *(s16 *)(record + 0x3BE);
        if (magnitude < 0) magnitude = -magnitude;
        if (magnitude >= 0x8B7) {
clear:
            record[0x3E1] = 0;
reset:
            func_8009E2A4(record);
        }
    }
}
