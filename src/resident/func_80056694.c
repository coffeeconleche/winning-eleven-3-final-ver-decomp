#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* Partial byte/halfword views of existing storage. Historical record layout
 * and helper APIs remain provisional; native code needs scratch-address and
 * roster-allocation adaptation. The final counter read follows all callbacks. */
void func_80056694(u8 *record)
{
    u8 *base = D_800FF748;
    s32 position;

    if (func_8001E6B8(2) != 0) {
        return;
    }
    position = *(s16 *)(*(u8 **)0x1F8002F4 + 2);
    if (record[0x399] != 0) {
        if (position >= 0) {
            return;
        }
    } else if (position <= 0) {
        return;
    }
    func_800AB620((base[0xAC6C] & 3) + 0xD81);
    if (func_8001E6B8(3) == 0) {
        func_800AB620((s32)((u32)func_8001E6B8(3) + 0xD86U));
    }
    base[0xAC6C] += 1;
}
