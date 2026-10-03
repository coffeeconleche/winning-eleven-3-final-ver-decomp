#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D87B8, D_801D87B9, D_801D87BA, D_801D87BB, D_801D87BC;

u8 *func_801B500C(u8 a, u8 b) {
    s32 i = 0;
    u32 peer = b;
    register u8 *base __asm__("$10");
    u8 *cursor;
    u8 *first;
    u8 *second;
    u8 value;
    u8 *result;
    u32 other;
    u32 offset;

    /* Empty inputs retain counter/peer setup before the base and the group
     * offset before adding that base. The t2 binding retains its lifetime
     * across both searches. These aids emit no instructions. */
    __asm__ volatile ("" : : "r"(i), "r"(peer));
    base = D_800FF748;
    offset = a * 12 + 0xA9D0;
    __asm__ volatile ("" : : "r"(offset));
    cursor = (u8 *)(offset + (u32)base);
    /* Both bounded searches retain the last examined entry on a miss.
     * Only the first compare's original delay slot increments the dead
     * counter on a match; neither exited counter value is observed. */
    for (i = 0; i < 3; i++) {
        first = cursor;
        if (first[1] == peer) {
            break;
        }
        cursor = first + 4;
    }

    i = 0;
    other = a;
    cursor = base + (b * 12 + 0xA9D0);
    for (i = 0; i < 3; i++) {
        second = cursor;
        if (second[1] == other) {
            break;
        }
        cursor = second + 4;
    }

    value = first[0];
    result = &D_801D87B8;
    D_801D87B9 = a;
    D_801D87BA = b;
    *result = value;
    D_801D87BB = first[2] + first[3];
    D_801D87BC = second[2] + second[3];
    return result;
}
