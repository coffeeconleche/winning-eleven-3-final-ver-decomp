#include "common.h"

extern u8 D_800FF748[];
extern s16 D_801DA5D2;
extern u8 *D_801D1DC8[];
extern s32 func_801C1C5C(s32, s32);
/* Preserve the word arguments before the descriptor callee narrows fields. */
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32);

void func_801C2A3C(void) {
    u8 *base = D_800FF748;
    s32 i = 0;
    s16 *offset = &D_801DA5D2;

    do {
        if (func_801C1C5C(i, *offset) != 0) {
            u32 mapped, value;
            u8 *record;

            /* Repeat the call and signed-halfword read, including the third
             * read below; preceding calls may change the shared offset. */
            if (func_801C1C5C(i, *offset) == 3) {
                break;
            }
            record = base + (*offset + i);
            mapped = record[0xAB80];
            record = base;
            record += mapped * 36;
            value = record[0x8F25];
            func_801942E0(i + 4, D_801D1DC8[value], -124, i * 30 - 18,
                         109, 3, 0, 0, 0, 2, 2, 1);
        }
        i++;
    } while (i < 4);
}
