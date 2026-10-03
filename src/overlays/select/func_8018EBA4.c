#include "common.h"

extern u8 D_80105514[];

s32 func_8018EBA4(s32 index, s32 value, u8 replacement) {
    volatile u8 *entry;
    u8 last;

    value &= 0xFF;
    index &= 0xFF;
    entry = *(u8 **)(D_80105514 + index * 40);
    do {
        if (entry[10] == value) {
            entry[10] = replacement;
        }
        last = entry[0];
        entry += 12;
    } while (last == 0);
    return 1;
}
