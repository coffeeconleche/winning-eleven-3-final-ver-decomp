#include "common.h"

extern u8 D_8010A5A8[];
extern u32 func_8004F3CC(void);
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* Partial scratchpad byte/word views. State meanings, complete record extent,
 * helper contracts and the historical return convention remain unknown.
 * The first helper result is interpreted as a word for the observed multu. */
void func_80055974(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 value;
    u32 threshold;
    u32 id;

    if (*(u8 *)0x1F8002E1 == 5) {
        return;
    }
    value = func_8004F3CC() / 3600U;
    switch (*(u8 *)0x1F8002DF) {
    case 1:
        value += 45U;
        break;
    case 2:
        value += 90U;
        break;
    case 3:
        value += 105U;
        break;
    }
    switch (D_8010A5A8[0]) {
    case 0:
        threshold = value / 18U;
        if (threshold < scratch[0x331]) {
            return;
        }
        break;
    case 1:
    default:
        threshold = value / 9U;
        if (threshold < scratch[0x331]) {
            return;
        }
        break;
    case 2:
        threshold = value / 6U;
        if (threshold < scratch[0x331]) {
            return;
        }
        break;
    }
    scratch[0x331] = threshold + 1U;
    do {
        id = ((u32)func_8001E6B8(20) + 0x13BAU) & 0xFFFFU;
        /* Reread the current prior ID after every helper invocation. */
    } while (id == *(u32 *)(scratch + 0x2F8));
    func_800AB620(id);
    *(u32 *)(scratch + 0x2F8) = id;
}
