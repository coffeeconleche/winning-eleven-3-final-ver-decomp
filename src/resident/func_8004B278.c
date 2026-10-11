#include "common.h"

/* Numeric scalar views allocate no storage and imply no hardware volatility. */
extern u16 scratch2EE __asm__("0x1F8002EE");
extern u8 scratch2F2 __asm__("0x1F8002F2");
extern u16 scratch0F8 __asm__("0x1F8000F8");
extern u16 scratch0FC __asm__("0x1F8000FC");
extern u16 scratch2B4 __asm__("0x1F8002B4");
extern u16 scratch2B8 __asm__("0x1F8002B8");
extern u16 scratch2B6 __asm__("0x1F8002B6");
extern u16 scratch2BA __asm__("0x1F8002BA");
extern s32 func_8004B2E0(u32);

/* Read both unsigned halves after the callback, then copy them in store order.
 * Scratch meanings and helper API are provisional. The void view retains the
 * first loaded half in the result register, not a recovered return contract. */
void func_8004B278(void)
{
    u32 first;
    u32 second;

    scratch2EE = 6;
    scratch2F2 = 1;
    func_8004B2E0(255);
    first = scratch0F8;
    second = scratch0FC;
    scratch2B4 = first;
    scratch2B8 = first;
    scratch2B6 = second;
    scratch2BA = second;
}
