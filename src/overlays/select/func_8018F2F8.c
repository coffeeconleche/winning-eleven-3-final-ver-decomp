#include "common.h"

#define SCRATCH_SELECTION_INDEX ((u8 *)0x1F8002DD)

extern u8 D_801D1ACC[];

u8 func_8018F2F8(u8 index) {
    return D_801D1ACC[SCRATCH_SELECTION_INDEX[index]] - 1;
}
