#include "common.h"

extern u16 D_800C8544[];
extern u16 D_8010CD44[];
extern u16 D_800F10A0[];

/* Partial halfword views; channel limits and historical API are unknown. */
u32 func_8006EE60(u32 channel)
{
    u32 index = 0;
    u16 *scratch;
    u16 *timer;
    u16 *repeats;
    u16 *masks;

    {
        u8 *base = (u8 *)0x1F800000;
        u32 slot = (u8)channel;

        scratch = (u16 *)((s32)(slot * 8) + (s32)base);
        masks = D_800C8544;
        {
            u16 *timerBase = D_8010CD44;
            timer = (u16 *)((s32)(slot * 2) + (s32)timerBase);
        }
        repeats = D_800F10A0 + slot;
    }

    do {
        u32 narrowIndex = (u8)index;
        u16 *entry;

        /* Separate real offset and scratch-load lifetimes retain register $2. */
        {
            register u32 offset __asm__("$2") = narrowIndex * 2;
            entry = (u16 *)((s32)offset + (s32)masks);
        }
        {
            register u32 bits __asm__("$2") = scratch[0x234 / 2];
            u32 mask = *entry;
            u16 narrowed;

            bits = mask & bits;
            /* Preserve the full mask until the masked scratch bits are captured. */
            __asm__("" : "=r"(mask) : "0"(mask), "r"(bits));
            narrowed = mask;

            if (bits == narrowed) {
                return narrowed;
            }
            bits = scratch[0x232 / 2];
            bits = mask & bits;
            if (bits == narrowed &&
                (narrowIndex < 8 || (u8)(index - 12) < 2)) {
                u32 count = *timer;

                if (count >= 16) {
                    *timer = 0;
                    *repeats += 1;
                    /* Preserve the selected-mask reload after both state writes. */
                    return *entry;
                }
                if (*repeats < 2) {
                    *timer = count + 1;
                } else {
                    *timer = count + 3;
                }
                return 0;
            }
        }
        index += 1;
    } while ((u8)index < 18);
    D_8010CD44[(u8)channel] = 0;
    D_800F10A0[(u8)channel] = 0;
    return 0;
}
