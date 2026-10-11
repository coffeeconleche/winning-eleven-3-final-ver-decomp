#include "common.h"

/* A no-storage scratch view; helper APIs and field meaning are provisional. */
extern u8 scratch29A __asm__("0x1F80029A");
extern s32 func_8001E6B8(s32);
extern void func_800AB620(u32);

/* This source view does not establish an original return contract. */
void func_80057A94(void)
{
    if (scratch29A == 1) {
        if (func_8001E6B8(2) != 0) {
            func_800AB620(0x10);
            func_800AB620((u32)func_8001E6B8(2) + 0xD49);
        }
    }
}
