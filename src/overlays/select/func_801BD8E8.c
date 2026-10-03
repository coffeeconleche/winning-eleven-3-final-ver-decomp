#include "common.h"

extern u8 D_801D9318[], D_801D8FF2[], D_801D8A58[];
extern s32 func_8018E994(s16 *, s32, s32);

s32 func_801BD8E8(void) {
    s32 complete = 1, i = 0;
    u8 *baseB = D_801D9318;
    u8 *baseA;
    u8 *highB, *highA, *lowB, *lowA;
    u8 *counter;

    highB = baseB + 224;
    baseA = D_801D8FF2;
    highA = baseA + 192;
    lowB = baseB;
    lowA = baseA;
    counter = D_801D8A58;
    /* Retain both setup bases through their cursor copies, rather than folding
     * each address directly into a saved cursor. This emits no instructions. */
    __asm__ volatile ("" : : "r"(baseB), "r"(baseA));

    do {
        u8 delay = *counter;
        if (delay != 0) {
            *counter = delay - 1;
            complete = 0;
        } else {
            complete &= func_8018E994((s16 *)lowA, -146, 32);
            complete &= func_8018E994((s16 *)lowB, -164, 32);
            complete &= func_8018E994((s16 *)highA, 32, 32);
            complete &= func_8018E994((s16 *)highB, 64, 32);
        }
        highB += 28;
        highA += 24;
        lowB += 28;
        lowA += 24;
        i++;
        counter++;
    } while (i < 8);
    return complete;
}
