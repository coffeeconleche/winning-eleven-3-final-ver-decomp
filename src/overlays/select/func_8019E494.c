#include "common.h"

/* Classify the low byte into contiguous descriptor ranges. */
s32 func_8019E494(u8 value) {
    if (value < 8) return 1;
    if (value < 12) return 2;
    if (value < 20) return 3;
    if (value < 28) return 2;
    return 1;
}
