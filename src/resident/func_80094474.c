#include "common.h"

/* Signed low-halfword argument views; original API and return contract unknown.
 * Preserve the ordered upper-first tests, including inverted bounds. */
void func_80094474(s32 *value, s32 upper, s32 lower)
{
    s32 current;

    upper = (s16)upper;
    current = *value;

    if (current > upper) {
        *value = upper;
    } else if (current < (s16)lower) {
        *value = (s16)lower;
    }
}
