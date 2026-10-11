#include "common.h"

extern void func_800AD41C(u32, u32, u32, u32);
extern void func_800AD3B8(void);
extern void func_800AD2B4(void);
extern u32 D_800CEA64;

void func_800AD204(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_800AD41C(arg0, arg1, arg2, arg3);
    func_800AD3B8();
    func_800AD2B4();
    D_800CEA64 = 0;
}
