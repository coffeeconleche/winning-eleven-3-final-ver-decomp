#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A3A8;
/* Existing scratch byte: an address view only, not a storage definition. */
extern u8 scratchMode __asm__("0x1F8002AF");
extern u16 D_800C7DAC[];
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80057AE4(u8 *record, u32 first, u32 second);
extern void func_800AB620(s32 value);

/* Partial original record/global views, not a recovered native API.
 * Counter rereads remain after callbacks. Numeric guest addresses preserve
 * possible negative signed-remainder displacement without an index bound;
 * a native port must translate these addresses and resolve their allocations.
 */
void func_80059E7C(u8 *record)
{
    u8 *base = D_800FF748;
    s32 position;
    s32 previous;
    s32 argument;
    s32 choice;
    u32 counter;
    u32 row;
    u32 index;

    if (scratchMode == 3) {
        func_800AB620((u8)(D_8010A3A8 % 3U) + 0xDD6);
        D_8010A3A8 += 1;
        if (func_8001E6B8(2) != 0) {
            choice = func_8001E6B8(2);
            argument = *(u16 *)((u32)D_800C7DAC + (u32)choice * 2U);
            goto dispatch;
        }
    } else {
        func_80057AE4(record, 0, 0);
        if (scratchMode == 2) {
            position = *(s16 *)(record + 2);
            if (record[0x399] != 0) {
                if (-position < -0x198F) {
                    goto submit;
                }
                goto adjust;
            }
            if (position >= -0x198F) {
adjust:
                counter = base[0xAC5E];
                if ((u8)((u8)counter % 5U) == 1) {
                    base[0xAC5E] = counter + 1;
                }
            }
submit:
            func_800AB620((base[0xAC5E] & 3) + 0xDD2);
            base[0xAC5E] += 1;
            row = record[0x398] * 22;
            index = record[0x392];
            row += (u32)base;
            row += 0x88A5;
            row += index;
            if (*(u8 *)row == 2) {
                func_800AB620((base[0xAC5F] & 1) + 0xDD9);
                base[0xAC5F] += 1;
                if (func_8001E6B8(3) == 0) {
                    argument = 0xDDC;
                    goto dispatch;
                }
            } else if (func_8001E6B8(2) != 0) {
                previous = base[0xAC5E] - 1;
                if (previous % 4 != 3) {
                    argument = func_8001E6B8(2) + 0xDDD;
dispatch:
                    func_800AB620(argument);
                }
            }
        }
    }
}
