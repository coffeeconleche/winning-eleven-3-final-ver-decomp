#include "common.h"

/* Measured signed-word call views and partial record access, APIs provisional. */
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);

void func_8005A218(void)
{
    if (*(u8 *)0x1F80029A == 1 && func_8001E6B8(2) != 0) {
        u8 *record;
        s32 argument;

        func_800AB620(16);
        /* Capture the scratch pointer only after the callback. */
        record = *(u8 **)0x1F8002F4;
        if (*(s16 *)(record + 4) < -0x24F) {
            argument = func_8001E6B8(3) + 0xD37;
        } else {
            argument = func_8001E6B8(2) + 0xD35;
        }
        func_800AB620(argument);
    }
}
