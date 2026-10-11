#include "common.h"

extern s16 D_800E6C18;
extern u8 D_800FF748[];
extern void func_8004F82C(void);
extern void func_8004F994(u32);

/* Preserve the signed mode gates and helper calls before the ten-byte scan.
 * The starting displacement and 40-byte stride are partial access views, not
 * recovered ownership/layouts; helper APIs and global meanings are provisional. */
s32 func_8004F790(void)
{
    s32 mode = D_800E6C18;
    u8 *base = D_800FF748;
    s32 count;
    u32 offset;

    if (mode >= 0) {
        if (mode < 4) {
            goto firstHelper;
        } else if (mode == 9) {
            goto secondHelper;
        }
    }
    goto scan;
firstHelper:
    func_8004F82C();
    goto scan;
secondHelper:
    func_8004F994(16);
scan:
    for (count = 0, offset = 0x410; count < 10; count++, offset += 40) {
        u8 *entry = base + offset;

        if (entry[0x5DC4] != 0) {
            return 1;
        }
    }
    return 0;
}
