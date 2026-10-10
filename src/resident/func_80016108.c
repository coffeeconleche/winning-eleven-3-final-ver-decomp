#include "common.h"

extern u16 D_8010A31E;
extern u8 D_800E7DE8;
extern u8 D_8010C2A2;
extern u16 D_800E7804;
extern u8 D_800E6BEE;
/* A no-storage view preserves the scratch byte's separate load/store addresses. */
extern u8 scratch2E6 __asm__("0x1F8002E6");

/* These helper declarations are measured call-site views. */
extern void func_8004FC54(u32);
extern void func_8001714C(void);

void func_80016108(void)
{
    u8 captured;

    func_8004FC54(0);
    captured = scratch2E6;
    scratch2E6 = 4;
    D_8010A31E = 255;
    D_800E7DE8 = 0;
    D_8010C2A2 = 0;
    D_800E7804 = 0;
    *(u8 *)0x1F800330 = 1;
    D_800E6BEE = captured;
    func_8001714C();
}
