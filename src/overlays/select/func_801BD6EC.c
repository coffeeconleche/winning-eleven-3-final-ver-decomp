#include "common.h"

/* Access view of the source fields; original descriptor meaning is unknown. */
typedef struct {
    s16 half0, half2, half4, half6;
    u8 bytes[12];
} Fields801BD6EC;
extern u8 D_801D8D9B, D_801D8D9C, D_801D8D9D;
extern u8 D_801D8D98, D_801D8D99, D_801D8D9A;
extern u8 D_801D94E8[], D_801D8A4C[];
extern void func_801BDE5C(u8);
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801940EC(s32, u32, Fields801BD6EC *, s32, s32, s32);

void func_801BD6EC(u8 selector) {
    s32 i, secondIndex, firstIndex;
    s32 color, y0, y1;
    u8 *bytes, *first;
    u8 *second;
    u8 *initial;
    s32 one;
    Fields801BD6EC *source;
    func_801BDE5C(selector);
    i = 0;
    one = 1;
    /* Empty constraints preserve the reference's preheader constant setup
     * and temporary pointer copy. They emit no instructions. */
    __asm__ volatile("" : : "r"(one));
    bytes = &D_801D8D9B;
    source = (Fields801BD6EC *)(bytes - 11);
    initial = D_801D94E8;
    __asm__("" : "=r"(initial) : "0"(initial));
    second = initial + 360;
    secondIndex = 12;
    color = 32;
    y0 = -50;
    y1 = -49;
    first = initial;
    *bytes = 128;
    D_801D8D9C = 192;
    D_801D8D9D = 0;
    do {
        firstIndex = i + 4;
        func_801942E0(firstIndex, first, -658, y1, 256, one, 0, 0, 0, 2, 3, one);
        source->half0 = -676;
        source->half4 = 100;
        source->half2 = y0;
        source->half6 = 16;
        source->bytes[0] = 0;
        source->bytes[1] = 0;
        source->bytes[2] = color;
        func_801940EC(firstIndex, 0x40000000, source, 1, 4, one);
        func_801942E0(secondIndex, second, 544, y1, 256, one, 0, 0, 0, 2, 2, one);
        D_801D8D98 = 0;
        D_801D8D99 = 0;
        D_801D8D9A = color;
        source->half0 = 576;
        func_801940EC(secondIndex, 0x40000000, source, 1, 4, one);
        color += 16;
        y0 += 19;
        y1 += 19;
        first += 45;
        second += 45;
        D_801D8A4C[secondIndex] = i;
        i++;
        secondIndex++;
    } while (i < 8);
}
