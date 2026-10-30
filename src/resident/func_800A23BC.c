#include "common.h"

/* Kick-off classifier by animation selector and side; partial record view. */
s32 func_800A23BC(u8 *record, u32 selector) {
    u8 *scratch = (u8 *)0x1F800000;
    s32 side;
    s32 coord;
    /* Register binding keeps the absolute value's copy in $3 after the
     * scratch base dies there; removing it lets CSE drop the copy (measured). */
    register s32 value __asm__("$3");

    switch (selector & 0xFF) {
    case 1:
        return 20;
    case 2:
        if (record[0x399] == 0) goto negBlock;
        goto posBlock;
    case 3:
        if (record[0x399] == 0) goto posBlock;
negBlock:
        if (*(s16 *)(record + 6) <= 0) goto fifteen;
        return 7;
fifteen:
        return 15;
posBlock:
        if (*(s16 *)(record + 6) <= 0) goto seven;
        return 15;
seven:
        return 7;
    case 4:
        side = record[0x399];
        if (side == 0) {
            if (*(s16 *)(*(s32 *)(scratch + 0x2F4) + 2) > 0) goto dist;
        }
        if (side != 1) {
            return 0;
        }
        if (*(s16 *)(*(s32 *)(scratch + 0x2F4) + 2) >= 0) {
            return 0;
        }
dist:
        coord = *(s16 *)(*(s32 *)(scratch + 0x2F4) + 2);
        value = coord;
        if (coord < 0) {
            value = -value;
        }
        if (value < 0x110A) {
            return 3;
        }
        if (value < 0x1990) {
            return 5;
        }
        return 7;
    case 0:
    case 5:
    case 6:
        return 10;
    case 7:
        return 0;
    }
}
