#include "common.h"

extern s32 func_8006F0DC(u8, u8);
extern void func_800171C4(u8);
extern void func_800171FC(u8);
extern u8 D_800FF748[];
extern u8 D_8010A322;
extern u16 D_800AD638;

void func_8018E3B4(void) {
    u8 *base = D_800FF748;
    s32 state;
    s32 mode;

    if (func_8006F0DC(16, 1)) {
        state = *(u8 *)0x1F80029B;
        *(u8 *)0x1F8002A2 = 0;
        state += 128;
        /* Keep the addition full width until the original byte comparison. */
        __asm__ volatile ("" : "=r"(state) : "0"(state));
        if ((u8)state < 2) {
            func_800171FC(130);
            D_8010A322 = 0;
        } else {
            mode = *(u8 *)0x1F8002E1;
            switch (mode) {
            case 1:
                /* Preserve separate switch tests for the shared cases 1 and 2. */
                __asm__ volatile ("");
                goto selected;
            case 2:
selected:
                func_800171FC(1);
                break;
            case 6:
                func_800171C4(16);
                func_800171FC(1);
                D_8010A322 = 0;
                break;
            }
            base[0xABDA] = 50;
            D_800AD638 = 0;
        }
    }
}
