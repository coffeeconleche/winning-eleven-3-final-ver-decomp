#include "common.h"

extern u16 D_8010A5A4;
extern u16 func_8006EC80(s32);
extern void func_800AB620(s32);

s32 func_8018EA8C(s32 value, u8 silent) {
    D_8010A5A4 = func_8006EC80(0);
    if (D_8010A5A4 == 0x20) {
        if (silent == 0) {
            func_800AB620(0x528);
        }
        return value;
    }
    return 0;
}
