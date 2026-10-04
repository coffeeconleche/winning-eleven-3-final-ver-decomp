#include "common.h"

/* Six-byte indexing is observed; table extents and field meanings are unknown. */
extern u8 D_801D89F8[], D_801D8A08[];
extern void func_801CAF78(u32);

void func_801CADC4(u32 index, u8 side, u8 firstIndex, u8 secondIndex)
{
    u32 rawIndex = index;
    u8 *table;
    u32 narrowed;
    u8 *row;
    u32 first;
    u32 second;
    register s32 doubledSide __asm__("$9");
    register s32 special __asm__("$4");
    register s32 selection __asm__("$3");
    u8 *finalPointer;
    if ((u8)side == 0) {
        table = D_801D89F8;
        narrowed = (u8)rawIndex;
    } else {
        narrowed = (u8)rawIndex;
        table = D_801D8A08;
    }
    row = (u8 *)(narrowed * 6 + (u32)table);
    first = row[(u8)firstIndex];
    second = row[(u8)secondIndex];
    /* Empty inputs retain capture order and the original short-lived registers;
     * they emit no instructions and do not assert an original volatile contract. */
    __asm__("" : : "r"(second), "r"(first));
    {
        register u32 sideByte __asm__("$2") = (u8)side;
        __asm__("" : : "r"(sideByte));
        doubledSide = sideByte * 2;
    }
    special = 0;
    if (first - 4u < 2) {
        special = 1;
    }
    else {
        register u32 test __asm__("$2") = second - 4u;
        __asm__("" : : "r"(test), "r"(first));
        if (test < 2) {
            special = 1;
        }
    }
    selection = doubledSide + special;
    switch (selection) {
    case 0: {
        u32 key = (u8)rawIndex;
        register u8 *table __asm__("$4");
        register u8 *a __asm__("$4");
        register u32 right __asm__("$3");
        register u32 firstKey __asm__("$4");
        u32 offset;
        u8 *pairBase;
        __asm__("" : : "r"(key));
        table = D_801D89F8;
        offset = key * 6;
        pairBase = (u8 *)(offset + (u32)table);
        firstKey = (u8)firstIndex;
        a = pairBase + firstKey;
        finalPointer = pairBase + (u8)secondIndex;
        __asm__("" : : "r"(a), "r"(finalPointer));
        right = *finalPointer;
        first = *a;
        *a = right;
        goto final_store;
    }
    case 2: {
        u32 key = (u8)rawIndex;
        register u8 *table __asm__("$4");
        register u8 *a __asm__("$4");
        register u32 right __asm__("$3");
        register u32 firstKey __asm__("$4");
        u32 offset;
        __asm__("" : : "r"(key));
        table = D_801D8A08;
        offset = key * 6;
        {
            u8 *pairBase = (u8 *)(offset + (u32)table);
            firstKey = (u8)firstIndex;
            a = pairBase + firstKey;
            finalPointer = pairBase + (u8)secondIndex;
        }
        __asm__("" : : "r"(a), "r"(finalPointer));
        right = *finalPointer;
        first = *a;
        *a = right;
        goto final_store;
    }
    case 1:
    case 3: {
        register u32 key __asm__("$4") = (u8)rawIndex;
        register u8 *b __asm__("$3") = D_801D89F8;
        u32 offset;
        register u32 aIndex __asm__("$5");
        register u32 bIndex __asm__("$7");
        u8 *a;
        register u32 right __asm__("$4");
        __asm__("" : : "r"(key), "r"(b));
        offset = key * 6;
        b = (u8 *)(offset + (u32)b);
        aIndex = firstIndex;
        a = b + aIndex;
        bIndex = secondIndex;
        b += bIndex;
        __asm__("" : : "r"(b));
        right = *b;
        first = *a;
        *a = right;
        *b = first;
        /* Finish both first-table writes before the second-table reads: the
         * byte-selected addresses are not assumed to be disjoint. */
        __asm__("" : : "r"(b), "r"(aIndex), "r"(bIndex), "r"(offset) : "memory");
        {
            register u8 *table2 __asm__("$3") = D_801D8A08;
            register u8 *a2 __asm__("$5");
            register u32 right2 __asm__("$3");
            offset += (u32)table2;
            a2 = (u8 *)offset + aIndex;
            finalPointer = (u8 *)offset + bIndex;
            __asm__("" : : "r"(a2), "r"(finalPointer));
            right2 = *finalPointer;
            first = *a2;
            *a2 = right2;
            goto final_store;
        }
    }
    }
    goto refresh;
final_store:
    *finalPointer = first;
refresh:
    func_801CAF78((u8)rawIndex);
}
