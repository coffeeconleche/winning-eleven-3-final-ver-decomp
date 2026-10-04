#include "common.h"

extern u16 D_8010A5A4;
extern u8 D_80108668, D_801DAE50;
extern s16 D_801DA5D0, D_801DA5D2, D_801DA5D4, D_801DA5D6;
extern u32 func_8006EC80(u32);
extern void func_800AB620(s32);

s32 func_801C16DC(u32 mode) {
    u32 raw = func_8006EC80(0);
    s32 key = (u16)raw;
    s16 *counter;
    /* Retain the measured register reuse at the shared signed comparison. */
    register s32 limit __asm__("$2");
    u32 row;

    D_8010A5A4 = raw;
    switch (key) {
    case 0x8000:
        if (mode != 0 || D_80108668 < 5)
            return 0;
        counter = &D_801DA5D0;
        goto decrement;
    case 0x2000:
        if (mode != 0)
            return 0;
        row = D_80108668;
        if (row < 5)
            return 0;
        counter = &D_801DA5D0;
        limit = D_801DA5D4;
        goto increment;
    case 0x1000:
        if (D_80108668 < 5)
            return 0;
        counter = &D_801DA5D2;
decrement:
        if (*counter == 0)
            return 0;
        func_800AB620(0x50D);
        /* Reread after the callback; the earlier comparison is not the update. */
        *counter = (u16)*counter - 1;
        break;
    case 0x4000:
        row = D_80108668;
        if (row < 5)
            return 0;
        counter = &D_801DA5D2;
        limit = D_801DA5D6;
increment:
        if (*counter >= (s32)row - limit)
            return 0;
        func_800AB620(0x50D);
        *counter = (u16)*counter + 1;
        break;
    case 0x40:
        if (mode != 0) {
            D_801DAE50 = 1;
            return 1;
        }
        break;
    case 0x20:
        D_801DAE50 = 2;
        return 2;
    }
    return 0;
}
