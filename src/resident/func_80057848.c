#include "common.h"

extern u8 D_8010A397;
extern void func_800AB620(s32 value);
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80057AE4(u8 *object, u32 first, u32 second);

/* Partial access/call views; broader object and callback APIs and the
 * historical return convention remain provisional. */
void func_80057848(u8 *object)
{
    if (*(u8 *)0x1F80029A == 1 && *(u32 *)0x1F8002B0 == 4 &&
        D_8010A397 != 7) {
        func_800AB620(0x10);
        if (func_8001E6B8(2) != 0 || func_80057AE4(object, 0, 1) == 0) {
            func_800AB620(func_8001E6B8(2) + 0xD4F);
        }
    }
}
