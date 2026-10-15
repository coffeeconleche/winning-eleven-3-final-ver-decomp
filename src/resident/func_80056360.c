#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A392;
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80057AE4(u8 *record, u32 first, u32 second);
extern void func_800AB620(s32 value);

/* Partial views retain existing storage and callback rereads. Historical
 * record layouts and helper APIs remain provisional; native code must resolve
 * scratch addresses and global allocation. Empty identities retain initialized
 * consumed values without instructions or memory clobbers. Register bindings
 * retain allocation measured against the complete original function. */
void func_80056360(u8 *record)
{
    register u8 *base __asm__("$18") = D_800FF748;
    s32 position;
    s32 oriented;
    register s32 argument __asm__("$4");
    u8 *ball;
    u32 side;

    if (D_8010A392 == 0 && *(u8 *)0x1F80029A == 1 &&
        func_8001E6B8(2) == 0 && func_8001E6B8(3) != 0 &&
        func_80057AE4(record, 0, 0) == 0) {
        ball = *(u8 **)0x1F8002F4;
        side = record[0x399];
        __asm__("" : "=r"(ball), "=r"(side) : "0"(ball), "1"(side));
        position = *(s16 *)(ball + 2);
        oriented = -position;
        if (side == 0) {
            oriented = position;
        }
        if (func_8001E6B8(2) == 0 && (u16)(oriented - 1) < 0x1BE1U) {
            func_800AB620(0x10);
            __asm__("" : "=r"(base) : "0"(base));
            argument = (base[0xAC57] & 3) + 0xD85;
            goto dispatch;
        }
        if (func_8001E6B8(2) == 0) {
            if (*(u8 *)0x1F8002AB == record[0x38D]) {
                if (func_8001E6B8(3) == 0) {
                    func_800AB620(0x10);
                    argument = (base[0xAC57] & 1) + 0xD7D;
                    goto dispatch;
                }
            } else if (func_8001E6B8(2) == 0 && (s16)oriented < -0x24E2) {
                func_800AB620(0x10);
                argument = 0xD90;
                goto dispatch;
            }
        } else if (func_8001E6B8(2) == 0 && (s16)oriented < -0x1990) {
            func_800AB620(0x10);
            argument = 0xD82;
dispatch:
            func_800AB620(argument);
        }
        base[0xAC4F] = 0xFF;
        base[0xAC57] += 1;
    }
}
