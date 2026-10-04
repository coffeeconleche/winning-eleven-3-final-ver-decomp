#include "common.h"

/* Access views only: original descriptor/packet types and meanings unknown. */
typedef struct {
    u32 word0;
    s16 half4, half6, half8, half10;
    u8 byte12, byte13, byte14;
} ScratchFields;

extern u8 D_801D7FF8[], D_800F1018[];
/* Ordered halfword views preserve the interleaved loads/stores, not an I/O claim. */
extern volatile u16 D_801D8000, D_801D8002, D_801D8004;
extern volatile u16 D_801D8006, D_801D8008, D_801D800A;
extern u8 D_801D7FFC, D_801D7FFD, D_801D7FFE;
/* Fixed-byte access view avoids caching this address across the two calls. */
extern u8 scratchIndex __asm__("0x1F80029D");
extern void func_800ADD08(void *), func_800ADCB8(void *, s32);
extern void func_800B3808(void *, u8 *, s32);
extern void func_800B3498(void *, u8 *, s32);

void func_80196C98(s32 mode, volatile u16 *source, u32 selectorArgument) {
    volatile u16 *halfword;
    u8 *base;
    register u8 *packet __asm__("$4");
    register u32 selector __asm__("$19");
    u32 narrowed;
    base = D_801D7FF8;
    packet = base;
    /* The $4/$19 bindings and empty tie retain the measured entry/delay order. */
    __asm__("" : "=r"(packet) : "0"(packet));
    selector = selectorArgument;
    func_800ADD08(packet);
    if (mode != 0)
        func_800ADCB8(base, 1);
    else
        func_800ADCB8(base, 0);
    halfword = &D_801D8000;
    *halfword = source[0];
    D_801D8002 = source[1];
    D_801D8004 = source[2];
    D_801D8006 = source[3];
    {
        u16 value = source[4];
        /* Empty constraints retain narrowing and the old base until this reload;
         * they emit no instructions and do not replace the descriptor stores. */
        __asm__ volatile("" : "=r"(selector) : "0"(selector), "r"(value) : "memory");
        narrowed = (u16)selector;
        __asm__ volatile("" : : "r"(narrowed) : "memory");
        D_801D8008 = value;
        value = source[5];
        __asm__ volatile("" : : "r"(value), "r"(base) : "memory");
        base = D_800F1018;
        D_801D800A = value;
    }
    {
        u8 value = ((u8 *)source)[12];
        /* Keep the halfword-base adjustment after this byte load. */
        __asm__ volatile("" : "=r"(halfword) : "0"(halfword), "r"(value) : "memory");
        D_801D7FFC = value;
    }
    D_801D7FFD = ((u8 *)source)[13];
    D_801D7FFE = ((u8 *)source)[14];
    func_800B3808((u8 *)halfword - 8,
                 (u8 *)(scratchIndex * 20 + (u32)base), narrowed);
    if (mode != 0) {
        ScratchFields *scratch = (ScratchFields *)0x1F800180;
        u32 index = scratchIndex;
        scratch->half4 = -384;
        scratch->half6 = -120;
        scratch->half8 = -383;
        scratch->half10 = -120;
        scratch->word0 = mode;
        scratch->byte12 = 0;
        scratch->byte13 = 0;
        scratch->byte14 = 0;
        func_800B3498(scratch, (u8 *)(index * 20 + (u32)base), (u8)selector);
    }
}
