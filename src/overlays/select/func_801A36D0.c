#include "common.h"

/* Classify the low-byte slot index by its contiguous range. */
s32 func_801A36D0(u8 slot) {
    if (slot < 22) return 0;
    if (slot < 27) return 1;
    if (slot < 30) return 2;
    if (slot < 35) return 3;
    if (slot < 39) return 4;
    if (slot < 40) return 5;
    return 6;
}
