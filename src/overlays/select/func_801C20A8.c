#include "common.h"

extern u8 D_801D8B17;
extern void func_8018E538(s32);
extern void func_801C20F0(void);
extern void func_801C3150(void);

void func_801C20A8(void) {
    /* Keep the caller's argument and stores ahead of the two follow-up calls. */
    func_8018E538(0);
    *(u8 *)0x1F8002A2 = 0x31;
    D_801D8B17 = 1;
    func_801C20F0();
    func_801C3150();
}
