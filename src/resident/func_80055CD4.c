#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A392;
extern u16 D_800C7D34[];
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80057AE4(u8 *record, u32 first, u32 second);
extern void func_800AB620(s32 value);

/* Partial views of existing records/table storage; historical layouts and
 * helper meanings remain provisional. Native code must translate scratch
 * addresses and resolve allocations. The empty identity retains a consumed
 * initialized halfword load without instructions or memory clobbers. The
 * argument binding holds only values assigned after the preceding callbacks. */
void func_80055CD4(u8 *record, u8 *other)
{
    u8 *base = D_800FF748;
    s32 position;
    s32 below;
    s32 lateral;
    register s32 argument __asm__("$4");
    u32 loaded;

    if (D_8010A392 == 0) {
        position = *(s16 *)0x1F8000FE;
        if (record[0x399] != 0) {
            below = -position < 0x1FE2;
        } else {
            below = position < 0x1FE2;
        }
        if (!below) {
            if (*(s16 *)(record + 0x3C4) == 1) {
                loaded = *(u16 *)0x1F800100;
                __asm__("" : "=r"(loaded) : "0"(loaded));
                lateral = (s16)loaded;
                if (lateral < 0) {
                    lateral = -lateral;
                }
                if (lateral < 0x12F4) {
                    func_800AB620(0x11);
                    if (func_8001E6B8(4) != 0) {
                        if (func_8001E6B8(2) == 0) {
                            func_80057AE4(other, 0, 1);
                        } else {
                            argument = 0xCBD;
                            goto dispatch;
                        }
                    } else {
                        argument = (u8)(base[0xAC52] % 3U) + 0xCBF;
                        goto dispatch;
                    }
                    goto increment;
                }
                func_800AB620(0x11);
                if (func_8001E6B8(2) != 0 || func_80057AE4(other, 0, 1) == 0) {
                    argument = D_800C7D34[(u8)(base[0xAC52] % 3U)];
                    goto dispatch;
                }
            } else {
                func_800AB620(0x11);
                if (func_8001E6B8(4) != 0) {
                    if (func_8001E6B8(2) == 0) {
                        if (func_80057AE4(other, 0, 1) == 0) {
                            argument = 0xCC5;
                            goto dispatch;
                        }
                    } else {
                        argument = 0xCC5;
                        goto dispatch;
                    }
                } else {
                    argument = (base[0xAC52] & 3) + 0xCC6;
dispatch:
                    func_800AB620(argument);
                }
increment:
                base[0xAC52] += 1;
            }
        }
    }
}
