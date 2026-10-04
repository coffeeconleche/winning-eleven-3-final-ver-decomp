#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801DA330, D_801D8B15;
extern u8 D_80131603[], D_80131604[], D_80131606[];
extern u8 D_80131608[], D_80131609[], D_8013160A[];
extern u8 D_801DADC0, D_801DADC1, D_801DADC2, D_801DADC3;
extern u8 D_801DADC4, D_801DADC5, D_801DADC6;

/* Seven byte outputs from mapped 12-byte records. The mapping is reread
 * after every store: the original record meaning and aliasing are unknown. */
void func_801C96DC(void) {
    u8 *mapping = D_800FF748;
    s32 offset = D_801DA330 * 22;
    mapping += offset;
    mapping += 0x8AEA;
    mapping += D_801D8B15;
    D_801DADC0 = (u32)D_80131603[(offset + *mapping) * 12] / 10U;
    D_801DADC1 = (u32)D_80131604[(offset + *mapping) * 12] % 10U;
    D_801DADC2 = (u32)D_80131606[(offset + *mapping) * 12] / 10U;
    D_801DADC3 = (u32)D_80131608[(offset + *mapping) * 12] / 10U;
    D_801DADC4 = (u32)D_80131609[(offset + *mapping) * 12] % 10U;
    D_801DADC5 = (u32)D_80131609[(offset + *mapping) * 12] / 10U;
    offset += *mapping;
    D_801DADC6 = (u32)D_8013160A[offset * 12] % 10U;
}
