#include "common.h"

extern void func_800769C0(void);
extern void func_80076E7C(void);
extern void func_80077270(void);
extern void func_8007A2A8(void);
extern void func_8007B39C(void);
extern void func_8007BE38(void);
extern void func_8007CEDC(void);
extern void func_80081B94(void);
extern void func_80083EE8(void);
extern void func_80084750(void);
extern void func_80087CCC(void);
extern void func_80089C70(void);
extern void func_80188F8C(void);
extern void func_80075BBC(void);
extern void func_800991E4(u32);
extern void func_8009ACC0(void);
extern void func_80020E30(void);
extern void func_8007368C(void);

/* Replay-frame handler dispatcher on the scratch mode at 0x1F80029A; the
 * four incoming words are forwarded by callers and unused here. */
void func_8001F3E0(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
    u8 *scratch = (u8 *)0x1F800000;

    switch (*(u8 *)0x1F80029A) {
    case 0:
        func_800769C0();
        break;
    case 1:
        func_80076E7C();
        break;
    case 2:
        func_80077270();
        break;
    case 3:
        func_8007A2A8();
        break;
    case 4:
        func_8007B39C();
        break;
    case 6:
        func_8007BE38();
        break;
    case 7:
        func_8007CEDC();
        break;
    case 8:
        func_80081B94();
        break;
    case 9:
        func_80083EE8();
        break;
    case 10:
        func_80084750();
        break;
    case 11:
        func_80087CCC();
        break;
    case 12:
        func_80089C70();
        break;
    case 13:
        func_80188F8C();
        break;
    case 14:
        func_80075BBC();
        break;
    }
    func_800991E4(*(s32 *)(scratch + 0x2F4));
    func_8009ACC0();
    func_80020E30();
    if (scratch[0x333] != 0) {
        func_8007368C();
    }
}
