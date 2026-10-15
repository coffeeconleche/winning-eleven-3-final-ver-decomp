#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A3BE;
extern u8 D_8010A3BD;
extern u8 D_8010A3A3;
extern u16 D_800C7D94[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* Partial views of existing storage; complete bounds and historical helper
 * contracts are unknown. The known caller discards the result. */
void func_8005965C(void)
{
    u8 *bank = D_800FF748;

    if (D_8010A3BE != 0) {
        return;
    }
    if (func_8001E6B8(3) == 0) {
        return;
    }
    switch (*(u8 *)0x1F80029A) {
    case 3:
        func_800AB620(D_800C7D94[func_8001E6B8(3)]);
        break;
    case 4:
        func_800AB620(func_8001E6B8(3) + 0xDAE);
        break;
    case 9:
        if (D_8010A3BD == 0) {
            func_800AB620(func_8001E6B8(2) + 0xDBD);
        } else {
            D_8010A3BD = 0;
        }
        break;
    case 12:
        func_800AB620((u8)(D_8010A3A3 % 7U) + 0xDC6);
        /* The callback can change this byte, so reload before incrementing. */
        D_8010A3A3++;
        break;
    }
    bank[0xAC76] = 1;
}
