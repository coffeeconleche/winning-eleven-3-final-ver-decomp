#include "common.h"

extern u8 D_8010A369, D_8010A368, D_8010A392, D_8010A322, D_800E7DE8;
extern u16 D_8010A394;
/* Singleton scalar views avoid retaining repeated numeric addresses across calls;
 * no storage or hardware volatility is introduced. */
extern u8 scratch2E1 __asm__("0x1F8002E1");
extern u8 scratch1EC __asm__("0x1F8001EC");
extern void func_8001DD50(u32);
extern void func_8001F53C(void), func_80096050(void), func_80089BD8(void);
extern void func_8005A580(void), func_80055974(void);
extern void func_8004FAC0(s32, u32);
extern void func_800171C4(u32), func_8001723C(u32), func_8001722C(u32);
extern void func_800AB620(s32), func_8001720C(void);

/* No incoming argument is consumed. The sole direct caller ignores v0.
 * DD50 consumes only its first word; its old four-word C forwarding view is
 * a known native-prototype reconciliation issue, not three real arguments. */
void func_8001F134(void)
{
    func_8001DD50(11);
    if (*(u8 *)0x1F8002E1 == 5) {
        *(u8 *)0x1F8002A8 = 11;
        *(s16 *)0x1F80000E = -6144;
    }
    func_8001F53C();
    func_80096050();
    func_80089BD8();
    func_8005A580();
    *(u8 *)0x1F80030B = 1;
    D_8010A369 = 0;
    D_8010A368 = 0;
    *(u32 *)0x1F8002F8 = 255;
    *(u8 *)0x1F800331 = 0;
    func_80055974();
    func_8004FAC0(0, 0);
    *(u8 *)0x1F8001EC = 0;
    D_8010A394 = 0;
    D_8010A392 = 0;
    *(u8 *)0x1F8002FC = 0;
    *(u8 *)0x1F8002C1 = 0;
    func_800171C4(0);
    if (scratch2E1 == 4) {
        func_8001723C(4);
        func_8001722C(5);
        func_800171C4(8);
    } else {
        func_800AB620(17);
        if (*(u8 *)0x1F800298 == 3 && !(D_800E7DE8 & 1)) {
            *(u8 *)0x1F8002C0 = 0;
            *(u8 *)0x1F8002A1 = 0;
            *(u8 *)0x1F8002A0 = 0;
            *(u32 *)0x1F8002C4 = 0;
            scratch1EC = 0;
            *(u16 *)0x1F800234 = 0;
            *(u8 *)0x1F80029C = 5;
            D_8010A322 = 0;
            func_800171C4(14);
        } else {
            func_8001720C();
        }
    }
}
