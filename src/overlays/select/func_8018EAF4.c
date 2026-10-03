#include "common.h"

extern u16 D_8010A5A4;
extern u8 D_801DAE50;
extern u16 func_8006EC80(s32);
extern void func_800AB620(s32);

s32 func_8018EAF4(s32 confirm_value, s32 cancel_value, u8 silent) {
    D_8010A5A4 = func_8006EC80(0);
    if (D_8010A5A4 == 0x20) {
        if (silent == 0) {
            func_800AB620(0x528);
        }
        D_801DAE50 = 2;
        return confirm_value;
    }
    if (D_8010A5A4 == 0x40) {
        if (silent == 0) {
            func_800AB620(0x529);
        }
        D_801DAE50 = 1;
        return cancel_value;
    }
    return 0;
}
