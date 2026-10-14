#include "common.h"

/* Existing pointer/byte/word views only; historical APIs, indirect users,
 * complete extents and native guest-pointer/alias/alignment contracts remain
 * provisional. The known caller ignores path-dependent v0 residue. */
extern u8 D_8010C1E2, D_8010C1E3;
extern u32 func_8009FEDC(u8 *);
extern void func_8005D28C(u8 *);

void func_8009D008(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 scratchID;
    u32 currentID;
    u8 counter;
    u8 *positionRecord;
    s32 magnitude;
    u32 side;
    u8 *sidePair;

    /* Test the complete helper return word, not its low byte. */
    if (func_8009FEDC(record) != 0) {
        return;
    }

    scratchID = *(u8 *)0x1F8002AE;
    currentID = record[0x38D];
    if (scratchID == currentID ||
        currentID == D_8010C1E2 ||
        currentID == D_8010C1E3) {
        record[0x3E1] = 0;
    } else {
        func_8005D28C(record);
    }

    if (scratch[0x29A] == 4) {
        return;
    }
    /* The sentinel skips the position read; non-2 counters increment with wrap. */
    counter = record[0x3E3];
    if (counter == 2) {
        if ((s16)*(u16 *)(scratch + 0x2B8) == 0x7FFF) {
            goto clear_position_state;
        }
    } else {
        record[0x3E3] = counter + 1;
    }

    positionRecord = *(u8 **)(scratch + 0x2F4);
    magnitude = *(s16 *)(positionRecord + 2);
    if (magnitude < 0) {
        magnitude = -magnitude;
    }
    if (magnitude >= 0x1990) {
        goto side_checks;
    }

/* Keep these ordered stores and the separate final clear. */
clear_position_state:
    record[0x3E2] = 0;
    record[0x3E3] = 0;
side_checks:
    /* Use the full byte selector and fresh identifier after the callbacks. */
    side = record[0x399];
    sidePair = scratch + side * 2;
    if (record[0x38D] == sidePair[0x31E] ||
        record[0x38D] == sidePair[0x31F]) {
        record[0x3E2] = 0;
        record[0x3E3] = 0;
    }
}
