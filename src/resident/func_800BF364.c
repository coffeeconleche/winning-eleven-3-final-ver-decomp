#include "types.h"

extern s32 func_800BEC88(s32, s16, s16, u16, u16, u16);

/* The caller explicitly supplies six words; slot four is ignored here. */
s32 func_800BF364(s16 first, s16 second, u16 third, u16 unused,
                  u32 left_word, u32 right_word)
{
    u16 left;
    u16 right;
    u32 volume;
    u16 pan;

    left = left_word;
    right = right_word;

    if (left == right) {
        pan = 64;
        volume = left_word;
    } else if (left > right) {
        pan = ((s32)right * 64) / left;
        volume = left_word;
    } else {
        pan = 127 - ((s32)left * 64) / right;
        volume = right_word;
    }
    return func_800BEC88(0x21, first, second, third, volume, pan);
}
