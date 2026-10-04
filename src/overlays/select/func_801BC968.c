#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D9291[], D_801D92A1[], D_801D94E8[];
extern u8 D_8011CE9C[], D_8011CE9D[];

void func_801BC968(void) {
    u8 *base = D_800FF748;
    s32 fill = 28;
    u32 mapOffset = 0xAB80, space = 32, nine = 9, marker = 31;
    u8 *secondIndex;
    u8 *firstIndex;
    s32 outputOffset;
    s32 inputOffset;
    /* Keep the first output base in the measured register: freeing it changes
     * the row/constant allocation. The original aggregate type is unknown. */
    register u8 *firstBase asm("$15") = D_801D94E8;
    u8 *secondBase = firstBase + 360;
    u8 *secondRow;
    u8 *firstRow;

    secondIndex = D_801D9291;
    firstIndex = secondIndex - 1;
    outputOffset = 0;
    inputOffset = 0;
    secondRow = secondBase;
    firstRow = firstBase;

    /* Two index bytes and two 45-byte rows per iteration. Keep each mode and
     * record-index lookup separate: intervening byte stores may alias them. */
    do {
        u8 *second = secondRow;
        u8 *first;
        u8 *end;
        u8 *record;
        /* A shared v0 index preserves the two table-address operand orders
         * without hoisting table pointers into additional saved registers. */
        register s32 tableIndex asm("$2");
        tableIndex = *(u8 *)((u32)base + 0x8F22) * 16;
        tableIndex = inputOffset + tableIndex;
        *firstIndex = D_8011CE9C[tableIndex];
        first = firstRow;
        tableIndex = *(u8 *)((u32)base + 0x8F22) * 16;
        tableIndex = inputOffset + tableIndex;
        *secondIndex = D_8011CE9D[tableIndex];
        end = secondRow + 45;
        do {
            *first = 0;
            *second = 0;
            second++;
            first++;
        } while ((s32)second < (s32)end);
        /* The byte codes below are measured; their higher-level meaning and
         * the original row/record declarations have not been recovered. */
        first = (u8 *)(outputOffset + (u32)firstBase);
        *first = fill;
        first++;
        record = base + *(u8 *)((u32)base + *firstIndex + mapOffset) * 36;
        *first = record[0x8F25];
        first++;
        *first = space;
        first++;
        *first = nine;
        first++;
        *first = 88;
        first++;
        *first = space;
        first++;
        *first = marker;
        record = base + *(u8 *)((u32)base + *firstIndex + mapOffset) * 36;
        first[1] = record[0x8F25];
        inputOffset += 2;
        first = (u8 *)(outputOffset + (u32)secondBase);
        *first = marker;
        first++;
        record = base + *(u8 *)((u32)base + *secondIndex + mapOffset) * 36;
        *first = record[0x8F25];
        first++;
        *first = space;
        first++;
        *first = nine;
        first++;
        *first = 48;
        first++;
        *first = space;
        first++;
        *first = fill;
        record = base + *(u8 *)((u32)base + *secondIndex + mapOffset) * 36;
        first[1] = record[0x8F25];
        firstIndex += 2;
        secondIndex += 2;
        secondRow += 45;
        firstRow += 45;
        outputOffset += 45;
    } while ((s32)secondIndex < (s32)D_801D92A1);
}
