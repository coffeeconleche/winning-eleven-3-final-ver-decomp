#include "common.h"

/* Access views only; the original descriptor types and field meanings
 * are unknown. Ordered halfword views are not an I/O claim. */
typedef struct {
    u32 word0;
    s16 half4, half6, half8, half10;
    u8 byte12, byte13, byte14;
} Scratch8019689C;

extern u8 D_801D7F98[], D_800F1018[];
extern volatile u16 D_801D7FA0, D_801D7FA2, D_801D7FA4, D_801D7FA6;
extern volatile u16 D_801D7FA8, D_801D7FAA, D_801D7FAC, D_801D7FAE;
extern u8 D_801D7F9C, D_801D7F9D, D_801D7F9E;
/* Scalar address view keeps this byte address uncached across calls. */
extern u8 scratchIndex __asm__("0x1F80029D");
extern void func_800ADD58(void *), func_800ADCB8(void *, s32);
extern void func_800B3808(void *, u8 *, u16);
extern void func_800B3498(void *, u8 *, u8);

void func_8019689C(s32 mode, volatile u16 *source, u32 selectorArgument) {
    u8 *base = D_801D7F98;
    volatile u16 *halfword;
    register u8 *packet __asm__("$4") = base;
    register u32 selector __asm__("$19");
    u32 narrowed;
    /* Empty constraints and bindings retain measured entry, narrowing,
     * base lifetime and pointer-adjustment scheduling; they emit no code. */
    __asm__("" : "=r"(packet) : "0"(packet));
    selector = selectorArgument;
    func_800ADD58(packet);
    if (mode != 0) func_800ADCB8(base, 1);
    else func_800ADCB8(base, 0);
    halfword = &D_801D7FA0;
    *halfword = source[0];
    D_801D7FA2 = source[1];
    D_801D7FA4 = source[0] + source[2];
    D_801D7FA6 = source[1];
    D_801D7FA8 = source[0];
    D_801D7FAA = source[1] + source[3];
    {
        u16 left = source[0], right = source[2];
        __asm__ volatile("" : "=r"(selector) : "0"(selector), "r"(left), "r"(right) : "memory");
        narrowed = (u16)selector;
        __asm__ volatile("" : : "r"(narrowed) : "memory");
        D_801D7FAC = left + right;
        left = source[1];
        right = source[3];
        __asm__ volatile("" : : "r"(left), "r"(right), "r"(base) : "memory");
        base = D_800F1018;
        D_801D7FAE = left + right;
    }
    {
        u8 value = ((u8 *)source)[8];
        __asm__ volatile("" : "=r"(halfword) : "0"(halfword), "r"(value) : "memory");
        D_801D7F9C = value;
    }
    D_801D7F9D = ((u8 *)source)[9];
    D_801D7F9E = ((u8 *)source)[10];
    func_800B3808((u8 *)halfword - 8,
                 (u8 *)(scratchIndex * 20 + (u32)base), narrowed);
    if (mode != 0) {
        Scratch8019689C *scratch = (Scratch8019689C *)0x1F800180;
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
