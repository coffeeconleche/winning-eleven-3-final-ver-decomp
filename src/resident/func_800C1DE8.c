#include "common.h"

/* Existing raw-register pointer; full hardware/API contracts are provisional. */
extern u32 *D_800D55A0;

void func_800C1DE8(void) {
    *D_800D55A0 = (*D_800D55A0 & 0xF0FFFFFF) | 0x22000000;
}
