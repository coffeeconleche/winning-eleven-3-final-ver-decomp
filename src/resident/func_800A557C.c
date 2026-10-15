#include "types.h"
extern u8 D_800FF748[];
extern u8 D_8010C1D8[];
extern u8 D_8010C1E2, D_8010C1E3;
extern s32 func_80067F78(u32, u32);

/* Partial views of existing byte state and aligned record halfwords. Native
 * allocation/layout and helper declarations remain provisional. */
void func_800A557C(void)
{
    u8 *state = D_8010C1D8;
    u8 *records = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *record;
    u8 *mark;
    s32 count;
    s32 sign;
    u8 identifier;
    u32 selected;
    s16 x, z;
    s32 one;

    if (*(u8 *)0x1F8002E1 != 5) {
        record = records + 1000;
        count = 0;
        one = 1;
        mark = records + 0x7C9;
        D_8010C1E2 = 0;
        D_8010C1E3 = 0;
        do {
            if (func_80067F78(scratch[0x2AD], mark[-0x54]) != 0 && record[0] != 0) {
                /* The helper may change the record or scratch: reread ID. */
                identifier = mark[-0x54];
                if (identifier != one && identifier != 12) {
                    if (mark[-0x50] < 14U) {
                        sign = 1;
                        if (*(s16 *)(mark - 0x3DB) < 0) sign = -1;
                        if (*(s16 *)(*(u8 **)(scratch + 0x2F4) + 6) < 0) {
                            if (sign != -1) goto secondary;
                        } else if (sign != one) {
                            goto secondary;
                        }
                        if (state[10] == 0) {
                            identifier = mark[-0x54];
                            mark[0] = 0;
                            state[10] = identifier;
                        } else goto secondary;
                    } else {
secondary:
                        if (state[11] == 0) {
                            state[11] = mark[-0x54];
                            mark[0] = 0;
                        }
                    }
                }
            }
            count++;
            mark += 1000;
            record += 1000;
        } while ((u8)count < 22U);
        selected = state[10];
        x = 0x2AE2;
        if (selected != 0) {
            record = records + (u8)(selected % 24U) * 1000;
            if (*(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) < 0) x = -0x2AE2;
            *(s16 *)(record + 2) = x;
            /* Reload associated pointer after the possibly aliasing store. */
            z = 0x13F4;
            if (*(s16 *)(*(u8 **)(scratch + 0x2F4) + 6) < 0) z = -0x13F4;
            *(s16 *)(record + 6) = z;
        }
        selected = state[11];
        x = 0x32C0;
        if (selected != 0) {
            record = records + (u8)(selected % 24U) * 1000;
            if (*(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) < 0) x = -0x32C0;
            *(s16 *)(record + 2) = x;
            z = 0x392;
            if (*(s16 *)(*(u8 **)(scratch + 0x2F4) + 6) < 0) z = -0x392;
            *(s16 *)(record + 6) = z;
        }
    }
}
