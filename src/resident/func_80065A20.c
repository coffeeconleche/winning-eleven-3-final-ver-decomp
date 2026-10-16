#include "common.h"

extern u8 D_8010C1D8[];
extern u8 D_800C84F0[];
extern s32 func_8001E6B8(s32);

/* Partial PS1 record/state views. Preserve every full-byte selector and the
 * signed random-remainder zero test. Halfword magnitude is computed in s32,
 * so -32768 becomes +32768 without narrowing. Complete native backing and
 * historical helper/record meanings remain provisional. */
u32 func_80065A20(u8 *record)
{
    s32 side = record[0x399];
    u8 *state;
    u8 *scratch;
    s32 previous;
    s32 position;
    s32 bound;
    s32 random;
    u8 kind;

    __asm__("" : "=r"(side) : "0"(side));
    state = D_8010C1D8;
    scratch = (u8 *)0x1F800000;
    if ((side == 0 && *(s16 *)(*(u8 **)0x1F8002F4 + 2) < 0) ||
        (side == 1 && *(s16 *)(*(u8 **)0x1F8002F4 + 2) > 0)) {
        previous = state[0x2D];
        if (previous >= 3) goto farRandom;
        if (previous == 0) goto farRandom;
        return previous;
farRandom:
        kind = D_800C84F0[(*(u8 *)((u32)scratch + record[0x398] + 0x2DD) / 10U) & 0xFF];
        switch (kind) {
        case 0: bound = 6; break;
        case 10: bound = 2; break;
        case 20: bound = 4; break;
        default: bound = 2; break;
        }
        random = func_8001E6B8(bound);
        if (random != 0) return 2;
        return 1;
    }
    {
        register s32 initialPosition __asm__("$2") = *(s16 *)(record + 2);
        position = initialPosition;
        if (initialPosition < 0) position = -position;
    }
    if (position < 0x1990) {
        previous = state[0x2D];
        if (previous >= 5) goto nearRandom;
        if (previous < 3) goto nearRandom;
        return previous;
nearRandom:
        kind = D_800C84F0[(*(u8 *)((u32)scratch + record[0x398] + 0x2DD) / 10U) & 0xFF];
        switch (kind) {
        case 0: bound = 4; break;
        case 10: bound = 2; break;
        case 20: bound = 3; break;
        default: bound = 2; break;
        }
        random = func_8001E6B8(bound);
        if (random != 0) return 3;
        return 4;
    }
    if (position >= 0x21E2) return 5;
    previous = state[0x2D];
    if (previous >= 7) goto middleRandom;
    if (previous < 5) goto middleRandom;
    return previous;
middleRandom:
    kind = D_800C84F0[(*(u8 *)((u32)scratch + record[0x398] + 0x2DD) / 10U) & 0xFF];
    switch (kind) {
    case 0: bound = 4; break;
    case 10: bound = 2; break;
    case 20: bound = 3; break;
    default: bound = 2; break;
    }
    {
        s32 lastRandom = func_8001E6B8(bound);
        register u32 lastResult __asm__("$2") = 5;
        if (lastRandom != 0) lastResult = 6;
        return lastResult;
    }
}
