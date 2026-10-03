#include "common.h"

extern void func_800AB620(s32 id);

/* Apply all four navigation checks independently, rereading after each call. */
s32 func_801A3D3C(s32 buttons, u8 side) {
    /* Retain the word-sized button argument until each individual bit mask. */
    s32 pressed = buttons;
    u8 owner = side;
    u8 *scratch = (u8 *)0x1F800000;
    u8 old = scratch[owner + 0x2DD];

    if (pressed & 0x8000) {
        u8 selection;
        u8 column;
        func_800AB620(0x50D);
        selection = scratch[owner + 0x2DD];
        column = selection % 11;
        if (column == 0) {
            scratch[owner + 0x2DD] = selection + 10;
        } else {
            scratch[owner + 0x2DD] = selection - 1;
        }
    }
    if (pressed & 0x2000) {
        u8 selection;
        u8 column;
        u8 *slot;
        func_800AB620(0x50D);
        slot = scratch + owner;
        selection = slot[0x2DD];
        column = selection % 11;
        if (column == 10) {
            slot[0x2DD] = selection - 10;
        } else {
            slot[0x2DD] = selection + 1;
        }
    }
    if (pressed & 0x1000) {
        u8 selection;
        u8 *slot;
        func_800AB620(0x50D);
        slot = scratch + owner;
        selection = slot[0x2DD];
        if (selection < 11) {
            slot[0x2DD] = selection + 33;
        } else {
            slot[0x2DD] = selection - 11;
        }
    }
    if (pressed & 0x4000) {
        u8 selection;
        u8 *slot;
        func_800AB620(0x50D);
        slot = scratch + owner;
        selection = slot[0x2DD];
        if (selection < 33) {
            slot[0x2DD] = selection + 11;
        } else {
            slot[0x2DD] = selection - 33;
        }
    }
    return old != (scratch + owner)[0x2DD];
}
