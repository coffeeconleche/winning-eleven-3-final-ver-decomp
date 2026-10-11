#include "common.h"

/* Measured argument view; complete helper API and scratch meanings unknown. */
extern void func_800AB620(s32);

/* The void view does not establish the original return contract. */
void func_80098968(void)
{
    if (*(s16 *)0x1F8000E0 == 0 && *(u8 *)0x1F80029A != 10) {
        func_800AB620(0x514);
    }
    *(u8 *)0x1F8000DE = 3;
}
