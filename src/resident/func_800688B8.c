#include "common.h"

/* Existing 1,000-byte record stride and scratch pointer views only; table
 * extent, record layout and native pointer/alias/alignment contracts unknown. */
extern u8 D_800FF748[];
extern u8 *scratch2F4 __asm__("0x1F8002F4");

/* The sole known caller ignores v0; the original finishes with zero residue.
 * Historical return/parameter declarations and indirect users are provisional. */
void func_800688B8(u8 *output, u32 selector)
{
    /* All ten words are read/shifted; this is the original live 40-byte frame. */
    u32 distances[10];
    u8 first = 13;
    u8 count;
    u8 position;
    u8 back;
    u8 *table = D_800FF748;
    u8 *record;
    u8 *identifier;
    u8 *other;
    s32 referenceX;
    s32 referenceZ;

    if (!(u8)selector) {
        first = 2;
    }
    for (count = 0; count < 10; count++) {
        output[count] = first + count;
        distances[count] = 0x7FFFFFFF;
    }
    record = table + first * 1000;
    count = 0;
    other = scratch2F4;
    /* Field cursor 0x38D shares the row's 1,000-byte stride. Its relative
     * halfword views below denote record offsets 2/6, not a new layout. */
    identifier = record + 0x38D;
    referenceX = *(s16 *)(other + 2);
    referenceZ = *(s16 *)(other + 6);
    for (; count < 10; count++, identifier += 1000, record += 1000) {
        if (record[0]) {
            s32 dx = referenceX - *(s16 *)(identifier - 0x38B);
            s32 dz = referenceZ - *(s16 *)(identifier - 0x387);
            /* Each signed-wide square fits; retain its low word and wrap sum. */
            u32 distance = (u32)((long long)dx * dx) +
                           (u32)((long long)dz * dz);
            for (position = 0; position < 10; position++) {
                if (distance < distances[position]) {
                    for (back = 9; back > position; back--) {
                        output[back] = output[back - 1];
                        distances[back] = distances[back - 1];
                    }
                    /* Load the identifier after shifts, not before aliasing writes. */
                    output[position] = *identifier;
                    distances[position] = distance;
                    /* Exhaust the byte-index search; its increment makes 11. */
                    position = 10;
                }
            }
        }
    }
}
