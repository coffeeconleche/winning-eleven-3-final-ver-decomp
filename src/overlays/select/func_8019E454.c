#include "common.h"

s32 func_8019E454(s32 value, s32 selector) {
    register s32 offset asm("$5") = (u8)(selector ^ 1) * 4;
    register s32 alternate asm("$6") = offset;
    register s32 low asm("$4");
    register s32 result asm("$2");

    /* Preserve the independent stride copies used by the two return paths. */
    __asm__ volatile ("" : "=r"(alternate) : "0"(alternate), "r"(offset));
    low = (u8)value;

    if (*(u8 *)0x1F8002E1 == 1) {
        result = low + 0x3028;
        /* Form the byte-plus-base sum before adding the retained stride. */
        __asm__ volatile ("" : "=r"(result) : "0"(result), "r"(low));
        result = offset + result;
    } else {
        result = low + 0x3030;
        /* Keep the same grouping and argument register on this return path. */
        __asm__ volatile ("" : "=r"(result) : "0"(result), "r"(low));
        result = alternate + result;
    }
    return result;
}
