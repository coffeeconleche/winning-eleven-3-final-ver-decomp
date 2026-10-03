#include "common.h"

extern u32 D_800FB568, D_800FB56C, D_800FB570, D_800FB574;
extern u8 D_800FF748[];
extern u8 D_801D8DBD;
extern s32 func_800ACE48(u32);
extern s32 func_800C5938(u32);
extern s32 func_80192720(u32);
extern void func_80193EA0(void);

s32 func_80193884(void) {
    u8 *base;
    s32 result;

    func_800ACE48(D_800FB568);
    func_800ACE48(D_800FB56C);
    func_800ACE48(D_800FB570);
    base = D_800FF748;
    func_800ACE48(D_800FB574);
    while (func_800C5938(0) == 0) {
    }
    do {
        result = func_80192720(0);
    } while (result == 0);

    switch (result) {
    case -2:
        /* The increment wraps to a byte before testing the threshold. */
        D_801D8DBD++;
        if (D_801D8DBD >= 5) {
            func_80193EA0();
            D_801D8DBD = 0;
            if (base[0xABDA] != 0x61) {
                base[0xABDA] = 0x60;
            }
            return 1;
        }
        break;
    case 1:
        D_801D8DBD = 0;
        break;
    }
    return 0;
}
