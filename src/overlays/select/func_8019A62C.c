#include "common.h"

extern u8 D_8010A32A;
extern u8 D_801D1A50;
extern u8 D_801D1A51;
extern s32 D_801D1F28[];
extern void func_800AB620(s32);
extern void func_800A96EC(void);

void func_8019A62C(s32 input) {
    u8 flags = D_8010A32A;

    if ((flags >> 1) & 1) {
        D_801D1A51 = 1;
    } else if (input == D_801D1F28[D_801D1A50]) {
        D_801D1A50++;
        if (D_801D1F28[D_801D1A50] == 0xFF) {
            D_801D1A51 = 1;
            D_801D1A50 = 0;
            D_8010A32A = flags | 2;
            func_800AB620(0x510);
            func_800A96EC();
        }
    } else {
        D_801D1A50 = 0;
        D_801D1A51 = 0;
    }
}
