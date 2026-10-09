#include "common.h"

extern u8 D_800FF748[];
extern s32 D_801D8798[];
extern u8 D_801D87A8[], D_801D87A9[], D_801D87AE[], D_801D87AF[], D_801D87B0[];
extern void func_801A97FC(u8 *, s32 *, u32, u32);

/* These are measured byte/halfword access views, not complete record types.
 * Scoped bindings preserve actual arithmetic captures and cursor allocation.
 * The two empty sites retain the weighted-byte calculation before the next
 * halfword reads and the two table addresses before call-argument setup.
 * They emit no instructions, accesses or clobbers. */
u8 *func_801B4C84(u32 arg) {
    register u8 selector = arg;
    register u8 *base = D_800FF748;
    register s32 i;
    register s32 *score;
    register s32 selectorOffset;
    register u32 narrowed;

    if (selector > 64) selector = arg - 65;
    i = 0;
    narrowed = (u8)selector;
    selectorOffset = narrowed * 4;
    score = D_801D8798;
    for (; i < 4; i++, score++) {
        s32 index = selectorOffset + i;
        register u8 *record __asm__("$5") = base + index * 36;
        register u32 value __asm__("$4");
        register u32 difference, subtotal __asm__("$10");
        register u32 subtotalCopy __asm__("$11"), differenceCopy __asm__("$7");
        register u32 tenfoldCopy __asm__("$3");
        register u32 count;

        D_801D87B0[i] = index;
        count = record[0x8F28];
        {
            register u32 product __asm__("$2") = count * 78125U;
            subtotal = product << 7;
        }
        __asm__("" : "=r"(record) : "0"(record), "r"(subtotal));
        value = *(u16 *)(record + 0x8F2C);
        {
            register u32 other __asm__("$3") = *(u16 *)(record + 0x8F2E);
            subtotalCopy = subtotal;
            {
                register u32 rawDifference = value - other;
                register u32 product;
                product = rawDifference * 625U;
                difference = product << 4;
            }
        }
        differenceCopy = difference;
        value *= 10;
        {
            u8 flag = record[0x8F26];
            tenfoldCopy = value;
            if (flag) {
                register u32 addition __asm__("$2") = difference + 1000000000U;
                addition = subtotal + addition;
                value = addition + value;
            } else {
                register u32 addition __asm__("$2") = subtotalCopy + differenceCopy;
                value = addition + tenfoldCopy;
            }
        }
        {
            register u32 mapped = ((u8 *)((u32)base + (u32)index))[0xAB80];
            {
                u32 mappedOffset = mapped * 36;
                {
                    register u32 flags = ((u8 *)((u32)base + mappedOffset))[0x8F24] & 0xC0;
                    {
                        register u32 written __asm__("$3") = value;
                        if (!flags) written++;
                        *score = written;
                    }
                }
            }
        }
    }
    {
        register u8 *indices = D_801D87B0;
        s32 *values = D_801D8798;
        __asm__("" : : "r"(indices), "r"(values));
        func_801A97FC(indices, values, 0, 3);
        {
            register u8 *out __asm__("$2");
            register s32 one __asm__("$24");
            register u8 *previousOut __asm__("$13");
            register u8 *previousRank __asm__("$11");
            register u8 *currentOut __asm__("$10");
            register u8 *currentRank __asm__("$12");
            register s32 *previousScore = D_801D8798;
            register s32 *currentScore;
            register s32 rank __asm__("$7");

            i = 1;
            /* The inner loop always reaches i == 4, so this outer condition
             * executes setup once. This equivalent source shape retains the
             * measured division-constant setup before the cursor setup. */
            while (i < 4) {
                one = 1;
                out = D_801D87A8;
                currentRank = out + 3;
                rank = 2;
                previousRank = out + 1;
                currentOut = out + 2;
                previousOut = out;
                currentScore = previousScore + 1;
                {
                    register u32 first = indices[0];
                    D_801D87A9[0] = 1;
                    *previousOut = first;
                }
                do {
                    *currentOut = D_801D87AF[rank];
                    if (*currentScore / 10 == *previousScore / 10) {
                        s32 found = 0;
                        s32 j;
                        u8 current = D_801D87AF[rank];
                        register u32 previous __asm__("$6") = D_801D87AE[rank];
                        s32 offset = current * 12;
                        for (j = 0; j < 3; j++, offset += 4) {
                            u8 *entry = base + offset;
                            if (entry[0xA9D1] == previous && entry[0xA9D0] == one) {
                                register u32 a = *currentOut;
                                register u32 b __asm__("$3") = *previousOut;
                                *previousOut = a;
                                *currentOut = b;
                                a = *previousRank;
                                found = 1;
                                *currentRank = a;
                                *previousRank = i;
                                break;
                            }
                        }
                        if (!found) *currentRank = *previousRank;
                    } else {
                        *currentRank = rank;
                    }
                    currentRank += 2;
                    rank++;
                    previousRank += 2;
                    currentOut += 2;
                    previousOut += 2;
                    previousScore++;
                    i++;
                    currentScore++;
                } while (i < 4);
            }
        }
    }
    return D_801D87A8;
}
