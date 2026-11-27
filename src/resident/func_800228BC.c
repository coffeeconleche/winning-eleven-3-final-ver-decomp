#include "common.h"

u32 func_800228BC(u8 *actor)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 id = actor[0x38D];
    s32 tick = *(s32 *)(scratch + 0x290);
    u8 side = actor[0x399];

    if (id == 1 || id == 12) {
        return 0;
    }

    if (actor[0x39A] == 1 || scratch[0x2FC] != 0 || scratch[0x29A] != 1) {
        if (id == scratch[0x31E + side * 2] || id == scratch[0x31F + side * 2]) {
            return 4;
        }
        return ((u8)(id % 22U) == (tick % 22)) ? 4U : 5U;
    }

    if (id == scratch[0x240]) {
        return 1;
    }
    if (id == scratch[0x241]) {
        return (scratch[0x2E2] == 3) ? 3U : 2U;
    }
    if ((u8)(id % 22U) == (tick % 22)) {
        return 4;
    }
    if (id == scratch[0x31F + side * 2]) {
        return 4;
    }
    return 5;
}
