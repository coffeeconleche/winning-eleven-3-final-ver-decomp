#include "common.h"

/* Measured halfword/flag fields and a 1000-byte cursor stride only. Full arena,
 * layout, selector meaning and original API/return contract are provisional.
 * Products are -32768..32768; differences are -65535..65535 before abs.
 * Numeric scratch-base field access and actual value updates suffice: base
 * identity, binding and volatile view were all removed cumulatively. */
extern s16 D_1F800040 __asm__("0x1F800040");

s32 func_80067A88(u8 *records)
{
    s32 direction = -1;
    s32 i;
    s32 count;
    s32 cutoff;
    u8 *cursor;
    u8 *scratch = (u8 *)0x1F800000;

    if (records[0x399] == 0) {
        direction = 1;
    }
    i = 0;
    count = 0;
    cutoff = direction * D_1F800040;
    cursor = records + 6;
    for (; i < 10; i++, cursor += 1000) {
        if (direction * *(s16 *)(cursor - 4) < cutoff) {
            s32 difference = *(s16 *)cursor;
            difference -= *(s16 *)(*(u8 **)(scratch + 0x2F4) + 6);
            if (difference < 0) {
                difference = -difference;
            }
            difference = difference < 0x300;
            if (difference != 0) {
                count++;
            }
        }
    }
    return count < 2;
}
