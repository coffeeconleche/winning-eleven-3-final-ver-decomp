#include "common.h"

extern u8 D_801D8B17;
extern void func_8018E538(s32);
extern void func_801C20F0(void);
extern void func_801C2A3C(void);

void func_801C2064(void) {
    /* Preserve the argument passed by this caller; original prototype unknown. */
    func_8018E538(0);
    *(u8 *)0x1F8002A2 = 0x30;
    D_801D8B17 = 0;
    func_801C20F0();
    func_801C2A3C();
}
