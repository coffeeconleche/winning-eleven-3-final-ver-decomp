#include "common.h"

extern void func_800AD3A8(u32, u32, u32, u32);
extern void func_800ACF08(s32);
extern void func_800AD408(void);

s32 func_800AD1D4(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_800AD3A8(arg0, arg1, arg2, arg3);
    func_800ACF08(0);
    func_800AD408();
    return 1;
}
