#include "common.h"

extern u8 D_800FF6A4;
extern void func_8005A4C4(void);
/* Access views of existing scratch halfwords, not storage definitions. */
extern u16 scratch0BE __asm__("0x1F8000BE");
extern u16 scratch0C0 __asm__("0x1F8000C0");
extern u16 scratch0C2 __asm__("0x1F8000C2");
extern u16 scratch0C6 __asm__("0x1F8000C6");
extern u16 scratch0C8 __asm__("0x1F8000C8");
extern u16 scratch0CA __asm__("0x1F8000CA");

/* Ordered partial record/scalar views. Unsigned subtraction wraps a negated
 * word before target signed interpretation and division, including INT_MIN.
 * Historical declarations, layouts, pointer/alignment/alias contracts and
 * hardware semantics remain provisional. Known callers ignore the varying
 * V0 residue (1 or 4); the historical return declaration is not established. */
void func_800987CC(u8 *record, u32 flag)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 mode = D_800FF6A4;
    s32 quotient;

    if (mode == 1) {
        /* Genuine wrapped dividends: this binding retains the measured word
         * reuse through /2 and /6. Each assignment precedes its actual use;
         * it is a matching aid, not a recovered historical declaration. */
        register s32 dividend __asm__("$2");
        scratch0BE = *(u32 *)(record + 0x10);
        scratch0C0 = *(s32 *)(record + 0xC) / 256;
        dividend = (s32)(0u - *(u32 *)(record + 8));
        scratch0C2 = dividend / 2;
        /* This fresh word capture precedes C8, unlike the later word8 read. */
        dividend = (s32)(0u - *(u32 *)(record + 0x10));
        quotient = dividend / 6;
        scratch0C8 = 4;
        scratch0C6 = quotient;
        scratch0CA = *(s32 *)(record + 8) / 20;
    } else if (mode == 2) {
        /* This mode's actual /6 dividend and quotient reuse the same word;
         * the later assignment is the fresh wrapped word8 capture for /20.
         * Binding retains that measured lifetime, not substitute game logic. */
        register s32 dividend __asm__("$3");
        scratch0BE = 0u - *(u32 *)(record + 0x10);
        scratch0C0 = *(s32 *)(record + 0xC) / 256;
        scratch0C2 = *(s32 *)(record + 8) / 2;
        dividend = *(s32 *)(record + 0x10);
        dividend /= 6;
        scratch0C8 = 4;
        scratch0C6 = dividend;
        dividend = (s32)(0u - *(u32 *)(record + 8));
        scratch0CA = dividend / 20;
    }

    if (flag == 0) {
        scratch[0xDE] = 1;
    } else {
        func_8005A4C4();
        *(u16 *)(scratch + 0xE0) = 4;
        scratch[0xDE] = 0;
    }
}
