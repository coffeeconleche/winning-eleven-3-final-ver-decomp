#include "common.h"

extern u8 D_800FF748[];
extern u8 D_800E7620[][22];
extern u8 D_800F0420[][22];
extern u8 D_800E78A8[][22];
extern u8 D_800EF788[];
extern u8 D_800EF789[];
extern u8 D_800EF78A[];
extern u8 D_800EF78B[];
extern u8 D_800C6AF0[];
extern u8 D_800C6AF1[];

extern s32 func_8001E6B8(s32);

void func_8002247C(void)
{
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 mode = scratch[0x2E2];
    s32 side;
    s32 slot;
    s32 count;

    for (side = 0; side < 2; side++) {
        u8 teamId = scratch[0x2DD + side];

        for (slot = 0; slot < 22; slot++) {
            u8 mappedSlot = (u8)slot;
            if (mode == 0 || mode == 1) {
                mappedSlot = base[teamId * 22 + 0x8AEA + slot];
            }

            D_800E7620[side][slot] = mappedSlot;
            base[side * 22 + 0x8E9C + slot] = mappedSlot;

            {
                s32 idx4 = (side * 22 + slot) * 4;
                D_800EF788[idx4] = D_800F0420[side][slot];
                D_800EF789[idx4] = D_800E78A8[side][slot];

                if (scratch[0x298] == 4) {
                    u8 cond = (u8)func_8001E6B8(5);
                    if (cond < 5 && func_8001E6B8(3) != 0) {
                        cond = 2;
                    }
                    D_800EF78A[idx4] = cond;
                }
                D_800EF78B[idx4] = 0;
            }
        }

        scratch[0x2FD + side] = D_800C6AF0[teamId * 2] >> 2;
        base[0xABDC + side]   = D_800C6AF0[teamId * 2] & 3;
        scratch[0x301 + side] = D_800C6AF1[teamId * 2] >> 4;
        scratch[0x303 + side] = D_800C6AF1[teamId * 2] & 0xF;
    }

    count = (mode == 0) ? 1 : ((mode == 1) ? 2 : 0);
    for (side = 0; side < count; side++) {
        u8 teamId = scratch[0x2DD + side];
        scratch[0x2FD + side] = base[0x89BD + teamId] >> 2;
        base[0xABDC + side]   = base[0x89BD + teamId] & 3;
        scratch[0x301 + side] = base[0x89E8 + teamId] >> 4;
        scratch[0x303 + side] = base[0x89E8 + teamId] & 0xF;
    }
}
