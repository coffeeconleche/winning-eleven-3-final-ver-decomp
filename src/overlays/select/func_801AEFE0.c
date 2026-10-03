#include "common.h"

extern u8 D_800FF748[];

s32 func_801AEFE0(u8 *first, u8 *second) {
    u8 *base;
    u8 *first_entry;
    u8 *second_entry;
    u32 first_value;
    u32 second_value;
    /* The original compiler keeps the shared result in v0. */
    register s32 result asm("$2");

    base = D_800FF748;
    first_entry = base + (first[1] * 6 + first[0] * 132);
    first_value = first_entry[0x93A4];
    second_entry = base + (second[1] * 6 + second[0] * 132);
    second_value = second_entry[0x93A4];

    if (first_value < second_value) {
        result = -1;
        goto done;
    }
    if (second_value < first_value) {
        result = 1;
        goto done;
    }
    if ((first_value | second_value) == 0) {
        result = 0;
        goto done;
    }
    first_value += (first_value * 100) / *(u16 *)(first_entry + 0x93A6);
    second_value += (second_value * 100) / *(u16 *)(second_entry + 0x93A6);

    if (first_value < second_value) {
        result = -1;
        goto done;
    }
    result = second_value < first_value;
    if (result == 0) {
        goto done;
    }
    result = 1;
    /* Keep the final true case as a distinct branch block. */
    __asm__ volatile ("");

done:
    /* Preserve the original shared return block. */
    __asm__ volatile ("");
    return result;
}
