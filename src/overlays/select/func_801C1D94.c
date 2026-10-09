#include "common.h"

extern u8 D_800FF748[];
extern u8 D_80108668;
extern s32 D_801D8968[];
extern u8 D_801D89A8[], D_801D89A9[], D_801D89AA[];
extern u8 D_801D89C7[], D_801D89C8[];
extern void func_801A97FC(u8 *, s32 *, u32, u32);

/* Offset views only: complete record layouts and field meanings are unknown. */
typedef struct {
    u8 pad[0x8F20];
    u8 count;
    u8 pad1[3];
    u8 flags;
    u8 pad2[3];
    u8 kind;
    u8 pad3[3];
    u16 first, second;
} RankingFields;

typedef struct {
    u8 pad[0xAB80];
    u8 map;
} MappingByte;

/* Build signed-sort scores, then interleaved index/rank bytes. Ranks compare
 * the signed quotients by ten, preserving word wrapping and truncation. */
u8 *func_801C1D94(void) {
    register s32 initial __asm__("$2") = D_80108668;
    s32 i = 0;
    u8 *base = D_800FF748;
    u8 *indices;
    s32 *values;
    u8 *out;
    /* Retain the measured 48-byte frame; these eight bytes are unused and
     * their original purpose is unknown. No memory access is added. */
    u8 reservation[8];

    if (initial > 0) {
        s32 *scores = D_801D8968;
        register u8 *row __asm__("$8") = base;
        do {
            register u32 score __asm__("$4");
            register u32 a, b __asm__("$6"), bonus __asm__("$5");
            D_801D89C8[i] = i;
            a = ((RankingFields *)row)->kind;
            b = ((RankingFields *)row)->first;
            score = a * 10000000U;
            a = ((RankingFields *)row)->second;
            a = b - a;
            score += a * 10000U;
            bonus = b * 5;
            /* Keep the real bonus capture after the major score terms. */
            __asm__("" : "=r"(bonus) : "0"(bonus), "r"(score));
            a = ((MappingByte *)(base + i))->map;
            bonus *= 2;
            {
                u32 offset = a * 36;
                initial = ((RankingFields *)(base + offset))->flags & 0xC0;
            }
            score += bonus;
            if (initial == 0)
                score++;
            *scores++ = score;
            initial = ((RankingFields *)base)->count;
            /* Preserve the post-store count capture before the increment. */
            __asm__("" : : "r"(initial));
            i++;
            row += 36;
        } while (i < initial);
    }

    indices = D_801D89C8;
    values = D_801D8968;
    /* Keep both real table addresses captured before preparing arguments. */
    __asm__("" : : "r"(indices), "r"(values));
    func_801A97FC(indices, values, 0, base[0x8F20] - 1);
    i = 1;
    /* The initial rank has a separate capture from the loop counter. */
    __asm__("" : "=r"(initial) : "0"(1));
    out = D_801D89A8;
    D_801D89A9[0] = initial;
    initial = base[0x8F20];
    {
        s32 index = indices[0];
        out[0] = index;
    }
    {
        u8 *dst;
        s32 rank, off;
        s32 *prev, *next;
        /* This captured-condition loop places the division invariant before
         * cursor setup. The inner loop exits with i >= initial, so the outer
         * test performs no additional iteration or memory read. */
        while (i < initial) {
            dst = out + 3;
            rank = 2;
            off = 0;
            prev = values;
            next = prev + 1;
            do {
                D_801D89AA[off] = D_801D89C7[rank];
                if (*next / 10 == *prev / 10)
                    *dst = D_801D89A9[off];
                else
                    *dst = rank;
                dst += 2;
                rank++;
                off += 2;
                prev++;
                initial = base[0x8F20];
                i++;
                next++;
            } while (i < initial);
        }
    }
    {
        s32 off;
        i = 0;
        if (i < base[0x8F20]) {
            u32 offsetA = 0xAB50, offsetB = 0xAB60;
            off = 0;
            do {
                (base + i)[offsetA] = D_801D89A8[off];
                (base + i)[offsetB] = D_801D89A9[off];
                i++;
                off += 2;
            } while (i < base[0x8F20]);
        }
    }
    return D_801D89A8;
}
