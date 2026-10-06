#include "common.h"

extern u16 D_801D8A80, D_801D8A82, D_801D8A84, D_801D8A86, D_801D8A88;
extern u8 D_801D8A8A, D_801D8A8B, D_801D8A8C, D_801D8A8E, D_801D8A8F;
extern u8 D_800FF748[], D_800F1018[];
/* Ordered access views retain the measured post-helper read sequence. These
 * alias existing symbols; they allocate nothing and make no MMIO claim. */
extern volatile u16 SELECT_8A80 __asm__("D_801D8A80");
extern volatile u8 SELECT_8A8B __asm__("D_801D8A8B");
extern volatile u8 SELECT_8A8C __asm__("D_801D8A8C");
/* Call-site views, not claims about complete original helper declarations. */
extern s32 func_8018E5B8(u32, s32);
extern void func_800B3FB8(void *, void *, u16);
extern void func_801962E4(void *, s32);
extern void func_80196FE8(u32, u32, s32, s32, s32, s32, s32, s32);

/* Ease two halfword coordinates unless flag bit 4 bypasses the updates, then
 * submit the observed descriptor format. Object and palette meanings remain
 * unknown. No selector/index guards or initialized default path are added. */
void func_80195DE0(void) {
    s32 x = D_801D8A82;
    s32 done = 1;
    s32 y = D_801D8A84;
    u32 flags = D_801D8A8E;
    s32 dx = D_801D8A86;
    s32 dy = D_801D8A88;
    /* Six scoped bindings and four empty sites survive cumulative single and
     * paired removal checks. They emit no instructions or extra accesses.
     * The 48-byte frame arises naturally; no frame reservation is used. */
    register u8 *base __asm__("$8") = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    if ((flags >> 4) & 1) {
        D_801D8A8E = flags | 0x80;
    } else {
        s32 diffx = x - dx;
        s32 diffy = y - dy;
        if ((u16)(diffx + 1) < 3) x = dx;
        else { x -= (s16)diffx >> 1; done = 0; }
        if ((u16)(diffy + 1) < 3) y = dy;
        else { y -= (s16)diffy >> 1; done = 0; }
        D_801D8A82 = x;
        D_801D8A84 = y;
        /* Reload the flag after both possibly aliasing coordinate stores. */
        if (done) D_801D8A8E |= 0x80;
        else D_801D8A8E &= 0x7F;
    }
    if (D_801D8A8F) {
        switch (D_801D8A8E & 15) {
        case 1: {
            s32 offset;
            register u32 range = 128;
            register s32 shift = 4;
            s32 mode;
            u16 selector;
            u32 red;
            register u32 green __asm__("$8"), blue __asm__("$7");
            register void *descriptor;
            *(u16 *)(scratch + 0x164) = 24;
            *(u16 *)(scratch + 0x166) = 24;
            scratch[0x16A] = 0x68;
            *(u32 *)(scratch + 0x15C) = 0;
            *(u16 *)(scratch + 0x160) = x;
            *(u16 *)(scratch + 0x162) = y;
            scratch[0x16B] = 0x80;
            {
                register u32 firstHalf = *(u16 *)(base + 0x81D2);
                register u32 secondHalf = *(u16 *)(base + 0x81D0);
                *(u16 *)(scratch + 0x168) = 0x1A;
                *(u16 *)(scratch + 0x16C) = firstHalf;
                *(u16 *)(scratch + 0x16E) = secondHalf;
                offset = func_8018E5B8(range, shift);
            }
            descriptor = (void *)((u32)scratch | 0x15C);
            mode = *(volatile u8 *)(scratch + 0x29D);
            selector = SELECT_8A80;
            green = SELECT_8A8B;
            blue = SELECT_8A8C;
            {
                void *entry;
                entry = D_800F1018 + mode * 20;
                red = D_801D8A8A;
                __asm__ volatile("" : : "r"(red));
                blue += offset;
                scratch[0x171] = green;
                scratch[0x172] = blue;
                __asm__ volatile("" : : "m"(scratch[0x172]));
                scratch[0x170] = red + offset;
                func_800B3FB8(descriptor, entry, selector);
            }
            break;
        }
        case 0:
        case 2: {
            register void *descriptor = (void *)((u32)scratch | 0x15C);
            s32 selector = (s16)D_801D8A80;
            register u32 half1, half2, red, green, blue;
            __asm__ volatile("" : : "r"(descriptor), "r"(selector));
            *(u16 *)(scratch + 0x160) = x - 14;
            *(u16 *)(scratch + 0x162) = y - 18;
            *(u16 *)(scratch + 0x164) = 24;
            *(u16 *)(scratch + 0x166) = 24;
            scratch[0x16A] = 0x50;
            *(u32 *)(scratch + 0x15C) = 0;
            scratch[0x16B] = 0x80;
            half1 = *(u16 *)(base + 0x81D2);
            half2 = *(u16 *)(base + 0x81D0);
            red = D_801D8A8A;
            green = D_801D8A8B;
            blue = D_801D8A8C;
            *(u16 *)(scratch + 0x168) = 0x1A;
            *(u16 *)(scratch + 0x16C) = half1;
            *(u16 *)(scratch + 0x16E) = half2;
            scratch[0x170] = red;
            scratch[0x171] = green;
            scratch[0x172] = blue;
            func_801962E4(descriptor, selector);
            /* A fresh flag and selector load follows the callback. */
            if ((D_801D8A8E & 15) == 2) {
                register u32 word __asm__("$5") = 0x40000000;
                register s32 xArg __asm__("$6");
                register s32 border __asm__("$2");
                __asm__ volatile("" : : "r"(word));
                xArg = (s16)x;
                border = 1;
                func_80196FE8(scratch[0x2DE], word, xArg, (s16)y,
                    0, 0, border, (s16)D_801D8A80);
            }
            break;
        }
        }
    }
}
