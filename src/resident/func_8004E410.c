#include "common.h"

extern u8 func_8005B36C(s16, s16, s16, s16);
extern s32 func_8001E6B8(s32);
extern s32 func_8005C7A0(s32);
extern u8 func_8005B7CC(u8, u8, u8);

#define HALF(pointer, offset) (*(s16 *)((pointer) + (offset)))
#define SQUARE(value) ((u32)(value) * (u32)(value))

/* Measured pointer fields, short/byte helper views and a byte-canonical word
 * result. Historical APIs, extents, guest/native pointer, alias and alignment
 * contracts remain unknown. These declarations allocate no game storage. */
u32 func_8004E410(u8 *record)
{
    u8 *current = *(u8 **)0x1F8002F4;
    u8 initial = (u32)current[0x3A4] - 128U;
    u8 *scratch = (u8 *)0x1F800000;
    u8 direction;
    u8 difference;
    s32 otherDirection;
    u32 firstArgument;

    /* Halfword differences fit s32; square and add only as wrapping u32. */
    if ((s32)(SQUARE(HALF(record, 2) - HALF(current, 0x3C2)) +
              SQUARE(HALF(record, 6) - HALF(current, 0x3C6))) <
        (s32)(SQUARE(HALF(record, 2) - HALF(current, 2)) +
              SQUARE(HALF(record, 6) - HALF(current, 6)))) {
        direction = func_8005B36C(HALF(record, 2), HALF(record, 6),
                                 HALF(current, 0x3C2), HALF(current, 0x3C6));
    } else {
        direction = func_8005B36C(HALF(record, 2), HALF(record, 6),
                                 HALF(current, 2), HALF(current, 6));
    }
    {
        u8 delta = direction - initial;
        if ((u8)delta > 128) {
            difference = initial - direction;
        } else {
            difference = delta;
        }
    }
    if (*(u32 *)(scratch + 0x2B0) == 11) {
        u32 adjustment = (u32)func_8001E6B8(12);
        adjustment += 16U;
        difference += adjustment;
    }
    if ((u8)difference > 60) {
        difference = 60;
    }
    if ((u8)difference > 8) {
        difference += (u32)func_8005C7A0(6);
    }
    otherDirection = (*(u8 **)(scratch + 0x2F4))[0x3A4];
    firstArgument = initial;
    if ((u8)(direction - otherDirection - 128) > 128) {
        otherDirection += 16;
    } else {
        otherDirection -= 16;
    }
    initial = func_8005B7CC(firstArgument, (u8)otherDirection,
                          (u8)(-128 - difference * 2));
    /* This removal-tested identity retains the actual returned angle in its
     * measured live register; it is a matching aid, not recovered source. */
    __asm__("" : "=r"(initial) : "0"(initial));
    return (u8)initial;
}
