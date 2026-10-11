#include "common.h"

extern s32 func_8004FBC4(s32);
extern void func_800171C4(u32);
extern u8 D_8010A369;
extern u8 D_8010A368;
extern u8 D_800EF9C8;
extern u8 scratch1E8 __asm__("0x1F8001E8");

/* Gate four ordered byte clears and the second callback on the first word
 * result. Scratch/global meanings and complete helper APIs remain provisional.
 * The void view preserves observed register residue, not a recovered contract. */
void func_8007DCC4(void)
{
    if (func_8004FBC4(0) != 0) {
        D_8010A369 = 0;
        D_8010A368 = 0;
        scratch1E8 = 0;
        D_800EF9C8 = 0;
        func_800171C4(11);
    }
}
