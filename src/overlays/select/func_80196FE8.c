#include "common.h"

extern u8 D_800FF748[], D_800F1018[], D_800C7C3C[];
extern u32 D_801D7F88;
extern u16 D_801D7F8C, D_801D7F8E;
extern u16 D_801D7F90, D_801D7F92;
extern u8 D_801D7F94, D_801D7F95, D_801D7F96;

/* Call-site word views. The classifier consumes low bytes; both submitters
 * consume the low selector halfword. Complete original APIs are unknown. */
extern u32 func_800502A0(u32, s32);
extern void func_800B3FB8(void *, void *, u32);
extern void func_800B3728(void *, void *, u32);

/* Build the observed scratch descriptor, then optionally submit an expanded
 * descriptor. Raw coordinates wrap as words before their halfword stores.
 * These field/table views do not establish complete object layouts. */
void func_80196FE8(u32 code, u32 word, u32 xWord, u32 yWord,
    s32 large, s32 dim, s32 border, u16 selector) {
    /* Eight scoped bindings and ten empty sites retain measured allocation and
     * capture/load order. They emit no instructions, accesses or clobbers. */
    register s32 largeView __asm__("$3") = large;
    register s32 dimView __asm__("$2") = dim;
    s32 borderView = border;
    u32 selectedView;
    u32 x;
    u32 y;
    u8 *base;
    u8 *scratch;
    u32 shade;
    s32 packed;
    u32 selected;
    u32 mode;
    register u8 *palette __asm__("$2");
    register u8 *entries __asm__("$17");
    u32 half;
    /* Transparent captures preserve the entry sequence and natural 48-byte
     * frame; no value is changed and no artificial frame space is reserved. */
    __asm__("" : "=r"(borderView) : "0"(borderView), "r"(largeView), "r"(dimView));
    selectedView = selector;
    __asm__("" : "=r"(selectedView) : "0"(selectedView));
    x = xWord;
    y = yWord;
    __asm__("" : "=r"(x), "=r"(y) : "0"(x), "1"(y));
    base = D_800FF748;
    __asm__("" : "=r"(base) : "0"(base));
    scratch = (u8 *)0x1F800000;
    *(u32 *)0x1F80015C = word;
    if (dimView) {
        __asm__ volatile("" : : "r"(dimView));
        shade = 64;
    } else shade = 128;
    *(u8 *)0x1F800170 = shade;
    *(u8 *)0x1F800171 = shade;
    *(u8 *)0x1F800172 = shade;
    /* End constant-address propagation while retaining the actual base. */
    __asm__ volatile("" : "=r"(scratch) : "0"(scratch));
    *(u16 *)(scratch + 0x178) = 4096;
    *(u16 *)(scratch + 0x17A) = 4096;
    *(u16 *)(scratch + 0x174) = 0;
    *(u16 *)(scratch + 0x176) = 0;
    *(u32 *)(scratch + 0x17C) = 0;
    *(u16 *)(scratch + 0x160) = x;
    *(u16 *)(scratch + 0x162) = y;
    packed = D_800C7C3C[(u8)code];
    if (largeView) {
        *(u16 *)(scratch + 0x168) = 27;
        *(u16 *)(scratch + 0x164) = 24;
        *(u16 *)(scratch + 0x166) = 16;
        scratch[0x16A] = (packed & 3) * 24;
        scratch[0x16B] = (s32)((u32)packed >> 2) * 16 - 128;
    } else {
        *(u16 *)(scratch + 0x168) = 6;
        *(u16 *)(scratch + 0x164) = 16;
        *(u16 *)(scratch + 0x166) = 10;
        scratch[0x16A] = (packed & 15) * 16;
        scratch[0x16B] = ((u32)packed >> 4) * 10;
    }
    /* Classify the byte code before selecting the pair of palette halfwords. */
    selected = (u8)func_800502A0((u8)code, 0);
    {
        /* OR selects the same 15C prefix at the fixed aligned scratch base. */
        register void *firstDescriptor __asm__("$4") = (void *)((u32)scratch | 0x15C);
        register u32 firstSelector __asm__("$6");
        palette = base + selected * 4;
        firstSelector = selectedView;
        half = *(u16 *)(palette + 0x7FA6);
        /* Read this mode before storing the first palette halfword. */
        mode = scratch[0x29D];
        __asm__ volatile("" : : "r"(mode));
        entries = D_800F1018;
        *(u16 *)(scratch + 0x16C) = half;
        {
            u32 entryOffset = mode * 20;
            u32 secondHalf;
            secondHalf = *(u16 *)(palette + 0x7FA4);
            *(u16 *)(scratch + 0x16E) = secondHalf;
            func_800B3FB8(firstDescriptor, entries + entryOffset, firstSelector);
        }
    }
    /* All following scratch fields are reloaded after the first callback. */
    if (borderView) {
        register u32 x1 __asm__("$2") = x - 1;
        u32 y1 = y - 1;
        void *descriptor = &D_801D7F88;
        u32 width = *(u16 *)(scratch + 0x164);
        u32 selectedByte;
        __asm__ volatile("" : : "r"(width));
        selectedByte = (u8)selectedView;
        D_801D7F88 = 0;
        D_801D7F8C = x1;
        D_801D7F8E = y1;
        D_801D7F94 = 0;
        D_801D7F95 = 0;
        D_801D7F96 = 0;
        {
            u32 height;
            register u32 lateMode __asm__("$3");
            height = *(u16 *)(scratch + 0x166);
            __asm__ volatile("" : : "r"(height));
            /* The original forms a fresh absolute address for this byte reload. */
            lateMode = *(u8 *)0x1F80029D;
            __asm__ volatile("" : : "r"(lateMode));
            width += 2;
            height += 2;
            D_801D7F90 = width;
            D_801D7F92 = height;
            func_800B3728(descriptor, entries + lateMode * 20, selectedByte);
        }
    }
}
