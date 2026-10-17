#include "common.h"

extern void func_8006EC5C(u8 *);
extern s32 func_8001E6B8(s32);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B7CC(u32, u32, u32);
extern s32 func_8009462C(u8 *, s32, u32, s32, s32);
extern s32 abs(s32);

/* Partial views of existing PS1 object/scratch storage. Coordinates use signed
 * halfword reads for differences and unsigned halfword reads for updates.
 * Preserve the interleaved halfword/word accesses in damping: alias-driven
 * word rereads and signed arithmetic are part of the observed implementation.
 * Native adaptation must supply aligned writable storage and 32-bit pointers. */
void func_80093C68(u8 *object)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 quotient;
    s32 difference;
    s32 direction;
    s32 frame;
    u8 current;
    u8 phase;

    switch (object[0x397]) {
    case 0: {
        u8 heading;

        quotient = object[0x3B9] / 10U;
        if (*(s16 *)(scratch + 0x31C) < 21 - quotient) {
            func_8006EC5C(object);
            return;
        }
        *(s32 *)(object + 8) =
            (*(s16 *)(object + 0x3C2) - *(s16 *)(object + 2)) /
            (func_8001E6B8(11) + 10);
        *(s32 *)(object + 0x10) =
            (*(s16 *)(object + 0x3C6) - *(s16 *)(object + 6)) /
            (func_8001E6B8(11) + 10);
        func_8005BA30(object, 0x75, 0);
        object[0x3D1] = 0;
        object[0x3AB] = (*(u8 **)(scratch + 0x2F4))[0x3A4] + 0x80;
        heading = func_8005B7CC(object[0x3AB], object[0x3AA], 12);
        difference = 0x1C0 - (heading & 0xFF);
        object[0x3AA] = heading;
        *(u16 *)(object + 0x26) = (difference % 256) * 16;
        *(u16 *)(object + 4) = 0;
        *(u16 *)(object + 2) += *(s32 *)(object + 8);
        *(u16 *)(object + 6) += *(s32 *)(object + 0x10);
        object[0x397]++;
        break;
    }
    case 1:
        func_8005BD1C(object);
        frame = object[0x390];
        if (frame == 0) goto damping;
        if (frame < 12) goto moving;
        if (frame == 0x1C) goto changePhase;
        goto damping;

    moving: {
        u8 heading = func_8005B7CC(object[0x3AB], object[0x3AA], 12);

        difference = 0x1C0 - (heading & 0xFF);
        object[0x3AA] = heading;
        *(u16 *)(object + 0x26) = (difference % 256) * 16;
        *(u16 *)(object + 2) += *(s32 *)(object + 8);
        *(u16 *)(object + 6) += *(s32 *)(object + 0x10);
        break;
    }
    damping:
        *(u16 *)(object + 2) += *(s32 *)(object + 8);
        *(s32 *)(object + 8) = *(s32 *)(object + 8) * 92 / 100;
        *(u16 *)(object + 6) += *(s32 *)(object + 0x10);
        *(s32 *)(object + 0x10) = *(s32 *)(object + 0x10) * 92 / 100;
        break;

    changePhase:
        func_8005BA30(object, 0x2C, 0x1A);
        current = object[0x3AA];
        if (object[0x3AC] == 0) {
            phase = current + 0x40;
        } else {
            phase = current - 0x40;
        }
        object[0x3AA] = phase;
        difference = 0x1C0 - (phase & 0xFF);
        *(u16 *)(object + 0x26) = (difference % 256) * 16;
        object[0x3AD] = 0;
        object[0x397]++;
        break;

    case 2:
        func_8005BD1C(object);
        if (object[0x390] == 0x2E) {
            func_8005BA30(object, 1, 0);
            object[0x396] = 0x82;
            object[0x397] = 0;
        }
        break;
    }

    {
        /* Measured capture treatment only: the empty input constraint retains
         * the pointed byte in v0 at this capture. It emits no instructions
         * and changes no values or memory. */
        register u32 endCurrent __asm__("$2") =
            (*(u8 **)(scratch + 0x2F4))[0x3A4];
        u32 turn = object[0x3AC];

        __asm__("" : : "r"(endCurrent));
        direction = endCurrent - 0x60;
        if (turn == 0) {
            direction = endCurrent + 0x60;
        }
        /* Keep the observed second pointer-word read. This zero-instruction
         * address identity does not claim hardware volatility or non-aliasing. */
        __asm__("" : "=r"(scratch) : "0"(scratch));
        func_8009462C(object, 12, direction & 0xFF, 0,
            abs(*(s32 *)(*(u8 **)(scratch + 0x2F4) + 0xC) / 736) + 2);
    }
}
