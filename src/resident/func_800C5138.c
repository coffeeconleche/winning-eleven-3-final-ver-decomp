#include "common.h"

/* Existing target register pointers; native code needs an MMIO backend. */
extern volatile u32 *D_800D5A40;
extern u32 *D_800D5A14;
extern u32 *D_800D5A20;
extern u32 D_800D58FC[];
extern u32 D_800D5980[];
extern void func_800C5228(u32 *request, u32 bytes);
extern s32 func_800AD698(const char *format, ...);

/*
 * gcc272-dos -quiet -O2 -G0; natural 24-byte frame.
 * Explicit nonvolatile store views retain legacy call-delay scheduling.
 * They are target matching views, not a portable MMIO access API.
 */
void func_800C5138(s32 mode)
{
    switch (mode) {
    case 0:
        *(u32 *)D_800D5A40 = 0x80000000;
        *D_800D5A14 = 0;
        *D_800D5A20 = 0;
        *(u32 *)D_800D5A40 = 0x60000000;
        func_800C5228(D_800D58FC, 32);
        func_800C5228(D_800D5980, 32);
        break;
    case 1:
        *(u32 *)D_800D5A40 = 0x80000000;
        *D_800D5A14 = 0;
        *D_800D5A20 = 0;
        (void)*(volatile u32 *)D_800D5A20;
        *(u32 *)D_800D5A40 = 0x60000000;
        break;
    default: {
        u32 message_page;

        /* Retain the measured mode capture and split message address. */
        __asm__("" : : "r"(mode));
        message_page = 0x80010000;
        __asm__("" : "=r"(message_page) : "0"(message_page));
        /* Existing string: "MDEC_rest:bad option(%d)\n" at 0x800155EC. */
        func_800AD698((const char *)(message_page + 0x55EC), mode);
        break;
    }
    }
}
