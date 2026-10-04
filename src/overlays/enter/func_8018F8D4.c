#include "common.h"

extern u8 D_8010865D;
extern s32 func_8001E6B8(s32 divisor);
extern void func_800AB620(s32 value);
extern void func_8005A1F0(u8 first, u16 second);

void func_8018F8D4(void)
{
    func_800AB620(func_8001E6B8(2) + 0xC83);
    func_8005A1F0(((u8 *)0x1F8002DD)[D_8010865D], 0xFA6);
    func_8005A1F0(((u8 *)0x1F8002DD)[D_8010865D ^ 1], 0xFD6);
}
