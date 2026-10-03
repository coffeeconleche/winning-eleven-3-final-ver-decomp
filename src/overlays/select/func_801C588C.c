#include "common.h"

typedef struct {
    s16 half0, half2, half4, half6;
    u8 bytes[4][3];
} Descriptor20;

/* Byte access/compiler view of the proven fourth byte in D_801D42A8.
 * Keeping the original symbol+addend as a scalar avoids address hoisting;
 * it does not introduce data or assert a complete original object type. */
extern u8 D_801D42AB __asm__("D_801D42A8+3");
extern u8 D_801D42AC;
extern void func_80196A60(s32, Descriptor20 *, s32);

void func_801C588C(s32 rawHalf0, s32 half2, u8 selector, u8 channel, u8 enabled) {
    Descriptor20 descriptor;
    u8 enableByte = enabled;
    u8 i, value;
    u32 raw;
    u8 direction = D_801D42AC;
    u32 phase = D_801D42AB, next;
    register u8 *colors __asm__("$10") = descriptor.bytes[0];
    s32 half0;

    if (direction != 0) {
        next = phase - 1;
    } else {
        next = phase + 1;
    }
    D_801D42AB = next;
    if ((u8)next == 0) D_801D42AC = 0;
    if ((u8)next >= 48) D_801D42AC = 1;
    half0 = (s16)rawHalf0;

    if (selector == 0) descriptor.half0 = half0 + 60;
    else descriptor.half0 = half0;
    descriptor.half2 = half2;
    if (selector != 0) descriptor.half4 = 32;
    else descriptor.half4 = 44;
    descriptor.half6 = 18;
    i = 0;
    do {
        u32 index = i;
        /* Preserve byte-index narrowing before the global reread, keep its
         * per-iteration memory access and the measured color-base allocation.
         * The empty constraint emits no instructions. */
        __asm__ volatile ("" : : "r"(colors), "r"(index) : "memory");
        raw = D_801D42AB + index * 8;
        value = raw;
        if (value > 48) value = 96 - raw;
        colors[i * 3] = value * 3;
        colors[i * 3 + 1] = value;
        colors[i * 3 + 2] = value * 4;
        i++;
    } while (i < 4);
    if (enableByte != 0) func_80196A60(0, &descriptor, channel);
}
