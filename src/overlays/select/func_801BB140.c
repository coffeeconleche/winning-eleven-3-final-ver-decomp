#include "common.h"

extern u8 D_800FF748[];
extern void func_801BB200(void), func_801BB38C(void);
extern void func_8018F324(void), func_801A8CD0(void);
extern void func_800171FC(u32);

void func_801BB140(void) {
    s32 mode = *(u8 *)0x1F80029B;
    u8 *base = D_800FF748;

    switch (mode) {
    case 0:
        func_801BB200();
        break;
    case 1:
        func_801BB38C();
        break;
    case 128:
    case 129:
        func_8018F324();
        break;
    case 130:
    case 131:
        func_801A8CD0();
        func_800171FC(1);
        base[0xABDA] = 90;
        break;
    }
}
