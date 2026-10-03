#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A322, D_8010866A;
extern void func_801AA7C4(u8);
extern void func_800171FC(s32);

void func_801B1168(void) {
    u8 *base = D_800FF748;

    switch (D_8010A322) {
    case 0:
        D_8010A322 = 10;
        break;
    case 10:
        func_801AA7C4(0);
        D_8010A322 = 20;
        break;
    case 20: {
        u8 *entry = base + D_8010866A;
        entry += 0xAB50;
        /* Preserve the mapped-byte update before the call and the state
         * reset afterward. Other state values deliberately do nothing. */
        *entry |= 2;
        func_800171FC(1);
        D_8010A322 = 0;
        break;
    }
    }
}
