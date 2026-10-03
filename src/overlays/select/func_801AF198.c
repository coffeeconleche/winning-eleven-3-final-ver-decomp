#include "common.h"

typedef struct {
    u8 field0;
    u8 field1;
    u8 field2;
    u8 field3;
    u16 field4;
    u8 field6;
    u8 field7;
    u8 field8;
    u8 field9;
} Record;

extern u8 D_800FF748[];
extern u8 D_801DA620[][2];
extern u8 D_801D86F2;
extern u8 D_801D86F3;
extern Record D_801D8B20[];
extern u8 D_801D8B22;
extern u8 D_801D8B23[], D_801D8B26[];
extern u8 D_801D8B2A[], D_801D8B2B[], D_801D8B2D[], D_801D8B31[];

void func_801AF198(void) {
    u8 *base = D_800FF748;
    /* Keep the original loop counters and ranking cursor in their registers. */
    register s32 i asm("$11");
    s32 offset;
    register s32 current_offset asm("$13");
    register u8 *rank asm("$10");
    register s32 rank_value asm("$12");
    u8 *pair;
    Record *record;
    u32 value3;
    u32 value4;
    u32 value6;
    register u8 missing asm("$14");
    register u8 first_rank asm("$24");

    /* Preserve initialization order and separate zero/one register lifetimes. */
    __asm__ volatile ("" : : "r"(base));
    D_801D86F3 = 0;
    i = 0;
    __asm__ volatile ("" : "+r"(i));
    missing = 255;
    __asm__ volatile ("" : : "r"(missing));
    first_rank = 1;
    __asm__ volatile ("" : "+r"(first_rank));
    rank = &D_801D8B22;
    rank_value = 1;
    offset = -10;
    current_offset = 0;
    do {
        /* Retain the two byte offsets instead of folding them into cursors. */
        __asm__ volatile ("" : "+r"(offset), "+r"(current_offset));
        pair = D_801DA620[0x3B1 - i];
        record = (Record *)((u8 *)D_801D8B20 + current_offset);
        /* Possible byte aliases preserve the original descriptor reloads. */
        value3 = record->field3 = (base + (pair[0] * 132 + pair[1] * 6))[0x93A4];
        value4 = record->field4 = *(u16 *)((base + (pair[0] * 132 + pair[1] * 6)) + 0x93A6);
        value6 = record->field6 = (base + (pair[0] * 132 + pair[1] * 6))[0x93A5];
        if (D_801D86F2 == 0) {
            if (value3 != 0) {
                D_801D86F3++;
                D_801D8B2A[offset] = pair[0];
                D_801D8B2B[offset] = pair[1];
                if (i == 0) {
                    D_801D8B22 = first_rank;
                } else if (D_801D8B2D[offset] == D_801D8B23[offset]) {
                    *rank = (&D_801D8B22)[offset];
                } else {
                    *rank = rank_value;
                }
                if (value4 != 0) {
                    D_801D8B31[offset] = (value3 * 1000 + 5) / (value4 * 10U);
                } else {
                    D_801D8B31[offset] = 0;
                }
            } else {
                goto invalid;
            }
        } else {
            if (value6 == 0) {
invalid:
                D_801D8B2A[offset] = missing;
                D_801D8B2B[offset] = missing;
            } else {
                D_801D86F3++;
                D_801D8B2A[offset] = pair[0];
                D_801D8B2B[offset] = pair[1];
                if (i == 0) {
                    D_801D8B22 = first_rank;
                } else if (D_801D8B2A[offset + 6] == D_801D8B26[offset]) {
                    *rank = (&D_801D8B22)[offset];
                } else {
                    *rank = rank_value;
                }
            }
        }
        rank += 10;
        rank_value++;
        offset += 10;
        i++;
        current_offset += 10;
    } while (i < 32);
}
