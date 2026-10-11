#include "common.h"

/* A no-storage view of the observed post-callback scratch byte. */
extern u8 scratch29A __asm__("0x1F80029A");

/* These helper declarations model register use, not complete original APIs. */
extern s32 func_8001E6B8(s32);
extern void func_800AB620(u32);

/* This source view does not establish the original return contract. */
void func_80059D3C(void)
{
    if (func_8001E6B8(2) == 0) {
        u32 command;

        if (scratch29A == 4) {
            command = 0xDB8;
        } else {
            command = 0xDFC;
        }
        func_800AB620(command);
    }
}
