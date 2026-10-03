#include "common.h"

extern u32 D_800FB568;
extern u32 D_800FB56C;
extern u32 D_800FB570;
extern u32 D_800FB574;
extern s32 func_800ACE48(u32);

s32 func_801924A0(void) {
    /* Each handle is read after the preceding call; the first nonzero wins. */
    if (func_800ACE48(D_800FB568) != 0) {
        return 1;
    }
    if (func_800ACE48(D_800FB56C) != 0) {
        return -1;
    }
    if (func_800ACE48(D_800FB570) != 0) {
        return -2;
    }
    return func_800ACE48(D_800FB574) != 0 ? -3 : 0;
}
