#include "common.h"

extern u8 D_80108667, D_80108668, D_80108669, D_8010866A, D_8010866B;
extern u8 D_8010A2F0, D_8010A5A9, D_8010A5A8, D_801D8DFB, D_801D8DFC;
extern u8 D_8010A322, D_801D8A8F;
extern u16 D_801D8A82, D_801D8A84, D_801D8A86, D_801D8A88;
extern u8 D_8010866C[], D_80108AEC[], D_8010A118[], D_8010A298[], D_8010A2C8[];
extern void func_800AD658(void *buffer, s32 size);
extern void func_800171DC(void);

void func_8019A700(void) {
    u8 frameSlot[32];

    D_80108667 = 0;
    D_80108668 = 0;
    D_80108669 = 0;
    D_8010866A = 0;
    D_8010866B = 0;
    D_8010A2F0 = 0;
    *(u8 *)0x1F8002E2 = 0;
    *(u8 *)0x1F8002E3 = 0;
    D_8010A5A9 = 1;
    D_8010A5A8 = 1;
    D_801D8DFB = 0;
    D_801D8DFC = 0;
    func_800AD658(D_8010866C, 0x480);
    func_800AD658(D_80108AEC, 0x162C);
    func_800AD658(D_8010A118, 0x180);
    func_800AD658(D_8010A298, 0x30);
    func_800AD658(D_8010A2C8, 0x20);
    func_800171DC();
    D_8010A322 = 0;
    D_801D8A82 = 0;
    D_801D8A84 = 0;
    D_801D8A86 = 0;
    D_801D8A88 = 0;
    D_801D8A8F = 0;
    /* Retain 32 otherwise-unused bytes for the original 56-byte frame.
     * Their original purpose is unknown; this constraint emits no memory access. */
    __asm__ volatile ("" : "=m"(frameSlot));
}
