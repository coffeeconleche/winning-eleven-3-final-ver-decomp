#include "common.h"

extern void func_800AB620(s32);

s32 func_80191E44(void) {
    if (*(u16 *)0x1F800234 & 0x40) {
        func_800AB620(0x529);
        return 1;
    } else {
        return 0;
    }
}
