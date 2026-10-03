#include "common.h"

extern u32 D_800FB568, D_800FB56C, D_800FB570, D_800FB574;
extern s32 func_800ACE48(u32);
extern s32 func_800C5948(u32);

s32 func_80192720(u32 channel) {
    s32 result;

    /* The first nonzero check wins; reread each handle after the preceding call. */
    if (func_800ACE48(D_800FB568) != 0) {
        result = 1;
    } else if (func_800ACE48(D_800FB56C) != 0) {
        result = -1;
    } else if (func_800ACE48(D_800FB570) != 0) {
        result = -2;
    } else {
        result = func_800ACE48(D_800FB574) != 0 ? -3 : 0;
    }

    switch (result) {
    case 1:
        func_800ACE48(D_800FB568);
        func_800ACE48(D_800FB56C);
        func_800ACE48(D_800FB570);
        func_800ACE48(D_800FB574);
        /* Preserve the indefinite wait and original 32-bit shift. */
        while (func_800C5948(channel << 4) == 0) {
        }
        return 1;
    case -1:
        return -1;
    case -2:
        return -2;
    case -3:
        return -3;
    case 0:
    default:
        return 0;
    }
}
