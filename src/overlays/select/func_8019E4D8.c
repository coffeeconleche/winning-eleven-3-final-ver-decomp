#include "common.h"

extern u8 D_801D8DF4, D_801D8DF5, D_801D8DF6, D_801D8DF7;
extern u8 D_801D8DF9, D_801D8DFA;
extern u8 D_8010A5A8, D_8010A5A9, D_80108667;
extern u8 D_800FF748[];
extern void func_801A3930(void);
extern void func_801A372C(u8 mode);
extern void func_800171DC(void);

void func_8019E4D8(void) {
    /* Retain the original saved table base and branch-result register. */
    register u8 *base asm("$16");
    register s32 value asm("$2");
    u32 second;
    u32 mode;

    func_801A3930();
    value = D_801D8DF5;
    second = D_801D8DF6;
    D_8010A5A9 = value;
    /* Keep this store before the flag load, while the second byte stays live. */
    __asm__ volatile ("" : : : "memory");
    value = D_801D8DF9;
    base = D_800FF748;
    D_8010A5A8 = second;
    /* Preserve the base setup before the flag branch. */
    __asm__ volatile ("" : : "r"(base), "r"(value));
    if (value) value = 0xC7;
    else value = 0x86;
    D_80108667 = value;
    /* Do not hoist later descriptor loads across the selected-byte store. */
    __asm__ volatile ("" : : : "memory");
    value = D_801D8DF7;
    second = D_801D8DFA;
    mode = D_801D8DF4;
    base[0x8F20] = value;
    base[0x8F21] = second;
    func_801A372C(mode);
    func_800171DC();
}
