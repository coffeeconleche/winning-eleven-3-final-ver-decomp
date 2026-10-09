#include "common.h"

extern u8 D_801D8DFE, D_801D8DFD, D_801DA5C8;
extern u8 D_801D8DEC, D_801D8DBE;
extern s16 D_801D8DEE, D_801D8DF0;
extern u8 *D_801D5984;

/* Coordinate/flag updates and byte-derived selection codes. Field meanings
 * and the historical return declaration remain provisional. This leaf uses
 * the basic GCC 2.7.2 profile and no stack frame or new symbol storage. */
u32 func_801C8D00(void) {
    u32 row = D_801D8DFE;

    if (row == 0) {
        u32 value;
        u32 firstColumn = D_801D8DFD;

        if (firstColumn < 2) value = 0;
        else if (firstColumn < 4) value = 1;
        else if (firstColumn < 8) value = 2;
        else {
            /* Reusing the actual predicate avoids an overlapping default
             * temporary. No register binding or identity is needed here. */
            value = firstColumn < 12;
            if (value) value = 3; else value = 4;
        }
        return value | 16;
    }
    {
        /* One real-value binding preserves the measured result allocation. */
        register u32 result __asm__("$2");

        if (D_801DA5C8 != 1) {
            s32 x;
            if (row < 5) {
                u32 column = D_801D8DFD;
                if (column < 8) {
                    u32 currentRow;
                    u8 *table;
                    u8 *record;

                    if (column != 7) x = column * 16 - 64;
                    else x = 32;
                    currentRow = D_801D8DFE;
                    table = D_801D5984;
                    D_801D8DEE = x;
                    D_801D8DEC = 12;
                    D_801D8DBE = 16;
                    currentRow--;
                    D_801D8DF0 = currentRow * 16 - 45;
                    record = table + currentRow * 7;
                    {
                        u32 lastColumn = D_801D8DFD;
                        u8 *chosen;
                        if (lastColumn == 7) chosen = record + 6;
                        else chosen = record + lastColumn;
                        result = *chosen;
                        goto done;
                    }
                }
                D_801D8DEE = column * 16 - 74;
                D_801D8DF0 = row * 16 - 61;
                D_801D8DEC = 12;
                D_801D8DBE = 16;
                if (row == 4 && column == 14) {
                    D_801D8DEC = 13;
space:
                    /* Keep the original backward shared-return target;
                     * removing this site redirects it to a later return. */
                    __asm__ volatile("" : : "m"(D_801D8DEC));
                    result = 32;
                    goto done;
                }
                {
                    u32 freshRow = D_801D8DFE;
                    result = *(D_801D5984 + freshRow * 7 + D_801D8DFD + 13);
                    goto done;
                }
            }
            {
                u32 column = D_801D8DFD;
                if ((u32)(column - 13) < 2) goto special;
                column = (u8)column;
                if (column < 10) x = column * 15 - 64;
                else x = column * 16 - 72;
                D_801D8DEE = x;
                /* Preserve the column reread after the coordinate store.
                 * This is a measured compiler aid, not an MMIO qualifier. */
                __asm__("" : : "m"(D_801D8DEE));
                {
                    u32 lastColumn = D_801D8DFD;
                    D_801D8DF0 = 27;
                    D_801D8DEC = 12;
                    {
                        u8 *table = D_801D5984;
                        D_801D8DBE = 16;
                        result = *(table + lastColumn + 55);
                        goto done;
                    }
                }
            }
        }
        {
            u32 column;
            s32 x;
            if (row == 5 && D_801D8DFD >= 11) {
special:
                D_801D8DEE = 137;
                D_801D8DF0 = 28;
                D_801D8DEC = 26;
                /* This path deliberately does not write D_801D8DBE. */
                result = 22;
                goto done;
            }
            column = D_801D8DFD;
            if (column < 12) x = column * 18 - 64;
            else x = 152;
            {
                u32 rawRow = D_801D8DFE;
                u32 rawColumn = D_801D8DFD;
                u32 narrowRow, narrowColumn;
                D_801D8DEC = 12;
                D_801D8DEE = x;
                D_801D8DBE = 16;
                narrowRow = (u8)rawRow;
                D_801D8DF0 = (narrowRow - 1) * 18 - 44;
                narrowColumn = (u8)rawColumn;
                if (narrowColumn < 7) {
                    result = (u8)(rawRow + narrowColumn * 5 - 80);
                    goto done;
                }
                if (narrowColumn == 7) {
                    if (!(rawRow & 1)) goto space;
                    result = (u8)((narrowRow >> 1) + 212);
                    goto done;
                }
                if (narrowColumn == 8) {
                    result = (u8)(rawRow - 42);
                    goto done;
                }
                if (narrowColumn == 9) {
                    if (narrowRow == 1) { result = 220; goto done; }
                    if (narrowRow == 3) { result = 166; goto done; }
                    if (narrowRow == 5) { result = 221; goto done; }
                    result = 32;
                    goto done;
                }
                if ((u32)(rawColumn - 10) < 2) {
                    result = (u8)(rawRow + (narrowColumn - 10) * 5 - 90);
                    goto done;
                }
                result = narrowColumn < 12;
                if (result) goto done;
                {
                    if (narrowRow == 1) { result = 45; goto done; }
                    if (narrowRow == 2) { result = 222; goto done; }
                    if (narrowRow == 3) { result = 223; goto done; }
                    D_801D8DEE = x - 2;
                    result = 32;
                    goto done;
                }
            }
        }
done:
        return result;
    }
}
