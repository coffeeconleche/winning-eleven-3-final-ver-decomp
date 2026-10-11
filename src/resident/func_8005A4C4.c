#include "common.h"

/* Measured call-site view; the original helper API is unknown. */
extern void func_800AB620(s32);

/* The known caller ignores the result; no original return contract is claimed. */
void func_8005A4C4(void)
{
    if (*(u8 *)0x1F8002E1 != 5) {
        func_800AB620(0x51C);
    }
}
