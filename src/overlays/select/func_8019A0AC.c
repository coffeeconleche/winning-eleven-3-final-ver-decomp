#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8018E994(s16 *current, s32 target, s32 step);

s32 func_8019A0AC(void) {
    u8 *base = D_800FF748;
    s32 complete = 1;
    s32 i = 0;
    s32 second = 0x5FA0;
    s32 first = 0x5E88;

    for (; i < 7; second += 40, i++, first += 40) {
        complete &= func_8018E994((s16 *)(base + first + 16),
                                 (i & 1) ? 512 : -512, 32);
        complete &= func_8018E994((s16 *)(base + second + 16),
                                 (i & 1) ? 512 : -512, 32);
    }
    return complete;
}
