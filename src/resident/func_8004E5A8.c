#include "common.h"

/* Existing pointer storage, not a definition or complete object layout. */
extern u8 *scratch2F4 __asm__("0x1F8002F4");
extern s32 func_8005C7A0(s16);

/* Full-word direction and partial record/helper views remain provisional. */
s32 func_8004E5A8(u32 direction)
{
    u8 *record = scratch2F4;
    /* Retain the observed v1 dividend capture, refreshed after the callback. */
    register s32 value __asm__("$3") = *(s32 *)(record + 0xC);
    u32 speed = *(u32 *)(record + 0x3A0);
    s32 level = (s32)((u32)(value / 1472) + (speed >> 12));
    s32 random;

    if (level < 0) {
        level = -level;
    }
    random = func_8005C7A0((s16)level);
    {
        /* The helper can change both the pointer and the pointed word. */
        u8 *current = scratch2F4;
        s32 result;
        s32 phase;
        s32 difference;
        s32 reverse;

        /* Word negation preserves INT_MIN wrap before signed division. */
        value = (s32)(0U - *(u32 *)(current + 0xC));
        result = (s32)((u32)(value / 736) + (u32)(s32)(s16)random);
        if (result <= -16) {
            result = -16;
        }
        phase = current[0x3A4];
        difference = (u8)(direction - phase);
        if ((u32)difference > 128 ?
            (reverse = (u8)(phase - direction)) <= 48 : difference <= 48) {
            if (result >= 8) {
                result = 8;
            }
        } else if (result >= 16) {
            result = 16;
        }
        return result;
    }
}
