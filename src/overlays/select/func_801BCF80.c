#include "common.h"

extern u8 D_800FF748[];
extern s32 D_801D88F8[];
extern u8 D_801D8938[], D_801D8958[], D_801D8957[];
extern u8 D_801D8967[], D_801D8966[], D_8010866A;
/* A scalar view of an existing byte, not a new symbol or allocation. */
extern u8 firstRank __asm__("D_801D8938 + 1");

extern void func_801A97FC(u8 *, s32 *, u32, u32);
extern u8 func_801AA778(u8, u8);
extern void func_801BD368(u8, u8, u32);

/* Rank sixteen signed score words, resolve equal /10 scores, and publish the
 * resulting order and byte ranks. Complete record meanings remain unknown.
 * The scoped bindings retain measured allocation of real values. */
u8 *func_801BCF80(void) {
    register s32 i __asm__("$18") = 0;
    register s32 j __asm__("$19");

    {
        u32 mapoff = 0xAB80;
        s32 *scores = D_801D88F8;
        register u8 *p __asm__("$7") = D_800FF748;

        for (i = 0; i < 16; i++, p += 36) {
            register s32 n __asm__("$6");
            register u32 score __asm__("$4");
            s32 tens;
            register s32 diff __asm__("$3");
            register u8 *base __asm__("$10") = D_800FF748;

            D_801D8958[i] = i;
            n = *(u16 *)(p + 0x8F2C);
            {
                register u32 major __asm__("$3") = p[0x8F28];
                /* Word wrapping precedes the signed sorting interpretation. */
                score = major * 10000000;
            }
            tens = n * 5;
            diff = *(u16 *)(p + 0x8F2E);
            diff = n - diff;
            /* Preserve the real halfword captures and word address order.
             * These nonvolatile identities emit no instructions or accesses. */
            __asm__("" : "=r"(tens) : "0"(tens), "r"(diff));
            {
                register s32 scaled __asm__("$2") = diff * 10000;
                score += scaled;
            }
            __asm__("" : : "r"(score));
            __asm__("" : "=r"(base) : "0"(base));
            {
                u8 *entry = (u8 *)((s32)base + i);
                diff = entry[mapoff];
            }
            tens *= 2;
            {
                register u8 *entry __asm__("$2") = (u8 *)((s32)base + diff * 36);
                score += tens;
                if (!(entry[0x8F24] & 0xC0)) {
                    score++;
                }
            }
            *scores++ = score;
        }
    }

    {
        u8 *indices = D_801D8958;
        u8 *indexarg = indices;
        s32 *sorted = D_801D88F8;

        func_801A97FC(indexarg, sorted, 0, 15);
        i = 1;
        /* The inner loop advances i to 16, so this outer loop runs once.
         * Its shape retains the original signed /10 reciprocal setup. */
        while (i < 16) {
            register s32 *oldscore __asm__("$16") = sorted;
            register u8 *rankbase __asm__("$3") = D_801D8938;
            u8 *newrank = rankbase + 3;
            s32 next = 2;
            u8 *oldrank = rankbase + 1;
            u32 first = indices[0];
            s32 *newscore;

            j = 0;
            newscore = sorted + 1;
            firstRank = 1;
            *rankbase = first;
            do {
                D_801D8938[j + 2] = D_801D8957[next];
                if (*newscore / 10 == *oldscore / 10) {
                    if (D_8010866A >= 15) {
                        u8 result = func_801AA778(D_801D8967[next], D_801D8966[next]);
                        if (result == 1) {
                            u8 current = D_801D8938[j + 2];
                            u8 previous = D_801D8938[j];
                            D_801D8938[j] = current;
                            D_801D8938[j + 2] = previous;
                            *newrank = *oldrank;
                            *oldrank = i;
                        } else if (result == 0) {
                            *newrank = *oldrank;
                        }
                    } else {
                        *newrank = *oldrank;
                    }
                } else {
                    *newrank = next;
                }
                newrank += 2;
                next++;
                oldrank += 2;
                j += 2;
                oldscore++;
                i++;
                newscore++;
            } while (i < 16);
        }
    }

    i = 0;
    {
        s32 outoffset;
        u32 orderoff = 0xAB50;
        u32 rankoff = 0xAB60;
        register u8 *base __asm__("$10");

        outoffset = 0;
        base = D_800FF748;
        for (; i < 16; outoffset += 2) {
            u8 *out = i + base;
            i++;
            {
                u8 *order = out + orderoff;
                u32 value = D_801D8938[outoffset];
                *order = value;
            }
            /* The first byte store may alias the source, so reread this byte. */
            out[rankoff] = D_801D8938[outoffset + 1];
        }
    }

    {
        s32 k;
        for (k = 0; k < 32;) {
            u32 row = D_801D8938[k];
            u32 rank = D_801D8938[k + 1];
            k += 2;
            func_801BD368(row, D_8010866A, (u8)(rank - 1));
        }
    }
    return D_801D8938;
}
