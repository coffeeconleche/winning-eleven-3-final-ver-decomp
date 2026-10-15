#include "common.h"

extern u8 D_800FF748[];
extern u16 D_800C7D48[];
extern s32 func_8001E6B8(s32 bound);
extern s32 func_800494C0(u8 *record);
extern void func_800AB620(s32 value);

/* Partial record/table views retain existing storage and callback rereads.
 * Historical layouts and helper meanings remain provisional; native code
 * must translate scratch addresses and resolve allocations. The empty operand
 * identity retains initialized mode and comparison values without instructions
 * or memory clobbers. The distance result is compared as an unsigned word. */
void func_80056B5C(u8 *record)
{
    u8 *base = D_800FF748;
    s32 position = *(s16 *)(record + 2);
    s32 inside;
    u32 mode;
    u32 one;

    if (record[0x399] != 0) {
        inside = -position < -0x198F;
    } else {
        inside = position < -0x198F;
    }
    if (!inside || func_8001E6B8(2) != 0) {
        return;
    }
    one = 1;
    mode = *(u8 *)0x1F80029A;
    __asm__("" : "=r"(mode), "=r"(one) : "0"(mode), "1"(one));
    if ((u8)mode == one &&
        (u32)func_800494C0(record) <= 0x90000U && base[0xAC4A] == 0) {
        func_800AB620(0x10);
        func_800AB620(D_800C7D48[base[0xAC56] & 3]);
        base[0xAC56] += 1;
    }
}
