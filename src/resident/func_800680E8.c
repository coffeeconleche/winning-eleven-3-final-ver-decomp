#include "common.h"

extern u8 D_8010C1D8[];
extern void func_80068378(u8, u32);
extern void func_8006845C(u8);

/* Per-mode side-flag handler dispatching controller polls, then a common
 * two-record marker update. Partial record, scratch and roster views. */
void func_800680E8(void) {
    u8 *scratch = (u8 *)0x1F800000;
    u8 *roster = D_8010C1D8;
    s32 i;

    switch (*(u8 *)0x1F8002E2) {
    case 0:
    case 3:
        if (*(u16 *)(scratch + 0x234) & 2) {
            if (scratch[0x305] != 1) {
                func_80068378(0, 0);
            } else {
                func_8006845C(0);
            }
        }
        if (*(u16 *)(scratch + 0x234) & 1) {
            if (scratch[0x305] != 2) {
                func_80068378(0, 1);
            } else {
                func_8006845C(0);
            }
        }
        break;
    case 1:
        for (i = 0; i < 2; i++) {
            if (*(u16 *)(scratch + i * 8 + 0x234) & 2) {
                if (scratch[i + 0x305] != 1) {
                    func_80068378(i, 0);
                } else {
                    func_8006845C(i);
                }
            }
            if (*(u16 *)(scratch + i * 8 + 0x234) & 1) {
                if (scratch[i + 0x305] != 2) {
                    func_80068378(i, 1);
                } else {
                    func_8006845C(i);
                }
            }
        }
        break;
    case 2:
        if (*(u16 *)(scratch + 0x234) & 2 || *(u16 *)(scratch + 0x23C) & 2) {
            if (scratch[0x305] != 1) {
                func_80068378(0, 0);
            } else {
                func_8006845C(0);
            }
        }
        if (*(u16 *)(scratch + 0x234) & 1 || *(u16 *)(scratch + 0x23C) & 1) {
            if (scratch[0x305] != 2) {
                func_80068378(0, 1);
            } else {
                func_8006845C(0);
            }
        }
        break;
    case 4:
        break;
    }
    roster[0xD] = 0xFF;
    roster[0xE] = 0xFF;
    for (i = 0; i < 2; i++) {
        u8 *entry = scratch + i;

        if (entry[0x305] == 2) {
            roster[0xD + i] = entry[0x301];
        } else if (entry[0x305] == 1) {
            roster[0xD + i] = entry[0x303];
        }
    }
}
