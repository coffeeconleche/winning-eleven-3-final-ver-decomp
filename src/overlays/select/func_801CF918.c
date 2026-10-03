#include "common.h"

extern u8 D_8010865C;
extern u8 D_801D59E8[];
extern void *D_801D1AFC;
extern u32 D_801DADCC;
extern s32 func_801930F4(u8, s32, s32, const u8 *, void *, u32);

s32 func_801CF918(void) {
    return func_801930F4(D_8010865C, 0, 0, D_801D59E8,
                        D_801D1AFC, D_801DADCC);
}
