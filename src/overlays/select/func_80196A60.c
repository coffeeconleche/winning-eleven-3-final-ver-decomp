#include "common.h"

/* Local access views only; original descriptor types and meanings are unknown.
 * Ordered halfword views preserve the observed reloads, not an I/O claim. */
typedef struct {
    u32 word0;
    s16 half4, half6, half8, half10;
    u8 byte12, byte13, byte14;
} Scratch80196A60;

extern u8 D_801D7FC8[], D_800F1018[];
extern volatile u16 D_801D7FD0, D_801D7FD2, D_801D7FD8, D_801D7FDA;
extern volatile u16 D_801D7FE0, D_801D7FE2, D_801D7FE8, D_801D7FEA;
extern u8 D_801D7FCC, D_801D7FCD, D_801D7FCE;
extern u8 D_801D7FD4, D_801D7FD5, D_801D7FD6;
extern u8 D_801D7FDC, D_801D7FDD, D_801D7FDE;
extern u8 D_801D7FE4, D_801D7FE5, D_801D7FE6;
extern u8 scratchIndex __asm__("0x1F80029D");
extern void func_800ADD80(void *), func_800ADCB8(void *, s32);
extern void func_800B3808(void *, u8 *, u16);
extern void func_800B3498(void *, u8 *, u8);

void func_80196A60(s32 mode, volatile u16 *source, u32 selectorArgument) {
    register s32 savedMode asm("$18");
    u8 *base = D_801D7FC8;
    volatile u16 *halfword;
    u8 *rows;
    u32 index;
    register u8 *packet asm("$4") = base;
    register u32 selector asm("$19");
    u32 narrowed;

    /* Capture the mode before the source, with the packet setup preceding the
     * third-argument capture. Bindings/ties retain measured register lifetimes
     * and delay-slot scheduling; they emit no instructions. */
    savedMode = mode;
    __asm__("" : "=r"(packet) : "0"(packet), "r"(savedMode));
    selector = selectorArgument;
    func_800ADD80(packet);
    if (savedMode != 0) {
        func_800ADCB8(base, 1);
    } else {
        func_800ADCB8(base, 0);
    }
    halfword = &D_801D7FD0;
    *halfword = source[0];
    D_801D7FD2 = source[1];
    D_801D7FD8 = source[0] + source[2];
    D_801D7FDA = source[1];
    D_801D7FE0 = source[0];
    D_801D7FE2 = source[1] + source[3];
    D_801D7FE8 = source[0] + source[2];
    D_801D7FEA = source[1] + source[3];
    D_801D7FCC = ((u8 *)source)[8];
    D_801D7FCD = ((u8 *)source)[9];
    D_801D7FCE = ((u8 *)source)[10];
    D_801D7FD4 = ((u8 *)source)[11];
    D_801D7FD5 = ((u8 *)source)[12];
    D_801D7FD6 = ((u8 *)source)[13];
    D_801D7FDC = ((u8 *)source)[14];
    /* Empty constraints retain the selector narrowing, row-base setup and
     * packet-base adjustment between the observed byte loads/stores. Keep the
     * first scratch-index read before byte18, and reread it after the callback. */
    {
        u8 value = ((u8 *)source)[15];
        __asm__ volatile ("" : "=r"(selector) : "0"(selector), "r"(value));
        narrowed = (u16)selector;
        __asm__ volatile ("" : : "r"(narrowed) : "memory");
        D_801D7FDD = value;
    }
    {
        u8 value = ((u8 *)source)[16];
        __asm__ volatile ("" : : "r"(value), "r"(base));
        rows = D_800F1018;
        D_801D7FDE = value;
    }
    {
        u8 value = ((u8 *)source)[17];
        __asm__ volatile ("" : "=r"(halfword) : "0"(halfword), "r"(value));
        halfword = (u16 *)((u8 *)halfword - 8);
        D_801D7FE4 = value;
    }
    index = scratchIndex;
    {
        u8 value = ((u8 *)source)[18];
        __asm__ volatile ("" : : "r"(index), "r"(value));
        D_801D7FE5 = value;
    }
    D_801D7FE6 = ((u8 *)source)[19];
    func_800B3808((u8 *)halfword, rows + index * 20, narrowed);
    if (savedMode != 0) {
        Scratch80196A60 *scratch = (Scratch80196A60 *)0x1F800180;
        u32 secondIndex = scratchIndex;
        scratch->half4 = -384;
        scratch->half6 = -120;
        scratch->half8 = -383;
        scratch->half10 = -120;
        scratch->word0 = savedMode;
        scratch->byte12 = 0;
        scratch->byte13 = 0;
        scratch->byte14 = 0;
        func_800B3498(scratch, rows + secondIndex * 20, (u8)selector);
    }
}
