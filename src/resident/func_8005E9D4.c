#include "common.h"

extern u32 func_80065A20(u8 *);
extern void func_8006682C(u8 *);
extern void func_8005EA94(u8 *);
extern u8 D_8010C1D8[];
extern u8 D_8010C205;
extern u8 D_8010C1EB;

/* Partial byte access and void views; full layouts, callback APIs and the
 * original return declaration remain provisional. */
void func_8005E9D4(u8 *record)
{
    s32 state = record[0x396];
    u8 *base;
    s32 phase;
    s32 angle;
    s32 difference;
    s32 within;

    base = D_8010C1D8;
    switch (state) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 14:
        D_8010C205 = func_80065A20(record);
        func_8006682C(record);
        D_8010C1EB = 0;
        /* Both byte inputs are reloaded after the callbacks. */
        phase = record[0x399] * 128;
        angle = record[0x3AA];
        difference = (u8)(angle - phase);
        if ((u8)difference > 128) {
            within = ((phase - angle) & 255) < 73;
            if (within) {
                /* Actual base-pointer use retains this conditional path and
                 * saved base; it emits no instructions, accesses or clobbers.
                 * Removing it produces 180 rather than the original 192 bytes. */
                __asm__("" : : "r"(base));
                goto dispatch;
            }
        } else if (difference < 73) {
            goto dispatch;
        }
        base[0x13] = 1;
dispatch:
        func_8005EA94(record);
        break;
    }
}
