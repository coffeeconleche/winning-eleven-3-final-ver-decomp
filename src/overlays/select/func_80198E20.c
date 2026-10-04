#include "common.h"

extern u8 D_801D8A50, D_8010865D, D_8010A369, D_8010A368;
extern u8 D_8010A326, D_8010A327, D_801DAE50, D_801D8DFB, D_801D8DFC;
extern u8 D_801DA2F0, D_801D8B18, D_801DA06B, D_801DA069;
extern u8 D_801DA06A, D_801DA068, D_801D1A50, D_801D1A51;
extern u8 D_8010A322, D_8010A320;
extern u16 D_8010A31E, D_8010CD46, D_8010CD44, D_800F10A2, D_800F10A0;
extern u16 D_800EF864, D_801DA5D0, D_801DA5D2, D_801DA5D4, D_801DA5D6;
extern u32 D_800E81D0, D_800E7658, D_801DA064, D_801DA060;
extern u32 D_801DA05C, D_801DA058;
extern void func_8001DD50(u32), func_8004FC54(u32), func_8018E538(u32);
extern void func_800A9700(void), func_800AB620(s32), func_80096050(void);
extern void func_8005C49C(void), func_800171C4(u32), func_800171FC(u32);

void func_80198E20(void) {
    u8 frameSlot[8];

    /* Retain eight bytes for the measured 32-byte frame. The original local
     * purpose is unknown; this empty constraint emits no memory access. */
    __asm__("" : "=m"(frameSlot));
    func_8001DD50(3);
    func_8004FC54(0);
    func_8018E538(0);
    func_800A9700();
    if (D_801D8A50 == 0) {
        func_800AB620(15);
        func_800AB620(0x206);
    }
    *(u8 *)0x1F8002DE = 10;
    *(u32 *)0x1F80019C = 1;
    D_8010A31E = 255;
    *(u8 *)0x1F8002E1 = 0;
    *(u8 *)0x1F8002E2 = 0;
    *(u8 *)0x1F8002DD = 0;
    *(u8 *)0x1F8002A2 = 0;
    D_8010865D = 0;
    *(u32 *)0x1F800198 = 0;
    *(u8 *)0x1F800330 = 1;
    D_800E81D0 = 0;
    D_800E7658 = 0;
    *(u8 *)0x1F8001EC = 1;
    func_80096050();
    func_8005C49C();
    D_8010A369 = 0;
    D_8010A368 = 0;
    D_8010CD46 = 0;
    D_8010CD44 = 0;
    D_800F10A2 = 0;
    D_800F10A0 = 0;
    D_800EF864 = 128;
    D_8010A326 = 0;
    D_8010A327 = 0;
    D_801DAE50 = 0;
    D_801D8DFB = 0;
    D_801D8DFC = 0;
    D_801DA2F0 = 0;
    D_801D8B18 = 0;
    D_801DA06B = 0;
    D_801DA069 = 0;
    D_801DA06A = 0;
    D_801DA068 = 0;
    D_801DA5D0 = 0;
    D_801DA5D2 = 0;
    D_801DA5D4 = 0;
    D_801DA5D6 = 0;
    D_801DA064 = 0;
    D_801DA060 = 0;
    D_801DA05C = 0;
    D_801DA058 = 0;
    D_801D1A50 = 0;
    D_801D1A51 = 0;
    func_800171C4(1);
    func_800171FC(0);
    D_8010A322 = 0;
    D_8010A320 = 0;
    D_801D8A50 = 0;
}
