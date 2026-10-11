#include "common.h"

extern u8 scratch29B __asm__("0x1F80029B");
/* Raw register views preserve unchanged incoming argument words. */
extern void func_80087D64(u32, u32, u32, u32);
extern void func_80088460(u32, u32, u32, u32);
extern void func_80089438(u32, u32, u32, u32);
extern void func_800898D0(u32, u32, u32, u32);

/* Selector meanings, complete helper APIs and return contract are unknown. */
void func_80087CCC(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    s32 selector = scratch29B;

    switch (selector) {
    case 0:
        func_80087D64(arg0, arg1, arg2, arg3);
        break;
    case 1:
        func_80088460(arg0, arg1, arg2, arg3);
        break;
    case 2:
        func_80089438(arg0, arg1, arg2, arg3);
        break;
    case 3:
        func_800898D0(arg0, arg1, arg2, arg3);
        break;
    }
}
