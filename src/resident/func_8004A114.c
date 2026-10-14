#include "common.h"

/* Partial matching views: complete helper APIs, record layouts, scratch/table
 * extents and native pointer/alias contracts remain unknown. Scratch addresses
 * require native adaptation; these helper return-discard views are provisional.
 * GCC 2.7.2 with -fno-cse-follow-jumps retains the observed facing rereads.
 * One real scratch-pointer binding and empty identity retain its original
 * call-delay setup and natural 32-byte frame; no new storage is allocated. */
extern u32 func_8005B36C(s32 x, s32 y, s32 otherX, s32 otherY);
extern void func_8005BA78(u8 *record, u32 selector, u32 index);
extern void func_8005BA30(u8 *record, u32 selector, u32 index);

u32 func_8004A114(u8 *record)
{
    register u8 *scratch __asm__("$17") = (u8 *)0x1F800000;
    s32 x, y, otherX, otherY;
    u8 *other;
    u32 angle, facing, difference;

    x = *(s16 *)(record + 2);
    other = *(u8 **)0x1F8002F4;
    y = *(s16 *)(record + 6);
    otherX = *(s16 *)(other + 2);
    otherY = *(s16 *)(other + 6);
    angle = func_8005B36C(x, y, otherX, otherY);
    __asm__("" : "=r"(scratch) : "0"(scratch));
    facing = record[0x3AB];
    difference = facing - angle;

    if ((u8)difference > 128) {
        difference = angle - facing;
    }
    if (scratch[0x2A9] != 0 && (u8)difference >= 33) {
        u32 index = record[0x398];
        u32 recordMask = *(u16 *)(record + 0x3D4);
        u32 scratchMask = *(u16 *)(scratch + 0x22 + index * 2);

        if ((scratchMask & recordMask) == 0) {
            goto alternate;
        }
    }
    if (record[0x397] != 1) {
        u32 captured;

        func_8005BA78(record, 0x26, record[0x390]);
        /* Capture after the callback, before the ordered state updates. */
        captured = record[0x3A4];
        record[0x396] = 1;
        record[0x397] = 1;
        record[0x3D0] = 6;
        record[0x3AA] = captured;
    }
    return 0;

alternate:
    if (record[0x397] == 6) {
        goto alternateDone;
    }
    if (*(u16 *)(record + 0x38E) == 0x1B) {
        u32 currentFacing = record[0x3AB];
        u32 orientation = record[0x3AC];
        u32 desired = (u8)(currentFacing - angle) <= 128;

        if (desired ? orientation != 1 : orientation != 0) {
            s32 index = record[0x390];
            u32 captured = record[0x3AC];

            record[0x3AC] = captured ^ 1;
            /* Signed word remainder is narrowed only at the helper argument. */
            func_8005BA30(record, 0x1B, (u8)((index + 7) % 16));
        }
    } else {
        u32 currentFacing = record[0x3AB];
        u32 index = record[0x390];

        record[0x3AC] = (u8)(currentFacing - angle) <= 128;
        func_8005BA78(record, 0x1B, index);
    }
    record[0x3D0] = 2;
    record[0x396] = 1;
    record[0x397] = 6;
alternateDone:
    return 1;
}
