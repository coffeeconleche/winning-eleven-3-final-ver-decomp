#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D8B18;
extern void func_801B06E0(void), func_801B0B9C(void), func_801B1168(void);
extern void func_801B1224(void), func_801B2084(void), func_8018F324(void);
extern void func_801A8CD0(void), func_800171FC(s32);

void func_801B0598(void) {
    u8 *base = D_800FF748;

    /* Preserve the sparse byte-state dispatch and its shared case ranges. */
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_801B06E0();
        break;
    case 1:
        func_801B0B9C();
        break;
    case 2:
        func_801B1168();
        break;
    case 3:
        func_801B1224();
        break;
    case 10:
        func_801B2084();
        break;
    case 0x80:
    case 0x81:
        func_8018F324();
        break;
    case 0x82:
    case 0x83: {
        u32 value;
        func_801A8CD0();
        /* This flag is read after the callback, not captured at entry. */
        if (D_801D8B18 == 1) {
            func_800171FC(10);
            value = 200;
        } else {
            func_800171FC(1);
            value = 70;
        }
        base[0xABDA] = value;
        break;
    }
    }
}
