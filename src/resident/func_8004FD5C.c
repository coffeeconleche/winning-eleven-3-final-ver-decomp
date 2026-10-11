#include "common.h"

extern u8 D_800FF748[];
extern u8 D_800C7B7C[];
extern u16 D_8010A5A2;
extern u8 D_80105BEC;

/* Partial index/record access views, not recovered layouts or state domains.
 * The initial signed read and later unsigned reread have different roles. */
void func_8004FD5C(void)
{
    s32 state = *(s16 *)&D_8010A5A2;
    u8 *base = D_800FF748;
    s32 index;
    u8 *entry;

    D_80105BEC = 0;
    if (state < 62) {
        for (index = 0; index < 9; index++) {
            entry = base + 0x5DC0 + D_800C7B7C[index] * 40;
            if (index < 2) {
                *(u16 *)(entry + 0x12) -= 2;
            } else {
                *(u16 *)(entry + 0x12) += 2;
            }
        }
        D_8010A5A2 += 2;
    } else {
        for (index = 0; index < 9; index++) {
            entry = base + 0x5DC0 + D_800C7B7C[index] * 40;
            entry[4] = 0;
        }
    }
}
