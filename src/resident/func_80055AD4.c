#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* Partial pointer/byte/halfword views only; object, state, helper APIs and
 * the historical return convention remain provisional. */
void func_80055AD4(u8 *object)
{
    u8 *base = D_800FF748;
    u8 *other;
    s32 value;

    if (func_8001E6B8(5) != 0) {
        other = *(u8 **)0x1F8002F4;
        value = *(s16 *)(other + 2);
        if (object[0x399] != 0) {
            value = -value;
        }
        if (value >= -0x22E1) {
            return;
        }
    }
    func_800AB620(0x11);
    func_800AB620((base[0xAC51] & 1) | 0xD3A);
    /* Physical reread after the second callback, which may alter storage. */
    base[0xAC51] += 1;
}
