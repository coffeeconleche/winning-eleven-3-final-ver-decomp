#include "common.h"

extern u32 D_801D8018;
extern u16 D_801D8020, D_801D8022, D_801D8028, D_801D802A;
extern u16 D_801D8030, D_801D8032;
extern u8 D_801D801C, D_801D801D, D_801D801E;
extern u8 D_801D8024, D_801D8025, D_801D8026;
extern u8 D_801D802C, D_801D802D, D_801D802E;
extern u8 D_800F1018[];
/* Scalar address view prevents retaining a scratch pointer across callbacks. */
extern u8 scratchIndex __asm__("0x1F80029D");
extern void func_800ADD30(void *);
extern void func_800ADCB8(void *, u32);
extern void func_800B3808(void *, void *, u32);
extern void func_800B3498(void *, void *, u32);

/* Field-width views only: the complete source and packet types are unknown. */
void func_80196E1C(u32 selector, u8 *source, u32 third) {
    u8 *packet = (u8 *)&D_801D8018;
    register u8 *argument __asm__("$4") = packet;
    register u32 savedThird __asm__("$19");
    u16 *first;
    u8 *rows;
    u32 index;
    u32 narrowed;

    /* Entry bindings/tie retain the measured setup and call delay-slot order. */
    __asm__("" : "=r"(argument) : "0"(argument));
    savedThird = third;
    func_800ADD30(argument);
    if (selector != 0)
        func_800ADCB8(packet, 1);
    else
        func_800ADCB8(packet, 0);
    first = &D_801D8020;
    *first = *(u16 *)(source + 0);
    D_801D8022 = *(u16 *)(source + 2);
    D_801D8028 = *(u16 *)(source + 4);
    D_801D802A = *(u16 *)(source + 6);
    D_801D8030 = *(u16 *)(source + 8);
    D_801D8032 = *(u16 *)(source + 10);
    D_801D801C = source[12];
    D_801D801D = source[13];
    D_801D801E = source[14];
    D_801D8024 = source[15];
    {
        u8 value = source[16];
        /* Empty constraints keep narrowing and packet/base lifetimes at the
         * measured byte-copy boundaries; they emit no instructions. */
        __asm__ volatile("" : "=r"(savedThird) : "0"(savedThird), "r"(value) : "memory");
        narrowed = (u16)savedThird;
        __asm__ volatile("" : : "r"(narrowed) : "memory");
        D_801D8025 = value;
        value = source[17];
        __asm__ volatile("" : : "r"(value), "r"(packet) : "memory");
        rows = D_800F1018;
        D_801D8026 = value;
    }
    {
        u8 value = source[18];
        /* Do not adjust the packet argument until this source byte is loaded. */
        __asm__ volatile("" : "=r"(first) : "0"(first), "r"(value) : "memory");
        argument = (u8 *)first - 8;
        __asm__ volatile("" : : "r"(argument) : "memory");
        D_801D802C = value;
    }
    index = scratchIndex;
    {
        u8 value = source[19];
        /* Both byte values must survive into the row-address calculation. */
        __asm__ volatile("" : : "r"(index), "r"(value));
        D_801D802D = value;
    }
    D_801D802E = source[20];
    func_800B3808(argument, (u8 *)(index * 20 + (u32)rows), narrowed);

    if (selector != 0) {
        u32 secondIndex = scratchIndex;
        *(s16 *)0x1F800184 = -384;
        *(s16 *)0x1F800186 = -120;
        *(s16 *)0x1F800188 = -383;
        *(s16 *)0x1F80018A = -120;
        *(u32 *)0x1F800180 = selector;
        *(u8 *)0x1F80018C = 0;
        *(u8 *)0x1F80018D = 0;
        *(u8 *)0x1F80018E = 0;
        func_800B3498((void *)0x1F800180, (u8 *)(secondIndex * 20 + (u32)rows), (u8)savedThird);
    }
}
