#include "common.h"

extern u8 D_800FFED6[];

void func_8018E490(u32 selector)
{
    u8 i = 0;
    s32 first;
    s32 second;
    u8 *row;

    /* Empty inputs retain counter/narrowing, constants, then row-address setup.
     * They emit no instructions. The original row layout is unknown. */
    selector = (u8)selector;
    __asm__ volatile ("" : : "r"(i), "r"(selector));
    first = 12;
    second = 24;
    __asm__ volatile ("" : : "r"(first), "r"(second));
    row = D_800FFED6;

    for (; i < 22; i++, row += 1000) {
        if (selector == 0) {
            row[-1] = 0;
            row[0] = first;
        } else {
            row[-1] = first;
            row[0] = second;
        }
    }
}
