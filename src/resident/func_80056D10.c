#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A392;
extern u16 D_800C7D50[];
extern u16 D_800C7D5C[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* The halfword capture keeps the loaded unsigned scratch value and the
 * independently loaded signed record coordinate live before sign conversion.
 * Both are consumed by the original signed-halfword product. The call argument
 * binding selects its actual ABI register; neither aid emits instructions.
 * Native use requires PS1 scratch RAM and the original record/global layout.
 */
void func_80056D10(u8 *record)
{
    u8 *base = D_800FF748;
    s32 position;
    s32 below;
    s32 mode;
    register s32 argument __asm__("$4");
    u32 loaded;
    s32 coordinate;

    if (record[0x396] == 9 && D_8010A392 == 0) {
        position = *(s16 *)(record + 2);
        if (record[0x399] != 0) {
            below = -position < 0x20E3;
        } else {
            below = position < 0x20E3;
        }
        if (!below) {
            func_800AB620(0x10);
            mode = *(s16 *)(record + 0x3C4);
            if (mode == 2) {
                argument = (base[0xAC55] & 3) + 0xDA6;
            } else if (mode == 0 && func_8001E6B8(2) != 0) {
                argument = D_800C7D5C[(u8)(base[0xAC55] % 3U)];
            } else {
                loaded = *(u16 *)0x1F8002BA;
                coordinate = *(s16 *)(record + 6);
                __asm__("" : "=r"(loaded), "=r"(coordinate) : "0"(loaded), "1"(coordinate));
                if (coordinate * (s16)loaded < 0) {
                    argument = D_800C7D50[(u8)(base[0xAC55] % 6U)];
                } else {
                    argument = (base[0xAC55] & 1) | 0xDAA;
                }
            }
            func_800AB620(argument);
            base[0xAC55] += 1;
        }
    }
}
