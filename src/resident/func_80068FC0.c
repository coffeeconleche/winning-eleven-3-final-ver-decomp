#include "common.h"

extern s32 abs(s32 value);
/* The full callee consumes record and unsigned low-word distance, and
 * overwrites incoming a2/a3. Its complete API remains provisional. */
extern u32 func_80068554(u8 *record, u32 distance);

void func_80068FC0(u8 *record, u32 first, u32 second)
{
    register s32 magnitude __asm__("$6") = second;
    u32 target = magnitude;
    register u32 storedFirst __asm__("$7") = first;
    s32 dx, dy;
    u32 distance, other;

    /* Retain the actual raw-word copies before narrowing. Individual binding
     * removals change 11/7 words; dropping the first-word input changes 7;
     * input-only magnitude changes its shift source. This tied identity emits
     * nothing and adds no clobber. Removing all aids changes 50 words. */
    __asm__("" : "=r"(magnitude) : "0"(magnitude), "r"(storedFirst));
    /* Only the low signed halfword is tested; keep the raw target otherwise.
     * abs receives at worst -32768, safely representable after negation. */
    magnitude = abs((s16)magnitude);
    magnitude = magnitude < 0x2081;
    if (!magnitude) {
        target = 1;
    }
    dx = *(s16 *)(record + 2) - (s16)first;
    distance = (u32)((long long)dx * dx);
    dy = *(s16 *)(record + 6) - (s16)target;
    other = (u32)((long long)dy * dy);
    /* Partial record view only. Wide products and unsigned addition retain
     * low-word wrapping at coordinate extremes without signed overflow. */
    *(u16 *)(record + 0x3BC) = storedFirst;
    *(u16 *)(record + 0x3BE) = target;
    distance += other;
    if (*(u8 *)0x1F80029A == 1 && (u8)func_80068554(record, distance)) {
        *(u16 *)(record + 0x3D4) |= *(u16 *)(0x1F800022 + record[0x398] * 2);
    }
}
