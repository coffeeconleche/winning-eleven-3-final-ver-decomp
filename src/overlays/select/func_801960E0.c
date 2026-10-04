#include "common.h"

extern u8 D_800FF748[], D_800F1018[];
extern u8 D_801D8B18, D_801D7F80;
extern s16 D_801D7F7E;
extern void func_800B39D8(void *, void *, u16);

/* Measured access views only: the original descriptor and field meanings are
 * unknown. Unsupported mode bytes retain uninitialized kind/amplitude, as the
 * original has no defined fallback for those values. */
void func_801960E0(void) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s32 kind, amplitude;
    u16 first, second;
    u16 finalValue;

    if (!D_801D8B18) {
        D_801D7F7E = 0;
        D_801D7F80 = 0;
        return;
    }
    D_801D7F7E++;
    if (D_801D7F7E >= 129) {
        D_801D7F7E = 0;
        D_801D7F80++;
        if (D_801D7F80 >= 5) {
            D_801D7F80 = 0;
        }
    }
    switch (D_801D7F80) {
    case 0: kind = 0; amplitude = D_801D7F7E * 32; break;
    case 1: amplitude = 0x1000; kind = 0; break;
    case 2: kind = 0; amplitude = 0x1000 - D_801D7F7E * 32; break;
    case 3: kind = 1; amplitude = D_801D7F7E * 32; break;
    case 4: kind = 1; amplitude = 0x1000 - D_801D7F7E * 32; break;
    }
    *(u32 *)(scratch + 0x15C) = kind == 1 ? 0x40800000 : 0x40000000;
    finalValue = 0x1000;
    *(u16 *)(scratch + 0x160) = 112;
    *(u16 *)(scratch + 0x162) = 90;
    *(u16 *)(scratch + 0x164) = 128;
    *(u16 *)(scratch + 0x166) = 16;
    scratch[0x16B] = 112;
    *(u16 *)(scratch + 0x168) = 27;
    scratch[0x16A] = 0;
    scratch[0x170] = 128;
    scratch[0x171] = 128;
    scratch[0x172] = 128;
    first = *(u16 *)(base + 0x817A);
    second = *(u16 *)(base + 0x8178);
    *(u16 *)(scratch + 0x174) = 64;
    *(u16 *)(scratch + 0x176) = 0;
    *(u16 *)(scratch + 0x178) = amplitude;
    *(u16 *)(scratch + 0x16C) = first;
    *(u16 *)(scratch + 0x16E) = second;
    if ((s16)amplitude != 0x1000) {
        finalValue = 0xFFF;
    }
    *(u16 *)(scratch + 0x17A) = finalValue;
    *(u32 *)(scratch + 0x17C) = 0;
    func_800B39D8(scratch + 0x15C, D_800F1018 + scratch[0x29D] * 20, 0);
}
