#include "common.h"

extern u8 D_801D1B28[];
extern u8 D_801DA5D8[];
extern void *D_801D1B6C[];
extern s16 D_801D7D56;
extern u8 D_801D1B11;
extern void func_800AD648(const void *, void *, u32);

void func_80192428(void) {
    /* This copy entry takes the source first and the destination second. */
    func_800AD648(D_801D1B28, D_801DA5D8, 0x40);
    func_800AD648(D_801D1B6C[D_801D7D56], D_801DA5D8 + 0x34, 0xC);

    /* Reread the low byte after the second call, not the earlier signed index. */
    D_801D1B11 = *(u8 *)&D_801D7D56 + 0x30;
}
