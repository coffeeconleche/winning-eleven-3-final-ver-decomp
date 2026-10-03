#include "common.h"

extern u8 *D_801D1AF8;
extern u8 D_801D7D60[];
extern u8 D_801D7D68[];
extern u8 D_801D7D70[];
extern u8 D_801D7D78[];
extern u8 D_801D7D80[];
extern u8 D_801D7D88[];
extern u8 D_801D7D90[];
extern u8 D_801D7D98[];
extern void func_800AD648(void *, void *, u32);

void func_80192334(u32 offset) {
    u8 *base = D_801D1AF8;

    /* Capture the base once; retain eight calls with distinct second pointers. */
    func_800AD648(base + 0x100, D_801D7D60 + offset, 1);
    func_800AD648(base + 0x101, D_801D7D68 + offset, 1);
    func_800AD648(base + 0x102, D_801D7D70 + offset, 1);
    func_800AD648(base + 0x103, D_801D7D78 + offset, 1);
    func_800AD648(base + 0x104, D_801D7D80 + offset, 1);
    func_800AD648(base + 0x105, D_801D7D88 + offset, 1);
    func_800AD648(base + 0x106, D_801D7D90 + offset, 1);
    func_800AD648(base + 0x107, D_801D7D98 + offset, 1);
}
