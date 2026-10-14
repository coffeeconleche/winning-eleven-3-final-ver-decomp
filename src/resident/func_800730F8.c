#include "common.h"

/* Existing byte-array access views; complete extents and field meanings unknown. */
extern u8 D_800FF748[], D_800E78A8[], D_800E7620[], D_800CA458[];

/* Pointer-only flag-offset view, not a complete historical struct or object. */
typedef struct {
    u8 unknown[0x93A9];
    u8 flag;
} FlagView;

/* Known callers discard the result; void is a provisional API view.
 * The observed final v0=0 is incidental. Guest-address casts and native
 * alias/alignment contracts remain provisional. No new storage is defined. */
void func_800730F8(void)
{
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 side = 0;
    u32 mappingOffset = 0x8E9C;
    u8 *groupBase = D_800E78A8;

    do {
        u8 slot = 0;
        u32 rowOffset = side * 22;
        u8 *row = (u8 *)(rowOffset + (u32)base + mappingOffset);
        u8 *selectorByte = scratch + side;
        u8 *groups = (u8 *)(rowOffset + (u32)groupBase);

        do {
            /* Retain genuine current, saved and candidate value lifetimes. */
            register u32 slotIndex __asm__("$7") = slot;
            register u8 *original __asm__("$8") = row + slotIndex;
            register u8 originalValue __asm__("$9") = *original;
            u32 selector = selectorByte[0x2DD];
            u32 mapped = originalValue;
            u8 search = 0;
            register u32 mappedOffset __asm__("$2") = mapped * 6;
            u32 selectorOffset = selector * 132;

            if (((FlagView *)(base + (mappedOffset + selectorOffset)))->flag != 0) {
                register u32 originalSlot __asm__("$15") = slotIndex;
                register u8 *old __asm__("$13") = original;
                register u8 oldValue __asm__("$14") = originalValue;
                register u32 group __asm__("$7");
                register u32 selected __asm__("$9");
                register u32 candidateSlot __asm__("$8");
                register u32 candidateValue __asm__("$4");
                u8 *candidate;
                u8 *pairBase;
                register u32 selectedOffset __asm__("$2");
                u32 candidateOffset;

                /* Preserve the three saved captures before the group lookup. */
                __asm__("" : : "r"(originalSlot), "r"(old), "r"(oldValue));
                group = groups[originalValue];
                selected = selector;

                do {
                    u8 *order = D_800CA458 + group * 11;
                    candidateSlot = order[search];
                    selectedOffset = selected * 132;
                    candidate = row + candidateSlot;
                    candidateValue = *candidate;
                    candidateOffset = candidateValue * 6;
                    candidateOffset += selectedOffset;
                    search++;
                } while (((FlagView *)(base + candidateOffset))->flag != 0 &&
                         search < 11);

                /* Exhaustion still uses the last candidate, as observed. */
                pairBase = D_800E7620;
                /* Keep the paired-row base load at the observed swap boundary. */
                __asm__ volatile("" : "=r"(pairBase) : "0"(pairBase));
                *old = candidateValue;
                *candidate = oldValue;
                {
                    u8 *paired = (u8 *)(rowOffset + (u32)pairBase);
                    register u8 *originalPair __asm__("$4") = paired + originalSlot;
                    u8 *candidatePair;
                    u8 candidateByte;
                    u8 originalByte;
                    /* Retain the original paired address through the byte swap. */
                    __asm__("" : "=r"(originalPair) : "0"(originalPair));
                    candidatePair = paired + candidateSlot;
                    candidateByte = *candidatePair;
                    originalByte = *originalPair;
                    *originalPair = candidateByte;
                    *candidatePair = originalByte;
                }
            }
            slot++;
        } while (slot < 11);
        side++;
    } while (side < 2);
}
