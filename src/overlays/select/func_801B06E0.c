#include "common.h"

extern u8 D_8010A322, D_800FF748[], D_8011CA90[];
extern u8 D_801D8DFC, D_801DAD84;
extern u8 D_801D8A8A, D_801D8A8B, D_801D8A8C, D_801D8A8D;
extern u8 D_801D8A8E, D_801D8A8F;
extern u8 D_801DA2F0, D_801DAD85, D_801D8B18, D_801D8DFB;
extern u8 D_801D8A51, D_801DA06B, D_801DA069, D_801DA06A, D_801DA068;
extern u16 D_801DA5D4, D_801DA5D6, D_800AD638, D_801DA5D0, D_801DA5D2;
extern u16 D_801D8A82, D_801D8A84, D_801D8A86, D_801D8A88, D_8010A5A4;
/* Word-sized call-site views retain the observed supplied arguments. Complete
 * original APIs and the initialized records' meanings are not established. */
extern void func_801A98F0(void *, s32), func_8018E538(u32);
extern void func_801B30FC(void), func_801B38E0(u32, u32);
extern void func_801B5560(u32), func_800171FC(u32);
extern s32 func_8006F07C(u32), func_801AB6E8(u32), func_801B04B4(u32);
extern s32 func_801B29CC(u32, u32), func_8006F0DC(u32, u32);

/* The base/selector pointer arithmetic is deliberately word-sized. This
 * expands ordinary recovered C, not assembly, and adds no index guards. */
#define RECORD_FLAGS(slot) ({ \
    register u8 *selected = (u8 *)((u32)base + base[slot]); \
    u32 index; \
    selected += lookup; \
    index = *selected; \
    selected = (u8 *)((u32)base + index * 36); \
    selected[0x8F24] & 0xC0; \
})

/* Sparse state dispatch with a proved 31-word switch slot. Unlisted states
 * have no effect. Two bindings and two empty actual-value/memory inputs remain
 * after cumulative individual and pair minimization. No volatile views,
 * clobbers or frame reservation are needed; the 48-byte frame is natural. */
void func_801B06E0(void) {
    u32 state = D_8010A322;
    register u8 *base = D_800FF748;
    register u8 *scratch = (u8 *)0x1F800000;
    switch (state) {
    case 0: {
        register s32 i = 0;
        register u32 shade = 128;
        register u32 count = 6;
        register u32 sentinel = 255;
        u32 flags;
        register u8 *rows __asm__("$5");
        register s32 offset = 0;
        rows = base;
        scratch[0x2A2] = 0;
        base[0x8F22] = 0;
        base[0x8F23] = 0;
        base[0xABA8] = 0;
        D_801D8DFC = 1;
        D_801DAD84 = 4;
        D_801DA5D4 = 1;
        D_801DA5D6 = 9;
        D_801D8A8A = 95;
        D_801D8A8B = 255;
        flags = D_801D8A8E;
        D_801DA2F0 = 0;
        D_801DAD85 = 0;
        D_801D8B18 = 0;
        D_801D8DFB = 0;
        D_800AD638 = 0;
        D_801D8A51 = 0;
        D_801DA06B = 0;
        D_801DA069 = 0;
        D_801DA06A = 0;
        D_801DA068 = 0;
        D_801DA5D0 = 0;
        D_801DA5D2 = 0;
        D_801D8A82 = 0;
        D_801D8A84 = 0;
        D_801D8A86 = 0;
        D_801D8A88 = 0;
        D_801D8A8F = 0;
        D_801D8A8C = 0;
        D_801D8A8D = 96;
        base[0x8F15] = 0;
        D_801D8A8E = (flags & 0x61) | 0x21;
        do {
            register s32 quotient = i;
            s32 j, inner;
            /* Retain the measured signed divide-by-four rounding sequence. */
            if (i < 0) quotient = i + 3;
            j = 0;
            inner = offset;
            rows[0x8F27] = quotient >> 2;
            rows[0x8F35] = shade;
            rows[0x8F37] = count;
            do {
                u8 *entry = (u8 *)((u32)base + inner);
                __asm__ volatile("" : : "r"(entry));
                j++;
                entry[0xA9D0] = 0;
                entry[0xA9D1] = sentinel;
                inner += 4;
            } while (j < 3);
            offset += 12;
            i++;
            rows += 36;
        } while (i < 32);
        {
            register u32 lookup;
            register u32 flagOffset __asm__("$19");
            register u8 *rows2;
            i = 0;
            lookup = 0xAB80;
            flagOffset = 0xAB50;
            rows2 = base;
            do {
                u8 *byte;
                func_801A98F0(D_8011CA90, i);
                if (!RECORD_FLAGS(0xABA0) || !RECORD_FLAGS(0xABA1)) {
                    byte = rows2 + flagOffset;
                    *byte |= 1;
                } else {
                    byte = rows2 + flagOffset;
                    *byte &= 0xFE;
                }
                {
                    register u8 *last = rows2 + flagOffset;
                    register u32 current = *last;
                    i++;
                    *last = current & 0xFD;
                    __asm__ volatile("" : : "m"(*last));
                }
                rows2++;
            } while (i < 48);
            {
                u32 stage = base[0xABDA];
                base[0xABA1] = 0;
                base[0xABA0] = 0;
                scratch[0x2DE] = 0;
                scratch[0x2DD] = 0;
                base[0xABDA] = stage + 1;
            }
        }
        break;
    }
    case 1: {
        u32 stage = base[0xABDA];
        scratch[0x29F] = 0;
        base[0xABDA] = stage + 1;
        break;
    }
    case 2: base[0xABDA] = 10; break;
    case 10: base[0xABDA] = 20; break;
    case 20:
        func_8018E538(0);
        scratch[0x2A2] = 4;
        func_801B30FC();
        func_801B38E0(0, 0);
        base[0xABDA]++;
        break;
    case 21:
        if (func_8006F07C(16)) base[0xABDA]++;
        break;
    case 22:
        if (func_801AB6E8(90)) {
            D_801D8A8F = 1;
            func_801B5560(0);
            {
                u32 stage = base[0xABDA];
                D_801DA2F0 = 1;
                base[0xABDA] = stage + 1;
            }
        }
        break;
    case 23:
        D_8010A5A4 = func_801B04B4(0);
        if (func_801B29CC(0, 1) == 2) {
            D_801D8A8F = 0;
            base[0xABDA] = 30;
        }
        break;
    case 30:
        if (func_8006F0DC(16, 0)) {
            func_800171FC(1);
            base[0xABDA] = 0;
        }
        break;
    }
}
