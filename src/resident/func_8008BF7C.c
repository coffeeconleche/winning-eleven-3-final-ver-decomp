#include "common.h"

extern s32 func_8001E6B8(s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8008BD20(u8 *);

/* Partial aligned PS1 object/scratch views, not complete native ownership.
 * Signed-halfword absolute values are computed in s32, including -32768.
 * Keep helper-visible rereads and defined byte-counter wraparound. */
void func_8008BF7C(u8 *object)
{
    u8 *scratch;
    s32 coordinate;
    u32 result;
    u8 phase;
    s32 difference;
    u8 counter;
    u32 state;

    scratch = (u8 *)0x1F800000;
    switch (object[0x397]) {
    case 0:
        if (object[0x38D] != scratch[0x2A8]) {
            goto rejected;
        }
        if (object[0x39A] != 0 && object[0x3B1] == 0 &&
            func_8001E6B8(3) == 0) {
            coordinate = *(s16 *)(object + 2);
            if (coordinate < 0) {
                coordinate = -coordinate;
            }
            if (coordinate < 0x32A0) {
                result = (u8)func_8008BD20(object);
                *(u16 *)(object + 0x3C2) = result;
                if (result != 0) {
                    goto selected;
                }
            }
        }
        if (*(u16 *)(object + 0x38E) != 0x69 &&
            *(u16 *)(object + 0x38E) != 0x6F) {
            coordinate = *(s16 *)(object + 2);
            if (coordinate < 0) {
                coordinate = -coordinate;
            }
            if ((u32)(coordinate - 0x25E2) >= 0x40FU) {
                goto outsideRange;
            }
        }
        func_8005BA30(object, 0x5B, 0);
        object[0x3D1] = 0;
        object[0x3B0] = 0;
        *(u32 *)(object + 0x3A0) = 0;
        object[0x3AB] = object[0x399] << 7;
        object[0x397]++;
        break;
    case 1:
        phase = func_8005B7CC(object[0x3AB], object[0x3AA], 4);
        difference = 0x1C0 - phase;
        object[0x3AA] = phase;
        *(u16 *)(object + 0x26) = (u16)((difference % 256) * 16);
        if (object[0x3AA] == object[0x3AB]) {
            object[0x397]++;
        }
        break;
    case 2:
        counter = object[0x3B0] + 1;
        object[0x3B0] = counter;
        if (counter >= 21U) {
            object[0x396] = 0x97;
            object[0x397] = 0;
        }
        /* fall through */
    default:
        counter = object[0x3B1] + 1;
        object[0x3B1] = counter;
        if (object[0x39A] != 0) {
            if (counter >= 121U) {
                if (func_8001E6B8(2) != 0) {
                    result = (u8)func_8008BD20(object);
                    *(u16 *)(object + 0x3C2) = result;
                    if (result != 0) {
                        goto selected;
                    }
                }
                goto fallback;
            }
        } else {
            if (counter >= 241U) {
                goto fallback;
            }
            if ((*(u16 *)(scratch + object[0x398] * 2 + 0x16) |
                 *(u16 *)(scratch + object[0x398] * 2 + 0x12)) &
                *(u16 *)(object + 0x3D6)) {
                result = (u8)func_8008BD20(object);
                *(u16 *)(object + 0x3C2) = result;
                if (result != 0) {
                    goto selected;
                }
            }
        }
        break;
    }
    return;
rejected:
    state = 0x82;
    goto changeState;
outsideRange:
    state = 0x95;
    goto changeState;
fallback:
    state = 0x94;
    goto changeState;
selected:
    state = 0x92;
changeState:
    object[0x396] = state;
    object[0x397] = 0;
}
