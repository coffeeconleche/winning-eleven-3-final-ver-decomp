#include "common.h"

#define SCRATCH_RANDOM_STATE (*(s32 *)0x1F800290)

u16 func_8018E5B8(u16 range, s32 shift) {
    s32 value;
    s32 mask;

    value = SCRATCH_RANDOM_STATE;
    mask = range << 1;
    mask--;
    value <<= shift;
    value &= mask;
    if (value >= range) {
        value = mask - value;
    }
    return value;
}
