#include "common.h"

extern s16 D_801D88D8, D_801D88DA, D_801D88DC, D_801D88DE;
extern u8 D_801D88E0, D_801D88E1, D_801D88E2, D_801D88E3;
extern u8 D_801D88E4, D_801D88E5, D_801D88E6, D_801D88E7;
extern u8 D_801D88E8, D_801D88E9, D_801D88EA, D_801D88EB;
extern void func_80196A60(u32, void *, u32);

void func_801BAFBC(void) {
    s16 *record = &D_801D88D8;
    *record = -192;
    D_801D88DA = -120;
    D_801D88DC = 384;
    D_801D88DE = 120;
    D_801D88E0 = 16;
    D_801D88E1 = 0;
    D_801D88E2 = 128;
    D_801D88E3 = 16;
    D_801D88E4 = 0;
    D_801D88E5 = 128;
    D_801D88E6 = 0;
    D_801D88E7 = 0;
    D_801D88E8 = 0;
    D_801D88E9 = 0;
    D_801D88EA = 0;
    D_801D88EB = 0;
    func_80196A60(0, record, 6);

    *record = -192;
    D_801D88DA = 1;
    D_801D88DC = 384;
    D_801D88DE = 120;
    D_801D88E0 = 0;
    D_801D88E1 = 0;
    D_801D88E2 = 0;
    D_801D88E3 = 0;
    D_801D88E4 = 0;
    D_801D88E5 = 0;
    D_801D88E6 = 16;
    D_801D88E7 = 0;
    D_801D88E8 = 128;
    D_801D88E9 = 16;
    D_801D88EA = 0;
    D_801D88EB = 128;
    func_80196A60(0, record, 6);
}
