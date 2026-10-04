#include "common.h"

extern u8 D_8010A322, D_801DA2F0, D_800FF748[];
extern void func_801C2064(void), func_801C2A3C(void);
extern u8 *func_801C1D94(void);
extern void func_801C19EC(void (*)(void));
extern s32 func_8006F07C(s32), func_8006F0DC(s32, s32), func_801C16DC(s32);
extern void func_800AB620(s32), func_801AB290(s32);

/* The five owned jump-table entries dispatch on this captured byte. Field
 * meanings and complete object/prototype declarations remain unknown. */
void func_801C0808(void) {
    s32 mode = D_8010A322;
    u8 *base = D_800FF748;
    switch (mode) {
    case 0:
        func_801C2064();
        func_801C19EC(func_801C2A3C);
        D_801DA2F0 = 1;
        base[0xABDA]++;
        break;
    case 1:
        if (func_8006F07C(16))
            base[0xABDA]++;
        break;
    case 2:
        if (func_801C16DC(0) == 2) {
            func_800AB620(0x528);
            base[0xABDA]++;
        } else {
            D_801DA2F0 = 1;
        }
        func_801C2A3C();
        break;
    case 3:
        if (func_8006F0DC(64, 0))
            base[0xABDA]++;
        break;
    case 4:
        func_801C1D94();
        base[0xABA8] = 0;
        func_801AB290(0);
        break;
    }
}
