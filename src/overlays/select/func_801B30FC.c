#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D94E8[], D_801D94E9[], D_801D94EA[], D_801D94EB[];
extern u8 D_8011CAF4[], D_8011CA90[], D_8011CA91[];

/* Word argument views: the measured byte narrowings are explicit below.
 * Complete original helper prototypes and record types remain unknown. */
extern u8 *func_801B500C(u32, u32);
extern void func_801B347C(u8 *, s32, u32, u32, u32, u32, u32, u32, u32);

void func_801B30FC(void) {
    u8 *base = D_800FF748;
    s32 row;
    s32 day;
    s32 match;
    s32 i;
    s32 j;
    s32 offset;
    u8 *p;

    row = 0;
    p = D_801D94E8;
    for (row = 0; row < 65; row++) {
        u8 *clear;
        j = 44;
        clear = p + j;
        for (; j >= 0; j--) {
            *clear-- = 0;
        }
        p += 45;
    }

    day = 0;
    row = 0;
    match = 0;
    offset = 0;
    for (; day < 17; day++) {
        p = D_801D94EB + offset;
        D_801D94E8[offset] = 255;
        D_801D94E9[offset] = 255;
        D_801D94EA[offset] = day;
        offset += 45;
        row++;

        if (day + 1 < 10) {
            *p++ = day + 49;
        } else {
            *p++ = (day + 1) / 10 + 48;
            *p++ = (day + 1) % 10 + 48;
        }
        if (day == 0) {
            *p++ = 's';
            *p++ = 't';
        } else if (day == 1) {
            *p++ = 'n';
            *p++ = 'd';
        } else if (day == 2) {
            *p++ = 'r';
            *p++ = 'd';
        } else {
            *p++ = 't';
            *p++ = 'h';
        }
        *p++ = ' ';
        *p++ = 'D';
        *p++ = 'a';
        *p++ = 'y';

        i = 0;
        if (i < D_8011CAF4[day]) {
            s32 pairOffset = match * 2;
            s32 rowOffset = row * 45;
            do {
                register s32 a, b;
                register u32 aa, bb;
                register u32 arg0 asm("$4"), arg1 asm("$5");
                register u32 c, d;
                u8 *record;
                register u32 score1, score2;
                u8 *result;

                /* These scoped byte captures retain the measured decoder
                 * allocation; the raw word results also feed the row stores. */
                {
                    register u32 decoded asm("$3") = D_8011CA90[pairOffset];
                    a = decoded >= 97 ? decoded - 71 : decoded - 65;
                }
                {
                    register u32 decoded asm("$3") = D_8011CA91[pairOffset];
                    b = decoded >= 97 ? decoded - 71 : decoded - 65;
                }
                aa = a & 255;
                bb = b & 255;
                /* Bind the actual callback arguments before row advancement.
                 * These captures stay live only until the first callback. */
                arg0 = aa;
                arg1 = bb;
                offset += 45;
                row++;
                {
                    register u8 *mapping = base + aa + 0xAB80;
                    register u32 first = *mapping;
                    register u8 *firstRecord = base + first * 36;
                    register u8 *mappingB = base + bb + 0xAB80;
                    register u32 second = *mappingB;
                    i++;
                    c = firstRecord[0x8F25];
                    {
                        register u8 *secondRecord = base + second * 36;
                        d = secondRecord[0x8F25];
                    }
                }
                pairOffset += 2;
                result = func_801B500C(arg0, arg1);
                score1 = result[3];
                score2 = result[4];
                D_801D94E8[rowOffset] = a;
                D_801D94E9[rowOffset] = b;
                D_801D94EA[rowOffset] = match;
                record = base + match;
                func_801B347C(D_801D94EB + rowOffset,
                              (record[0xAB50] >> 1) & 1, match & 255,
                              aa, bb, c, d, score1, score2);
                rowOffset += 45;
                match++;
            } while (i < D_8011CAF4[day]);
        }
    }
}
