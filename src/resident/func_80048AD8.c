#include "common.h"

extern s32 func_80054A68(u8 *, u32);
extern void func_8005BA78(u8 *, u32, u32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);

/* Partial native PS1 record view; keep opaque helper calls and byte/word widths.
 * All angular changes and counter additions use defined unsigned word arithmetic. */
void func_80048AD8(u8 *record, u32 first, u32 second, u32 limit)
{
    u8 *current = record;
    register u32 adjusted __asm__("$16");
    register u32 workingSecond __asm__("$18");
    register u32 savedLimit __asm__("$20");
    u32 savedFirst;
    u32 savedSecond;
    register u32 middle __asm__("$2");
    u32 difference;
    register u32 lowFirst __asm__("$3");
    u32 result;
    u32 facing;
    u8 flag;
    register u32 amount __asm__("$7");
    u32 increment;
    register u32 sum __asm__("$2");

    /* Actual initialized record copy; the first helper takes the original copy. */
    __asm__("" : "=r"(current) : "0"(current));
    adjusted = first;
    workingSecond = second;
    savedLimit = limit;
    savedFirst = adjusted;
    savedSecond = workingSecond;
    if (func_80054A68(record, savedFirst & 255) != 0) {
        return;
    }
    difference = adjusted - workingSecond;
    adjusted = workingSecond - adjusted;
    if ((difference & 255) <= 128) {
        adjusted = difference;
    }
    if (*(u16 *)(current + 0x38E) == 38 && (adjusted & 255) >= 16) {
        adjusted -= 8U;
    } else if ((adjusted & 255) < 113) {
        adjusted += 8U;
    }
    adjusted &= 255;
    if (adjusted < 33) {
        func_8005BA78(current, 38, current[0x390]);
        adjusted = savedFirst & 255;
        current[0x3AA] = func_8005B7CC(adjusted, current[0x3AA], 12);
        result = func_8005B7CC(adjusted, current[0x3A4], 24);
        facing = current[0x3AA];
        current[0x3A4] = result;
        if (!(facing == adjusted && (result & 255) == facing)) {
            goto mismatch1;
        }
        {
            u32 compared = savedLimit & 65535;
            /* Straight-path actual limit word. */
            __asm__("" : "=r"(savedLimit) : "0"(savedLimit));
            amount = savedLimit & 65535;
            if (compared < 49) {
                goto quarter1;
            }
            savedLimit = 48;
            goto amount1;
        }
mismatch1:
        savedLimit = 34;
amount1:
        amount = savedLimit & 65535;
quarter1:
        sum = *(u32 *)(current + 0x3A0);
        /* Captured actual counter word consumed by the shared unsigned addition. */
        __asm__("" : "=r"(sum) : "0"(sum));
        increment = amount >> 2;
        goto accelerate;
    }
    middle = adjusted < 81;
    if (middle != 0) {
        func_8005BA78(current, 27, current[0x390]);
        flag = ((savedFirst - savedSecond) & 255) <= 128;
        current[0x3AC] = flag;
        lowFirst = savedFirst & 255;
        if (flag == 0) {
            adjusted = lowFirst + 40U;
        } else {
            adjusted = lowFirst - 40U;
        }
        adjusted &= 255;
        current[0x3AA] = func_8005B7CC(adjusted, current[0x3AA], 12);
        workingSecond = savedFirst & 255;
        result = func_8005B7CC(workingSecond, current[0x3A4], 24);
        facing = current[0x3AA];
        current[0x3A4] = result;
        if (!(facing == adjusted && (result & 255) == workingSecond)) {
            goto mismatch2;
        }
        {
            u32 compared = savedLimit & 65535;
            /* Turn-path actual limit word. */
            __asm__("" : "=r"(savedLimit) : "0"(savedLimit));
            amount = savedLimit & 65535;
            if (compared < 49) {
                goto quarter2;
            }
            savedLimit = 48;
            goto amount2;
        }
mismatch2:
        savedLimit = 34;
amount2:
        amount = savedLimit & 65535;
quarter2:
        sum = *(u32 *)(current + 0x3A0);
        increment = amount >> 2;
        goto accelerate;
    }
    if (func_80054A68(current, savedFirst & 255) != 0) {
        return;
    }
    current[0x3AA] = func_8005B7CC(savedSecond & 255, current[0x3AA], 40);
    current[0x3A4] = savedFirst;
    if (*(u16 *)(current + 0x38E) == 13) {
        if (current[0x390] == 0) {
            func_8005BA30(current, 13, 1);
        }
        if ((savedLimit & 65535) >= 35) {
            savedLimit = 34;
        }
        amount = savedLimit & 65535;
        increment = (amount / 6U) & 65535;
        sum = *(u32 *)(current + 0x3A0);
accelerate:
        sum += increment;
        *(u32 *)(current + 0x3A0) = sum;
        if (amount < sum) {
            *(u32 *)(current + 0x3A0) = amount;
        }
    } else {
        func_8005BA30(current, 13, 0);
        current[0x3AC] = ((savedSecond - savedFirst) & 255) <= 128;
        *(u32 *)(current + 0x3A0) = 34;
    }
}
