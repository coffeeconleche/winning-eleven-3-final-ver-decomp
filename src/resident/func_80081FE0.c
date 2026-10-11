#include "common.h"

extern u8 scratch2A1 __asm__("0x1F8002A1");
/* Halfword access views; signedness/field meanings are provisional. */
extern s16 D_8010A370;
extern s16 D_8010A372;
extern s16 D_8010A374;
extern s16 D_8010A376;
extern s16 D_8010A378;
extern s16 D_8010A37A;
extern s16 D_8010A37C;
extern s16 D_8010A384;
/* Raw initial argument words and subsequent observed call views do not
 * establish complete helper APIs. */
extern void func_80051810(u32, u32, u32, u32);
extern u32 func_800740BC(void);
extern void func_8001F53C(void);
extern void func_80096050(void);
extern void func_800204D8(void);
extern void func_8004FD14(u32);
extern void func_8005C49C(void);
extern void func_800171DC(void);

/* The original return contract and state meanings remain unknown. */
void func_80081FE0(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_80051810(arg0, arg1, arg2, arg3);
    if (func_800740BC() != 0) {
        func_8001F53C();
        scratch2A1 = 1;
        func_80096050();
        func_800204D8();
        func_8004FD14(1);
        func_8005C49C();
        D_8010A372 = 0x86;
        D_8010A370 = 0x86;
        D_8010A374 = 0x118;
        D_8010A376 = 0x14C;
        D_8010A37A = 0xA28;
        D_8010A378 = 0xA28;
        D_8010A384 = -0x30;
        D_8010A37C = -0x30;
        func_800171DC();
    }
}
