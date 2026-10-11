#include "common.h"

extern u8 D_8010A392;
extern u8 scratch29A __asm__("0x1F80029A");
extern s32 func_8001E6B8(s32);
extern void func_800AB620(u32);
extern s32 func_80057AE4(void *, u32, u32);

/* Preserve conditional global reads, random draws and callback chronology.
 * Record/helper APIs and global meanings remain provisional. This void view
 * retains the observed result-register residue, not a recovered return API. */
void func_800578E0(void *record)
{
    if (D_8010A392 == 0 && scratch29A == 1 && func_8001E6B8(2) == 0) {
        func_800AB620(16);
        if (func_8001E6B8(2) != 0 || func_80057AE4(record, 0, 1) == 0) {
            func_800AB620(0xD55);
        }
    }
}
