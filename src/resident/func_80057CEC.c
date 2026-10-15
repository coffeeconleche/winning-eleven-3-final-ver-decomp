#include "common.h"

extern u8 D_800FF748[];
extern u8 D_80108667;
extern u8 D_8010866A;
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);
extern void func_80058FCC(u8 *record, u32 increment);

/* Original scalar selector and partial byte-record views, not a native API.
 * Random helper remainders remain
 * signed; their reviewed small bounds keep all argument arithmetic defined.
 */
void func_80057CEC(s32 selector)
{
    u8 *base;
    u8 *scratch;
    u8 *selected;
    s32 choice;
    s32 pair;
    s32 argument;
    u32 score;

    func_800AB620(0x10);
    base = D_800FF748;
    scratch = (u8 *)0x1F800000;
    switch (selector) {
    case 0:
        func_800AB620(func_8001E6B8(4) + 0xF11);
        choice = func_8001E6B8(3);
        switch (choice) {
        case 0:
            func_800AB620(func_8001E6B8(2) + 0xE49);
            selected = base + 0x3E8;
            if ((s32)*(u8 *)0x1F8002D1 - *(u8 *)0x1F8002D2 < 0) {
                selected = base + 0x2EE0;
            }
            func_80058FCC(selected, 0);
            return;
        case 1:
            if ((D_80108667 & 0xCF) == 0x40 && (D_8010866A >> 4) == 3) {
                pair = (func_8001E6B8(4) & 0xFF) * 2;
                func_800AB620(pair + 0xEE5);
                argument = pair + 0xEE6;
            } else {
                score = scratch[0x2D1];
                if (score == scratch[0x2D2]) {
                    argument = func_8001E6B8(3) * 2 + 0xEE0;
                } else {
                    argument = func_8001E6B8(3) * 2 + 0xEDF;
                }
            }
            goto dispatch;
        }
        break;
    case 1:
        argument = func_8001E6B8(2) + 0xF19;
        goto dispatch;
    case 2:
        argument = 0xF1F;
        if (*(u8 *)0x1F8002D1 == *(u8 *)0x1F8002D2) {
            argument = 0xF1E;
        }
        goto dispatch;
    case 3:
        argument = func_8001E6B8(2) + 0xF22;
dispatch:
        func_800AB620(argument);
    }
}
