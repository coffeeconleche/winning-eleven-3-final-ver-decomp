#include "common.h"

extern u8 D_800FF748[];
extern u32 func_80049D58(void);

u32 func_80054BA4(u8 *actor, u32 candidate)
{
    u8 id = (u8)candidate;
    u32 idx;

    if (id == 0) {
        return 0;
    }

    if (actor[0x399] == 0) {
        if (id < 12U) {
            return id;
        }
    } else {
        if ((u8)(id - 12U) < 11U) {
            return id;
        }
    }

    idx = (func_80049D58() & 0xFF) % 24U;
    return D_800FF748[idx * 1000 + 0x38D];
}
