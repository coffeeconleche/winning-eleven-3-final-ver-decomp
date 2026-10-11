#include "common.h"

/* Existing-symbol access views only. The observed table stride is 18 bytes;
 * its extent, complete record layouts and pointer ownership are unknown. */
extern u8 D_800EF840[][18];
extern u8 *D_800F1068;

/* Provisional call-site views of the original helper APIs. */
extern u8 *func_8001D004(u32 id);
extern void func_8006FA84(u32 selector, u32 value);
extern void func_80075A14(u32 selector);

/* Publish the selected table pointer before callbacks; write both returned
 * record bytes before the second callback. Only the initial selector narrows
 * here: the additions remain full words. The known caller ignores v0, so the
 * void view preserves the last callback's residue without a claimed return. */
void func_80075B50(u32 selector)
{
    u32 index = (u8)selector;
    u8 *entry;

    D_800F1068 = D_800EF840[index];
    entry = func_8001D004(index + 0x6A);
    entry[0xA] = 0x5B;
    entry[0x16] = 0x5B;
    func_8006FA84(index + 0x12, 0);
    func_80075A14(index);
}
