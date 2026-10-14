#include "common.h"

extern s32 func_8002F6C8(u32);
extern void func_8004BAA4(u16);

/* Partial scratch/record and helper views; complete layouts and APIs unknown. */
u32 func_8002EB3C(u32 distance, u32 minimum)
{
    u8 *scratch = (u8 *)0x1F800000;
    /* Wrap the trial word before each signed ceiling comparison. */
    s32 trial = (s32)(minimum + 256U);

    for (; trial <= 0xFEFF; trial = (s32)((u32)trial + 512U)) {
        *(u16 *)(scratch + 0xF8) = 0;
        *(s16 *)(scratch + 0xFA) = -32;
        *(u16 *)(scratch + 0xFC) = 0;
        scratch[0xB1] = 0;
        scratch[0xB2] = 0;
        *(u32 *)(scratch + 0xB4) = (u32)trial;
        /* The stored word and subsequent pointer occupy original v1 in turn.
         * These real-value bindings retain that reuse and store/load order. */
        {
            register s32 velocity __asm__("$3") =
                (s32)(0U - 736U * (u32)func_8002F6C8(distance));
            *(s32 *)(scratch + 0xB8) = velocity;
        }
        {
            register u8 *record __asm__("$3") = *(u8 **)(scratch + 0x2F4);
            scratch[0xB0] = 4;
            *(u16 *)(record + 0x3CC) = 1;

            /* Signed F8 is compared as an unsigned word, even when negative. */
            while ((u32)(s16)*(u16 *)(scratch + 0xF8) < distance &&
                   *(u32 *)(scratch + 0xB4) > minimum) {
                func_8004BAA4(0);
                record = *(u8 **)(scratch + 0x2F4);
                ++*(u16 *)(record + 0x3CC);
            }
            if ((u32)(s16)*(u16 *)(scratch + 0xF8) >= distance &&
                *(u32 *)(scratch + 0xB4) >= minimum) {
                /* Signed division truncates toward zero before byte narrowing. */
                return (u8)(trial / 256);
            }
        }
    }
    return 255;
}
