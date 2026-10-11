#include "common.h"

extern u8 D_8010A392;
extern u8 D_8010A3BB;
extern u8 scratch29A __asm__("0x1F80029A");
extern u8 scratch2DF __asm__("0x1F8002DF");
/* Observed word-register views; complete helper APIs remain unknown. */
extern void func_800AB620(u32);
extern u32 func_8001E6B8(s32);

/* State meanings and the original return contract remain provisional. */
void func_8005A4FC(void)
{
    if (D_8010A392 == 0 && scratch29A == 1 &&
        scratch2DF == 1 && D_8010A3BB == 0) {
        func_800AB620(0x10);
        func_800AB620(func_8001E6B8(8) + 0xE3E);
        D_8010A3BB = 1;
    }
}
