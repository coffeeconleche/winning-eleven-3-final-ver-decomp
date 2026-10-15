#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8005CE14(u32);
extern s32 func_8003495C(u8 *, u8 *);
extern s32 func_8001E6B8(s32);
extern s32 func_8005C7A0(u32);

/* Partial access views. Three collected byte IDs account for the local array.
 * Selection retains the original valid-index contract: random(count) must
 * return 0..count-1. A negative signed remainder would read before this list
 * in the original; this C view does not invent preceding stack storage.
 * Fixed bindings preserve initialized, consumed pointer/coordinate values. */
u32 func_80034734(u8 *input)
{
    register u8 *record __asm__("$18") = input;
    __asm__("" : "=r"(record) : "0"(record));
    {
        s32 choices[3];
        s32 scanned = 0;
        s32 count = 0;
        s32 *write = choices;
        u8 *bank = D_800FF748;
        u8 *candidate;
        s32 x;
        register s32 z __asm__("$2");
        register s16 value __asm__("$2");
        s32 relativeValue;
        u16 absoluteValue;
        s32 result;
        u8 side;
        u16 position;

        candidate = bank + ((u8)func_8005CE14(record[0x38D]) * 1000 + 1000);
loop:
        if (count < 3) {
            if ((u8)func_8003495C(record, candidate) != 0) {
                *write++ = candidate[0x38D];
                count++;
            }
            scanned++;
            candidate += 1000;
            if (scanned < 10) {
                goto loop;
            }
        }
        if (count == 0) {
            x = *(s16 *)(record + 2);
            if (record[0x399] != 0 ? -x >= 0x23E3 : x >= 0x23E3) {
                result = func_8001E6B8(1024);
                side = record[0x399];
                value = result + 0x28F0;
            } else {
                result = func_8001E6B8(768);
                side = record[0x399];
                value = result + 0x24E2;
            }
            if (side != 0) {
                value = -value;
            }
            *(s16 *)(record + 0x3C8) = value;
            z = *(s16 *)(record + 6);
            if (z > 0) {
                if (z < 0x8B6) {
                    result = func_8005C7A0(768);
                    position = *(u16 *)(record + 6);
                    relativeValue = result - 2048;
                    goto relative;
                }
                absoluteValue = func_8005C7A0(256) - 512;
                goto absolute;
            }
            if (z >= -0x8B5) {
                result = func_8005C7A0(768);
                position = *(u16 *)(record + 6);
                relativeValue = result + 2048;
relative:
                position += relativeValue;
                *(u16 *)(record + 0x3CA) = position;
                goto fallbackDone;
            } else {
                absoluteValue = func_8005C7A0(256) + 512;
            }
absolute:
            *(u16 *)(record + 0x3CA) = absoluteValue;
fallbackDone:
            return 0;
        }
        candidate = bank + (choices[func_8001E6B8(count)] % 24) * 1000;
        *(s16 *)(record + 0x3C8) = *(u16 *)(candidate + 2);
        *(s16 *)(record + 0x3CA) = *(u16 *)(candidate + 6);
        return candidate[0x38D];
    }
}
