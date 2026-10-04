#include "common.h"

extern s32 func_8001E6B8(s32 divisor);
extern void func_800AB620(s32 value);

void func_8018F88C(void)
{
    s32 value;

    if (*(u8 *)0x1F8002E4 == 0) {
        value = func_8001E6B8(2) + 0xC8A;
    } else {
        value = func_8001E6B8(3) + 0xC8C;
    }
    func_800AB620(value);
}
