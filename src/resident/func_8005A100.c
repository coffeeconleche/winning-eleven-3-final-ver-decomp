#include "common.h"

extern u8 D_8010A3B1;
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* Word parameter with only its low byte consumed. Historical selector and
 * helper meanings remain provisional; native code must translate the scratch
 * address. Helper-result additions explicitly retain the original low word. */
void func_8005A100(u32 selector)
{
    s32 argument;

    if (*(u8 *)0x1F8002CE == 0 && func_8001E6B8(3) == 0) {
        switch ((u8)selector) {
        case 0:
            if (D_8010A3B1 & 1) {
                func_800AB620((s32)((u32)func_8001E6B8(3) + 0xE0AU));
                D_8010A3B1 = 1;
                return;
            }
            break;
        case 1:
            argument = (s32)((u32)func_8001E6B8(3) + 0xE0DU);
            goto dispatch;
        case 2:
            argument = (s32)((u32)func_8001E6B8(2) + 0xE10U);
            goto dispatch;
        case 3:
            argument = (s32)((u32)func_8001E6B8(2) + 0xE12U);
dispatch:
            func_800AB620(argument);
            break;
        }
    }
}
