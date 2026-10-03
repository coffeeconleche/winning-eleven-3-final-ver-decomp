#include "common.h"

extern u8 D_801D8A8F;
extern void func_8018E538(s32);
extern void func_801A8E08(void);
extern void func_801A8F00(void);

void func_801B9100(void) {
    /* Retain this caller's extra argument and original call/store sequence. */
    func_8018E538(0);
    *(u8 *)0x1F8002A2 = 0x10;
    D_801D8A8F = 0;
    func_801A8E08();
    func_801A8F00();
}
