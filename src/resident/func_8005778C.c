#include "common.h"

extern u32 scratch2B0 __asm__("0x1F8002B0");
extern u8 D_8010A3AF;
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);
extern s32 func_80057AE4(void *, u32, u32);

/* Record/global domains and helper APIs are provisional. Preserve the random
 * chronology, conditional callback, unsigned remainder narrowed before the
 * final callback, and real global-byte reread afterwards. The void view does
 * not invent an original return contract for observed register residues. */
void func_8005778C(void *record)
{
    if (scratch2B0 != 4)
        goto done;
    if (func_8001E6B8(2) == 0)
        goto done;
    func_800AB620(16);
    if (func_8001E6B8(2) == 0) {
        if (func_80057AE4(record, 0, 0) != 0)
            goto done;
    }
    func_800AB620((u8)((u32)D_8010A3AF % 3) + 0xD4C);
    D_8010A3AF++;
done:
    ;
}
