#include "common.h"

extern u16 D_8010A5A4;

s32 func_8018E5EC(s32 value, s32 first, s32 last) {
    register s32 current asm("$4") = value;
    register s32 next asm("$2");
    switch (D_8010A5A4) {
    case 0x4000:
        next = current == last ? first : current + 1;
        break;
    case 0x1000:
        next = current == first ? last : current - 1;
        break;
    default:
        goto done;
    }
    /* Preserve the original shared temporary-to-argument assignment. */
    __asm__ volatile ("" : "=r"(current) : "0"(next));
done:
    return current;
}
