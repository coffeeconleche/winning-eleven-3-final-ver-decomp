#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* Partial views of existing records and scratch memory; historical layout
 * and helper APIs remain provisional. Native code must translate scratch
 * addresses and resolve roster allocation. The empty operand identity retains
 * the initialized halfword load without instructions or memory clobbers. */
void func_8005726C(u8 *record)
{
    u8 *base;
    s32 position;
    s32 lateral;
    u32 loaded;

    func_800AB620(0x11);
    base = D_800FF748;
    if (func_8001E6B8(2) == 0) {
        position = *(s16 *)0x1F8002BC;
        if (record[0x399] != 0) {
            if (-position < -0x23E2) {
                goto check_lateral;
            }
        } else if (position < -0x23E2) {
check_lateral:
            loaded = *(u16 *)0x1F8002BE;
            __asm__("" : "=r"(loaded) : "0"(loaded));
            lateral = (s16)loaded;
            if (lateral < 0) {
                lateral = -lateral;
            }
            if (lateral < 0x12F4) {
                goto trigger;
            }
        }
    } else {
trigger:
        func_800AB620((u8)(base[0xAC5C] % 5U) + 0xDCD);
        base[0xAC5C] += 1;
    }
}
