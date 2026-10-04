#include "common.h"

extern u32 D_801DADD0[];
extern u8 D_8010866A, D_8011CE9C[], D_8011CE9D[];
extern s32 func_801AA778(u32, u32);

/* Build two observed bit tables from the byte-pair map. The original table
 * declarations and supported mode range are unknown; no new bounds are added. */
void func_801BD3F0(void) {
    s32 mode = 0;
    u32 *initial = D_801DADD0;
    u32 *first;
    u32 *second;
    /* Retain the separate initial pointer and clearing cursor. */
    __asm__("" : "=r"(initial) : "0"(initial));
    first = initial;
    second = first + 16;
    do {
        *second = 0;
        *first = 0;
        first++;
        mode++;
        second++;
    } while (mode < 16);
    mode = 0;
    if (mode <= D_8010866A) {
        u32 one = 1;
        u32 *firstBase = D_801DADD0;
        u32 *secondBase = firstBase + 16;
        /* Keep one live across the helper instead of rematerializing it.
         * It is unbound, so the compiler emits its measured spill/reload. */
        __asm__("" : "=r"(one) : "0"(one));
        do {
            u32 extra = (mode >= 15) * 16;
            s32 pair = 0;
            u32 bit = one << mode;
            u32 mask = ~bit;
            do {
                u32 index = pair * 2 + mode * 16;
                u32 rawFirst = D_8011CE9C[index];
                u32 rawSecond = D_8011CE9D[index];
                u32 firstIndex = (u8)rawFirst;
                u32 secondIndex = (u8)rawSecond;
                s32 result = func_801AA778(firstIndex + extra, secondIndex);
                /* Retain the offset lifetime and allocation across this call. */
                __asm__("" : : "r"(extra));
                if (result == 2) {
                    goto case_two;
                }
                if (result < 3) {
                    if (result == one) {
                        goto case_one;
                    }
                    goto clear;
                }
                if (result == 3) {
                    goto case_three;
                }
                goto clear;
case_one:
                {
                    u32 *firstSlot = (u32 *)((u32)(firstIndex * 4) + (u32)firstBase);
                    u32 *secondSlot = (u32 *)((u32)(firstIndex * 4) + (u32)secondBase);
                    u32 resultBit = result << mode;
                    u32 resultMask = ~resultBit;
                    *firstSlot &= resultMask;
                    *secondSlot |= resultBit;
                    firstBase[secondIndex] |= resultBit;
                    secondBase[secondIndex] &= resultMask;
                    goto done;
                }
case_two:
                    firstBase[firstIndex] |= bit;
                    secondBase[firstIndex] &= mask;
                    firstBase[secondIndex] &= mask;
                    secondBase[secondIndex] |= bit;
                    goto done;
case_three:
                    firstBase[firstIndex] |= bit;
                    secondBase[firstIndex] |= bit;
                    firstBase[secondIndex] |= bit;
                    secondBase[secondIndex] |= bit;
                    goto done;
clear:
                    /* Preserve raw mapped indices on the unsupported-result path. */
                    firstBase[rawFirst] &= mask;
                    secondBase[rawFirst] &= mask;
                    firstBase[rawSecond] &= mask;
                    secondBase[rawSecond] &= mask;
done:
                pair++;
            } while (pair < 8);
            mode++;
        } while (mode <= D_8010866A);
    }
}
