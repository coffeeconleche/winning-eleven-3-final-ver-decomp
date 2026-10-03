#include "common.h"

extern s32 func_8006F0DC(u8, u8);
extern void func_800AB620(s32);
extern void func_800171C4(u8);
extern void func_800171FC(u8);
extern u8 D_801D8B18;
extern u8 D_80108667;
extern u8 D_8010A322;
extern u16 D_800AD638;

void func_8018E2C0(void) {
    s32 mode;
    u8 flags;

    if (func_8006F0DC(64, 1)) {
        *(u8 *)0x1F8002A2 = 0;
        func_800AB620(7);
        mode = *(u8 *)0x1F8002E1;
        D_801D8B18 = 0;
        switch (mode) {
        case 1:
            func_800171C4(32);
            func_800171FC(1);
            D_8010A322 = 130;
            break;
        case 2:
            flags = D_80108667;
            if (flags & 64) {
                func_800171C4(34);
                func_800171FC(1);
                D_8010A322 = 180;
            } else if (!(flags & 15)) {
                func_800171C4(33);
                func_800171FC(1);
                D_8010A322 = 100;
            } else {
                func_800171C4(35);
                func_800171FC(3);
                D_8010A322 = 40;
            }
            break;
        }
        D_800AD638 = 0;
    }
}
