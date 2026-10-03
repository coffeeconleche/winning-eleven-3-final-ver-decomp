#include "common.h"

extern u8 D_800FF748[], D_801D8A58[];
extern s32 func_8018E994(s16 *current, s32 target, s32 step);

s32 func_80199FDC(void) {
    u8 *base = D_800FF748;
    s32 complete = 1;
    s32 i = 0;
    s32 second = 0x5FA0;
    s32 first = 0x5E88;
    u8 *counter = D_801D8A58;

    for (; i < 7; second += 40, first += 40, i++, counter++) {
        if (*counter != 0) {
            (*counter)--;
            complete = 0;
        } else {
            complete &= func_8018E994((s16 *)(base + first + 16), 0, 32);
            complete &= func_8018E994((s16 *)(base + second + 16), 0, 32);
        }
    }
    return complete;
}
