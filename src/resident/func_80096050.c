#include "common.h"

/* Scalar address views allocate no storage and do not imply hardware volatility. */
extern u32 scratch32C __asm__("0x1F80032C");
extern u8 scratch2F1 __asm__("0x1F8002F1");
extern u8 scratch2F0 __asm__("0x1F8002F0");
extern u8 scratch309 __asm__("0x1F800309");
extern void func_800B53D8(s32);

/* Store the word before the callback, then clear the three bytes in order.
 * Scratch meanings, helper API and original return contract remain provisional;
 * the void view retains the helper's observed result-register residue. */
void func_80096050(void)
{
    scratch32C = 1024;
    func_800B53D8(1024);
    scratch2F1 = 0;
    scratch2F0 = 0;
    scratch309 = 0;
}
