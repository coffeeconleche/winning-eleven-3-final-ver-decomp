#include "common.h"

extern u8 D_800FF748[], D_801D8A48, D_801D8B18;
extern void func_801B57A0(void), func_801B5A7C(void), func_801B70C4(void);
extern void func_8018F324(void), func_801A8CD0(void);
extern void func_801B8708(s32), func_800171FC(s32);

void func_801B5644(void) {
    s32 mode = *(u8 *)0x1F80029B;
    u8 *base = D_800FF748;
    switch (mode) {
    case 0:
        func_801B57A0();
        break;
    case 1:
        func_801B5A7C();
        break;
    case 2:
        func_801B70C4();
        break;
    case 128:
    case 129:
        func_8018F324();
        break;
    case 130:
    case 131:
        func_801B8708(0);
        func_801A8CD0();
        if (D_801D8A48 == 1) {
            func_800171FC(2);
            base[0xABDA] = 70;
        } else {
            func_800171FC(1);
            if (D_801D8B18 == 0) {
                base[0xABDA] = 170;
            } else {
                base[0xABDA] = 200;
                base[0xABD8] = 0;
            }
        }
        break;
    }
}
