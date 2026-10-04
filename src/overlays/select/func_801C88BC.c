#include "common.h"

extern u8 D_801D8DFD, D_801D8DFE;
extern void func_80193FB4(u32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
#define EMIT(id, word, last) func_80193FB4(id, word, 0, 0, 0, 22, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, last)
void func_801C88BC(u8 mode, u8 selection) {
    s32 i;
    /* All modes first submit these five baseline entries. */
    for (i = 0; i < 5; i++) {
        EMIT(i + 7, i + 0x9007, 1);
    }
    switch (mode) {
    case 1: {
        EMIT(selection + 7, selection + 0x900C, 1);
        break;
    }
    case 2: {
        /* Retain the byte selection across the callback. */
        i = selection;
        EMIT(i + 7, i + 0x9011, 1);
        if (i == 0 && D_801D8DFE == 0) {
            u32 value = D_801D8DFD;
            if ((u32)(value - 2) < 2) {
                EMIT(8, 0x900D, 1);
            } else if ((u32)(value - 4) < 4) {
                EMIT(9, 0x900E, 1);
            } else if ((u32)(value - 8) < 4) {
                EMIT(10, 0x900F, 1);
            } else if (value >= 12) {
                EMIT(11, 0x9010, 1);
            }
        } else if ((i = selection) == 1 && D_801D8DFE == 0) {
            /* The range differences use the raw loaded word; the first and
             * last comparisons explicitly use its unsigned byte view. */
            u32 value = D_801D8DFD;
            s32 word;
            u32 id;
            if ((u8)value < 2) {
                id = 7; word = 0x900C;
            } else if ((u32)(value - 4) < 4) {
                id = 9; word = 0x900E;
            } else if ((u32)(value - 8) < 4) {
                id = 10; word = 0x900F;
            } else if ((u8)value >= 12) {
                id = 11; word = 0x9010;
            } else return; /* Values 2 and 3 have no further submission. */
            EMIT(id, word, i);
        }
        break;
    }
    }
}

