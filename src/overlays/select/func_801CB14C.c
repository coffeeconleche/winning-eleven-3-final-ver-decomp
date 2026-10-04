#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D89F8[];
extern u8 D_801D8A08[];
extern u8 func_801CB334(u16 value);

/* Populate the observed six-byte rows from ordered halfword lookups.
 * The original table/record types and field meanings are unknown. */
void func_801CB14C(void)
{
    u8 i = 0;
    do {
        /* Retain the measured wrapped-byte widening and saved-register
         * offsets; the halfword offset later becomes the global address. */
        register u32 rowOffset __asm__("s1") = (u8)i;
        register u32 halfOffset __asm__("s3");
        u8 *scratch;
        /* The first destination base is initialized after the first call. */
        register u8 *firstRow __asm__("s0");
        u8 *secondRow;
        u8 index;
        __asm__("" : "=r"(rowOffset) : "0"(rowOffset));
        halfOffset = rowOffset * 2;
        {
            /* Keep one shared high scratchpad base rather than folding its
             * indexed loads into independent absolute addresses. */
            register u8 *scratchBase __asm__("a1") = (u8 *)0x1F800000;
            __asm__("" : "=r"(scratchBase) : "0"(scratchBase));
            scratch = (u8 *)((u32)halfOffset + (u32)scratchBase);
            rowOffset = halfOffset + rowOffset;
            index = func_801CB334(*(u16 *)(scratch + 0x1A));
        }
        firstRow = D_801D89F8;
        rowOffset *= 2;
        firstRow = (u8 *)((u32)rowOffset + (u32)firstRow);
        firstRow[index] = 0;
        index = func_801CB334(*(u16 *)(scratch + 0x16));
        {
            u8 *destination = firstRow + index;
            register s32 one __asm__("a1");
            /* Retain address calculation before the argument-register
             * constant used by this store. */
            __asm__("" : "=r"(destination) : "0"(destination) : "a1");
            one = 1;
            *destination = one;
        }
        firstRow[func_801CB334(*(u16 *)(scratch + 0x12))] = 2;
        firstRow[func_801CB334(*(u16 *)(scratch + 0x1E))] = 3;
        firstRow[func_801CB334(*(u16 *)(scratch + 0x2E))] = 4;
        firstRow[func_801CB334(*(u16 *)(scratch + 0x22))] = 5;
        index = func_801CB334(*(u16 *)(scratch + 0x2A));
        secondRow = D_801D8A08 + rowOffset;
        secondRow[index] = 0;
        index = func_801CB334(*(u16 *)(scratch + 0x26));
        {
            u8 *destination = secondRow + index;
            register s32 one __asm__("a1");
            __asm__("" : "=r"(destination) : "0"(destination) : "a1");
            one = 1;
            *destination = one;
        }
        {
            /* Preserve the separate base load and saved offset addition,
             * not a folded absolute halfword address. */
            register u8 *base __asm__("a1");
            base = D_800FF748;
            __asm__("" : "=r"(base) : "0"(base));
            halfOffset += (u32)base;
            secondRow[func_801CB334(*(u16 *)(halfOffset + 0x8F1A))] = 2;
        }
        secondRow[func_801CB334(*(u16 *)(scratch + 0x32))] = 3;
        secondRow[func_801CB334(*(u16 *)(scratch + 0x2E))] = 4;
        secondRow[func_801CB334(*(u16 *)(scratch + 0x22))] = 5;
        i++;
    } while ((u8)i < 2);
}
