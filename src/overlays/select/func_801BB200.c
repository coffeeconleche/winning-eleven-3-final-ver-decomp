#include "common.h"

extern u8 D_8010A322, D_800FF748[], D_8010866A, D_8010866B;
extern u8 D_8010A2F0, D_8010865D, D_801DA2F0, D_801D8DFC, D_801D8DFB;
extern u8 D_801DA2F8, D_8010A2E9, D_8010A2E8;
extern u16 D_800AD638, D_801DA5D4, D_801DA5D6, D_801DA5D0, D_801DA5D2;
extern u8 D_801DA06B, D_801DA069, D_801DA06A, D_801DA068;
extern u32 D_801DA060;
extern s32 func_8006F0DC(u8, u8);
extern void func_800171DC(void);

void func_801BB200(void) {
    s32 mode = D_8010A322;
    u8 *base = D_800FF748;
    switch (mode) {
    case 0: {
        s32 i = 0;
        /* Preserve the original loop-invariant offset register and address form. */
        register u32 mapOffset __asm__("$6") = 0xAB80;
        D_8010866A = 0;
        D_8010866B = 1;
        D_8010A2F0 = 0;
        D_8010865D = 0;
        D_801DA2F0 = 0;
        D_801D8DFC = 1;
        D_801D8DFB = 0;
        D_800AD638 = 0;
        D_801DA2F8 = 0;
        D_8010A2E9 = 0;
        D_8010A2E8 = 0;
        /* A miss leaves the prior selection byte unchanged. */
        do {
            u8 *record = base + i;
            u32 mapped = record[mapOffset];
            record = base + mapped * 36;
            if (!(record[0x8F24] & 192)) {
                base[0x8F21] = i;
                break;
            }
            i++;
        } while (i < 16);
        D_801DA5D4 = 12;
        D_801DA5D6 = 16;
        D_801DA06B = 0;
        D_801DA069 = 0;
        D_801DA06A = 0;
        D_801DA068 = 0;
        D_801DA5D0 = 0;
        D_801DA5D2 = 0;
        D_801DA060 = 0;
        base[0xABDA] = 10;
        break;
    }
    case 10:
        if (func_8006F0DC(16, 0)) {
            func_800171DC();
            D_8010A322 = 0;
        }
        break;
    }
}
