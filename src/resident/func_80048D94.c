#include "common.h"

extern s32 func_80054A68(u8 *, u32);
extern void func_8005BA78(u8 *, u32, u32);
extern u32 func_8005B7CC(u32, u32, u32);

/* Native PS1 partial record view; helper effects and word-sized APIs stay opaque.
 * Angle arithmetic is unsigned low-word arithmetic, narrowed only where observed. */
void func_80048D94(u8 *record, u32 first, u32 second, u32 limit)
{
    u8 *current = record;
    register u32 initialFirst __asm__("$16") = first;
    register u32 adjusted __asm__("$18") = second;
    u32 savedLimit = limit;
    u32 savedFirst = initialFirst;
    u32 savedSecond = adjusted;
    register u8 *argumentRecord __asm__("$4");
    u32 flagDifference;
    register u32 difference __asm__("$4");
    u32 distance;
    u32 result;
    u32 direction;
    u32 amount;
    u32 sum;

    if (func_80054A68(current, savedFirst & 255) != 0) {
        return;
    }
    difference = initialFirst - adjusted;
    adjusted -= initialFirst;
    if ((difference & 255) <= 128) {
        adjusted = difference;
    }
    if (*(u16 *)(current + 0x38E) == 38 && (adjusted & 255) >= 16) {
        adjusted -= 8U;
    }
    if (*(u16 *)(current + 0x38E) == 27 && (adjusted & 255) < 81) {
        adjusted += 8U;
    }
    if ((adjusted & 255) < 33) {
        argumentRecord = current;
        goto straightArgs;
    }
    /* Keep this consumed adjusted word distinct from the earlier masked test. */
    __asm__("" : "=r"(adjusted) : "0"(adjusted));
    if (*(u16 *)(current + 0x38E) == 27) {
        distance = adjusted & 255;
        goto side;
    }
    {
        register u32 facing __asm__("$4") = current[0x3AA];
        u32 nearDifference = (savedFirst - facing) & 255;
        if (nearDifference >= 129) {
            u32 reverse = (facing - savedFirst) & 255;
            argumentRecord = current;
            if ((s32)reverse >= 32) {
                goto straightArgs;
            }
            goto turn;
        }
        argumentRecord = current;
        if ((s32)nearDifference < 32) {
            goto turn;
        }
        goto straightArgs;
    }
straightArgs:
    {
        u32 selector = 38;
        u32 frameIndex;
        /* Initialized actual selector argument; no instruction or memory effect. */
        __asm__("" : "=r"(selector) : "0"(selector));
        frameIndex = current[0x390];
        adjusted = savedFirst;
        func_8005BA78(argumentRecord, selector, frameIndex);
    }
    initialFirst = savedFirst & 255;
    result = func_8005B7CC(initialFirst, current[0x3AA], 12);
    direction = initialFirst;
    goto merge;
turn:
    if (*(u16 *)(current + 0x38E) != 27) {
        flagDifference = savedFirst - savedSecond;
        goto flag;
    }
    distance = adjusted & 255;
side:
    if (distance < 81) {
        flagDifference = savedFirst - savedSecond;
flag:
        current[0x3AC] = (flagDifference & 255) <= 128;
    }
    func_8005BA78(current, 27, current[0x390]);
    {
        register u32 lowFirst __asm__("$3") = savedFirst & 255;
        if (current[0x3AC] == 0) {
            adjusted = lowFirst + 40U;
        } else {
            adjusted = lowFirst - 40U;
        }
    }
    result = func_8005B7CC(adjusted & 255, current[0x3AA], 12);
    direction = savedFirst & 255;
merge:
    current[0x3AA] = result;
    current[0x3A4] = func_8005B7CC(direction, current[0x3A4], 24);
    /* Preserve the observed field rereads after the byte store. */
    __asm__("" : "=r"(current) : "0"(current));
    {
        u32 currentFacing = current[0x3AA];
        u32 compared = adjusted & 255;
        if (currentFacing != compared) {
            goto mismatch;
        }
        currentFacing = current[0x3A4];
        compared = savedFirst & 255;
        if (currentFacing != compared) {
            goto mismatch;
        }
        compared = savedLimit & 65535;
        /* Both original low-halfword uses consume this unchanged actual input. */
        __asm__("" : "=r"(savedLimit) : "0"(savedLimit));
        amount = savedLimit & 65535;
        if (compared < 49) {
            goto accelerate;
        }
        savedLimit = 48;
        goto amount;
    }
mismatch:
    savedLimit = 34;
amount:
    amount = savedLimit & 65535;
accelerate:
    sum = *(u32 *)(current + 0x3A0) + (amount >> 2);
    *(u32 *)(current + 0x3A0) = sum;
    if (amount < sum) {
        *(u32 *)(current + 0x3A0) = amount;
    }
}
