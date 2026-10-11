#include "common.h"

/* Initial forwarding is an ABI view; full syscall/BIOS APIs remain unknown. */
extern void func_800AD3D8(u32, u32, u32, u32);
extern void func_800AD3F8(s32, u8 *);
extern void func_800ACE68(void);
extern u8 D_800E7008[];

s32 func_800AD2B4(u32 first, u32 second, u32 third, u32 fourth)
{
    func_800AD3D8(first, second, third, fourth);
    func_800AD3F8(1, D_800E7008);
    func_800ACE68();
    return 1;
}
