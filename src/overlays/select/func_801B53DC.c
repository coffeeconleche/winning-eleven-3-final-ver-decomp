#include "common.h"

/* Measured signed halfword values and byte fields; original descriptor type unknown. */
extern s16 D_801D87E8, D_801D87EA, D_801D87EC, D_801D87EE, D_801D87F0, D_801D87F2;
extern u8 D_801D87F4, D_801D87F5, D_801D87F6, D_801D87F7, D_801D87F8, D_801D87F9;
extern u8 D_801D87FA, D_801D87FB, D_801D87FC;
extern void func_80196E1C(u32, void *, u32);

void func_801B53DC(void) {
    s16 *fields = &D_801D87E8;
    *fields = -192;
    D_801D87EA = -120;
    D_801D87EC = 192;
    D_801D87EE = -120;
    D_801D87F0 = 192;
    D_801D87F2 = 120;
    D_801D87F4 = 80;
    D_801D87F5 = 20;
    D_801D87F6 = 252;
    D_801D87F7 = 0;
    D_801D87F8 = 0;
    D_801D87F9 = 0;
    D_801D87FA = 80;
    D_801D87FB = 20;
    D_801D87FC = 252;
    func_80196E1C(0, fields, 6);
    *fields = -192;
    D_801D87EA = -120;
    D_801D87EC = 192;
    D_801D87EE = 120;
    D_801D87F0 = -192;
    D_801D87F2 = 120;
    D_801D87F4 = 80;
    D_801D87F5 = 20;
    D_801D87F6 = 252;
    D_801D87F7 = 80;
    D_801D87F8 = 20;
    D_801D87F9 = 252;
    D_801D87FA = 0;
    D_801D87FB = 0;
    D_801D87FC = 0;
    func_80196E1C(0, fields, 6);
}
