#include "common.h"

extern u8 D_801DA2F4[], D_801D8DF8;
extern s32 func_8006FA60(u32, u32);
extern s32 func_8006F84C(u32, u32);

void func_8019D75C(u32 selector) {
    /* The empty matching ties below retain per-call constant setup rather
     * than extra loop-invariant saved registers, and keep each first-argument
     * setup before its constant. They emit no instructions or memory accesses. */
    s32 index, equal;
    s32 value;
    s32 third;
    u32 argument;
    u32 column, selected;
    switch ((s32)(u8)selector) {
    case 1:
    case 11:
        column = (u8)((u32)(u8)selector % 10);
        for (index = 0; index < 2; index++) {
            selected = D_801DA2F4[column];
            argument = index + 40;
            value = 161;
            asm("" : "=r"(value) : "0"(value), "r"(argument));
            equal = index == selected;
            value -= equal;
            func_8006FA60(argument, value);
            func_8006FA60(index + 43, value);
            argument = index + 46;
            third = 163;
            asm("" : "=r"(third) : "0"(third), "r"(argument));
            func_8006FA60(argument, third - equal);
        }
        break;
    case 2:
        index = 0;
        column = 2;
        for (; index < 3; index++) {
            selected = D_801DA2F4[column];
            argument = index + 40;
            value = 161;
            asm("" : "=r"(value) : "0"(value), "r"(argument));
            equal = index == selected;
            value -= equal;
            func_8006FA60(argument, value);
            func_8006FA60(index + 43, value);
            argument = index + 46;
            third = 163;
            asm("" : "=r"(third) : "0"(third), "r"(argument));
            func_8006FA60(argument, third - equal);
        }
        if (D_801D8DF8 == 0) {
            func_8006F84C(42, 48);
            func_8006F84C(45, 48);
            func_8006F84C(48, 48);
        } else {
            func_8006F84C(42, 128);
            func_8006F84C(45, 128);
            func_8006F84C(48, 128);
        }
        break;
    }
}
