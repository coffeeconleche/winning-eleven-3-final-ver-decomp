#include "common.h"

extern u8 scratchMode __asm__("0x1F80029A");
extern u8 D_8010A5B1;

extern void func_8018DE7C(void), func_80199010(void), func_8019963C(void);
extern void func_8019A3FC(void), func_8019A510(void), func_801C3294(void);
extern void func_801C62E0(void), func_8018F324(void), func_801CCA00(void);
extern void func_801CC13C(void), func_801C9F6C(void), func_801CB570(void);
extern void func_801CBAB8(void), func_80138018(void), func_8018DF30(void);
extern void func_801B0598(void), func_801B5644(void), func_801BFD94(void);
extern void func_801BB140(void);
/* Word caller ABI views, not recovered complete prototypes. E538 ignores its
 * supplied zero; 171C4 stores its low byte. Preserve the full predicate result
 * from 19B64, including its unsupported-state register residue. */
extern void func_801D123C(u32), func_8018E538(u32), func_800171C4(u32);
extern s32 func_80019B64(u32);

void func_8018DB58(void) {
    s32 mode = scratchMode;

    /* The byte is captured once; callbacks do not change this dispatch. */
    switch (mode) {
    case 0:
        func_8018DE7C();
        break;
    case 1:
        func_80199010();
        break;
    case 2:
    case 5:
        func_8019963C();
        break;
    case 3:
        func_8019A3FC();
        break;
    case 4:
        func_8019A510();
        break;
    case 6:
        scratchMode = 16;
        /* Fall through after the byte store, without rereading it. */
    case 16:
        func_801C3294();
        break;
    case 17:
        func_801C62E0();
        break;
    case 18:
        func_8018F324();
        break;
    case 19:
        func_801CCA00();
        break;
    case 20:
        func_801CC13C();
        break;
    case 21:
        func_801C9F6C();
        break;
    case 22:
        func_801CB570();
        break;
    case 23:
        func_801CBAB8();
        break;
    case 24:
        func_80138018();
        break;
    case 48:
        func_801D123C(0);
        break;
    case 49:
        func_801D123C(1);
        break;
    case 7:
    case 9:
        func_8018DF30();
        break;
    case 33:
        func_801B0598();
        break;
    case 34:
        func_801B5644();
        break;
    case 35:
        func_801BFD94();
        break;
    case 32:
        func_801BB140();
        break;
    case 255:
        if (func_80019B64(((D_8010A5B1 >> 2) & 3) + 0xC7)) {
            func_8018E538(0);
            func_800171C4(0);
        }
        break;
    }
}
