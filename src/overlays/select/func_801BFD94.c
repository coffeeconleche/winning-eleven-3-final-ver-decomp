#include "common.h"

extern u8 D_800FF748[], D_801D8B18;
extern void func_801BFEDC(void), func_801C00F4(void), func_801C0808(void);
extern void func_801C0958(void), func_801C1208(void), func_8018F324(void);
extern void func_801A8CD0(void), func_800171FC(u32);

void func_801BFD94(void) {
    s32 mode = *(u8 *)0x1F80029B;
    u8 *base = D_800FF748;
    switch (mode) {
    case 0:
        func_801BFEDC();
        break;
    case 1:
        func_801C00F4();
        break;
    case 2:
        func_801C0808();
        break;
    case 3:
        func_801C0958();
        break;
    case 4:
        func_801C1208();
        break;
    case 128:
    case 129:
        func_8018F324();
        break;
    case 130:
    case 131: {
        u8 value;
        func_801A8CD0();
        /* This byte is read after the call, which may change the state. */
        if (D_801D8B18 == 1) {
            func_800171FC(4);
            value = 200;
        } else {
            func_800171FC(3);
            value = 31;
        }
        base[0xABDA] = value;
        break;
    }
    }
}
