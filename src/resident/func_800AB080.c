#include "common.h"

#define KEEP(v) __asm__("" : "=r"(v) : "0"(v))
#define MEM() __asm__ __volatile__("" : : : "memory")

extern s16 D_800E6AA0;
extern s16 D_800CE738[];
extern u8 D_800F1040[], D_800CE86C[];

void func_800AB080(void)
{
    register s32 i = 0;
    register s16 *selector = &D_800E6AA0;
    register s16 *table = D_800CE738;
    register s32 next __asm__("$3");

    do {
        register u32 shifted __asm__("$3") = (u32)i << 16;
        register s32 index __asm__("$4");
        register s32 rate __asm__("$2");
        register s32 factor __asm__("$3");
        register s32 product __asm__("$2");
        register u32 value __asm__("$2");
        register s32 position __asm__("$4");
        register u8 *base __asm__("$1");

        index = (s32)shifted >> 16;
        KEEP(index);
        /* The selected scale is read again for each entry. */
        rate = *selector;
        MEM();
        base = D_800F1040;
        KEEP(base);
        base += index;
        factor = *base;
        __asm__("" : "=r"(rate), "=r"(factor) : "0"(rate), "1"(factor));
        rate = table[rate];
        product = factor * rate;
        product = (s16)product;
        next = i + 1;
        /* Bias negative products before shifting to round toward zero. */
        if (product < 0)
            product += 127;
        value = (u32)product >> 7;
        i = next;
        KEEP(next);
        position = index * 8;
        next = (s16)next < 39;

        base = D_800CE86C;
        KEEP(base);
        base += position;
        *base = value;
        base = D_800CE86C + 1;
        KEEP(base);
        base += position;
        *(volatile u8 *)base = value;
    } while (next);
}
