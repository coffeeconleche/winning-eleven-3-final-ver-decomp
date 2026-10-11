#include "common.h"

extern u8 D_800EF9C8;
/* These are partial argument views established from the complete callees. */
extern u32 func_800174E0(u32 selector, u32 view, u32 mask);
extern void func_800AB620(s32 value);
extern void func_8004FD14(u32 value);
extern void func_800171C4(u32 value);

/* No incoming argument is consumed. Early-exit register residues and the
 * final callback's residue are not promoted to a semantic return value. */
void func_80017414(void)
{
    u32 state = *(u8 *)0x1F800298;

    if ((state == 5 || state == 3) && *(u8 *)0x1F80029A != 11 &&
        func_800174E0(0, 1, 0x100) && func_800174E0(0, 1, 0x800)) {
        func_800AB620(2);
        func_8004FD14(1);
        /* Partial scratch access views only, after both callbacks. */
        *(u8 *)0x1F8002C0 = 0;
        *(u8 *)0x1F8002A1 = 0;
        *(u8 *)0x1F8002A0 = 0;
        *(u8 *)0x1F8002C2 = 0;
        *(u8 *)0x1F8001EC = 0;
        *(u8 *)0x1F8001E8 = 1;
        *(u16 *)0x1F800234 = 0;
        D_800EF9C8 = 0;
        func_800171C4(11);
    }
}
