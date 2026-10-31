#include "common.h"

extern u8 D_800FF748[];
extern u8 D_800E81FC;
extern void func_80057CEC(s32);
extern s32 func_80087924(void);
extern s32 func_80087C7C(void);
extern s32 func_80087AB8(void);
extern s32 func_80087B58(void);
extern void func_80084928(void);
extern void func_800AB620(s32 value);
extern void func_80096050(void);
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern void func_8009F62C(u32);
extern void func_800171DC(void);

/* Replay-state teardown dispatcher selected by the scratch mode at 0x2DF. */
void func_800847DC(void) {
    u8 *records = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;

    switch (*(u8 *)0x1F8002DF) {
    case 0:
        func_80057CEC(0);
        D_800E81FC = 4;
        break;
    case 1:
        if ((u8)func_80087924() != 0) {
            func_80084928();
            break;
        }
        if ((u8)func_80087C7C() != 0) {
            func_80057CEC(3);
            D_800E81FC = 3;
            break;
        }
        scratch[0x2CE] = 0;
        func_80057CEC(1);
        D_800E81FC = 5;
        break;
    case 2:
        if ((u8)func_80087AB8() != 0) {
            func_80084928();
            break;
        }
        func_80057CEC(2);
        D_800E81FC = 4;
        break;
    case 3:
        if ((u8)func_80087B58() != 0) {
            func_80084928();
            break;
        }
        func_80057CEC(3);
        D_800E81FC = 3;
        break;
    case 4:
        func_80084928();
        break;
    }
    func_800AB620(0x51A);
    records[0x65E4] = 0;
    records[0x660C] = 0;
    scratch[0x2A1] = 0;
    func_80096050();
    *(u16 *)(scratch + 0x294) = 0;
    func_8002283C();
    func_8004A2D0();
    func_8009F62C(0x20);
    func_800171DC();
}
