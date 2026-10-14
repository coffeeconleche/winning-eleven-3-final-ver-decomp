#include "common.h"

/* Access views of existing scratch storage, not new objects or MMIO claims. */
extern s16 scratch0F8 __asm__("0x1F8000F8");
extern s16 scratch0FC __asm__("0x1F8000FC");
extern u8 *scratch2F4 __asm__("0x1F8002F4");
/* The helpers narrow their word inputs and sign-extend their low16 results.
 * These callsite views do not establish complete historical helper APIs. */
extern s32 func_8005A7E4(s32, s32, s32);
extern s32 func_8005A76C(s32, s32, s32);

void func_8006A16C(u8 *arg0)
{
    s16 direction = -1;
    s32 phase;
    u16 position;
    s32 target;
    u16 margin;

    if (arg0[0x399] == 0) {
        direction = 1;
    }
    if (*(u8 *)0x1F800009 != 0) {
        s32 state = ((u8 *)0x1F8002FF)[arg0[0x398]];
        /* Keep the original branch graph, including its signed phase test. */
        if (state == 1) goto blend10;
        if (state >= 2) goto done;
        if (state != 0) goto done;
        scratch0F8 = func_8005A7E4(scratch0F8,
            ((s32 *)0x1F800314)[arg0[0x399]], 20);
        scratch0FC = func_8005A76C(scratch0FC,
            *(s16 *)(scratch2F4 + 6), 1);
        goto done;
blend10:
        scratch0F8 = func_8005A7E4(scratch0F8,
            ((s32 *)0x1F800314)[arg0[0x399]], 10);
    } else {
        phase = ((u8 *)0x1F8002FF)[arg0[0x398]];
        position = *(u16 *)(arg0 + 2);
        scratch0F8 = position;
        /* Reread the record selector after the possibly aliasing store. */
        target = ((s32 *)0x1F800314)[arg0[0x399] ^ 1];
        /* phase is a byte: this signed expression is within -194304..1536.
         * Narrow the margin exactly where the original masks it to 16 bits. */
        margin = (2 - phase) * 0x300;
        {
            /* Unsigned operands retain MIPS low-word multiplication and
             * subtraction even for direction=-1 and target=INT_MIN.
             * Signed casts below are measured target word interpretations.
             * Two initialized real-value bindings retain the original product
             * and cutoff allocation; no empty constraints are needed. */
            register u32 directedTarget __asm__("$6") =
                (u32)(s32)direction * (u32)target;
            register u32 cutoff __asm__("$2") = directedTarget - 0xB00U;
            if ((s32)(cutoff - margin) <
                (s32)((u32)(s32)direction * (u32)(s32)(s16)position)) {
                scratch0F8 = (u32)target -
                    (u32)(margin + 0xB00) * (u32)(s32)direction;
            }
        }
    }
done:
    ;
}
