#include "common.h"

extern s16 scratch0F8 __asm__("0x1F8000F8");
extern s16 scratch0FC __asm__("0x1F8000FC");
extern s16 func_8005A7E4(s32 first, s32 second, s32 weight);
extern s16 func_8005A76C(s32 first, s32 second, s16 weight);

/* Partial original record/scratch views, not a recovered native API.
 * The three bindings retain measured allocation of real initialized, consumed
 * values: the record pointer, directed target product, and cutoff. No emitted
 * assembly or extra storage is used. Unsigned products/subtractions deliberately
 * preserve low MIPS words, including direction=-1 and target=INT_MIN.
 */
void func_80069660(u8 *input)
{
    register u8 *record __asm__("$6") = input;
    u8 side = record[0x399];
    s16 direction = -1;
    s32 phase;
    s32 average;
    s32 target;
    u16 margin;

    if (side == 0) {
        direction = 1;
    }
    if (*(u8 *)0x1F800009 != 0) {
        phase = ((u8 *)0x1F8002FF)[record[0x398]];
        if (phase == 1) {
            goto blend5;
        }
        if (phase >= 2) {
            goto done;
        }
        if (phase != 0) {
            goto done;
        }
        scratch0F8 = func_8005A7E4(scratch0F8,
            ((s32 *)0x1F800314)[side], 10);
        scratch0FC = func_8005A76C(scratch0FC,
            *(s16 *)(*(u8 **)0x1F8002F4 + 6), 1);
        goto done;
blend5:
        scratch0F8 = func_8005A7E4(scratch0F8,
            ((s32 *)0x1F800314)[side], 5);
    } else {
        average = (scratch0F8 + *(s16 *)(record + 2) * 3) / 4;
        scratch0F8 = average;
        target = ((s32 *)0x1F800314)[record[0x399] ^ 1];
        phase = ((u8 *)0x1F8002FF)[record[0x398]];
        margin = (2 - phase) * 0x280;
        {
            register u32 directedTarget __asm__("$5") =
                (u32)(s32)direction * (u32)target;
            register u32 cutoff __asm__("$2") = directedTarget - 0x600U;
            if ((s32)(cutoff - margin) <
                (s32)((u32)(s32)direction * (u32)(s32)(s16)average)) {
                scratch0F8 = (u32)target -
                    (u32)(margin + 0x600) * (u32)(s32)direction;
            }
        }
    }
done:
    ;
}
