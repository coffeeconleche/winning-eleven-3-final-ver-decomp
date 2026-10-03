#include "common.h"

extern u8 D_801D8DF4, D_801D8DF5, D_801D8DF6, D_801D8DF7;
extern u8 D_801D8DF8, D_801D8DF9, D_801D8DFA;
extern u8 D_8010A5A8, D_8010A5A9;
extern u8 D_80108667, D_80108668, D_80108669;
extern void func_801A3930(void);
extern void func_801A372C(u8 mode);
extern void func_800171DC(void);

void func_8019E580(void) {
    u32 first, second, mode, last, high, low, packed;

    func_801A3930();
    first = D_801D8DF5;
    second = D_801D8DF6;
    mode = D_801D8DF4;
    last = D_801D8DFA;
    D_8010A5A9 = first;
    high = D_801D8DF8;
    D_8010A5A8 = second;
    low = D_801D8DF9;
    D_80108669 = last;
    packed = mode | ((high << 6) | (low << 5));
    /* Finish both ORs before reusing their temporary for the final byte load. */
    __asm__ volatile ("" : : "r"(packed) : "memory");
    second = D_801D8DF7;
    D_80108667 = packed;
    D_80108668 = second;
    func_801A372C(mode);
    func_800171DC();
}
