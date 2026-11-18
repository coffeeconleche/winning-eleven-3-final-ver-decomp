#include "common.h"

extern u8 D_800FF748[];

void func_80067D10(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *bank = D_800FF748;
    register u8 *row __asm__("$4");
    s16 first;
    s16 second;
    s32 index;
    register s32 raw __asm__("$3");
    /* The measured sixteen bytes have no loads or stores in the retail body.
     * Their original purpose is unknown. */
    u32 measured_frame[4];
    s32 x;

    /* Signed extrema from the first ten active-row slots. */
    first = -13088;
    second = 13088;
    row = bank + 2000;
    index = 0;
    do {
        if (row[0] != 0) {
            x = *(s16 *)(row + 2);
            raw = x;
            if (first < x) first = raw;
            if (x < second) second = raw;
        }
        index++;
        row += 1000;
    } while (index < 10);
    *(s16 *)(scratch + 0x30C) = first;
    *(s16 *)(scratch + 0x310) = ((s32)first + second) >> 1;
    *(s32 *)(scratch + 0x314) = second;

    /* The other side reverses which extreme is stored first. */
    first = 13088;
    second = -13088;
    row = bank + 13000;
    index = 0;
    do {
        if (row[0] != 0) {
            x = *(s16 *)(row + 2);
            raw = x;
            if (x < first) first = raw;
            if (second < x) second = raw;
        }
        index++;
        row += 1000;
    } while (index < 10);
    {
        register s32 first_word __asm__("$2") = first;
        s32 second_word = second;
        s32 average = (first_word + second_word) >> 1;
            *(s16 *)(scratch + 0x30E) = first;
        *(s16 *)(scratch + 0x312) = average;
        *(s32 *)(scratch + 0x318) = second_word;
    }
    /* An output-only operand retains the frame without accessing it. */
    __asm__ volatile("" : "=m"(measured_frame));
}
