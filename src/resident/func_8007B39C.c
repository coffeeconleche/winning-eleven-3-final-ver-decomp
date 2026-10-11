#include "common.h"

extern u8 scratch29B __asm__("0x1F80029B");
/* Provisional register views preserve all four incoming argument words. */
extern void func_8007A328(u32, u32, u32, u32);
extern void func_8007B41C(u32, u32, u32, u32);
extern void func_8007AC70(u32, u32, u32, u32);

/* Selector meanings, complete helper APIs and return contract are unknown. */
void func_8007B39C(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    s32 selector = scratch29B;

    switch (selector) {
    case 0:
        func_8007A328(arg0, arg1, arg2, arg3);
        break;
    case 1:
        func_8007B41C(arg0, arg1, arg2, arg3);
        break;
    case 2:
        func_8007AC70(arg0, arg1, arg2, arg3);
        break;
    }
}
