#include "common.h"

extern void func_801A3588(void);
extern void func_800AB620(s32 id);
extern u8 D_8010A322;
extern s32 D_801DA060;
extern s32 D_801DA064;

/* Refresh state and conditionally toggle a scratchpad selection between 40/41. */
s32 func_801A3EE8(u16 buttons, u8 side) {
    u8 *selections = (u8 *)0x1F800000;
    u8 old = selections[side + 0x2DD];

    func_801A3588();
    if ((buttons & 0x5000) && side != 1 && D_8010A322 == 10) {
        u8 selection;
        D_801DA060 = 0;
        D_801DA064 = 0;
        func_800AB620(0x50D);
        selection = selections[side + 0x2DD];
        if (selection == 40) {
            selections[side + 0x2DD] = selection + 1;
        } else if (selection == 41) {
            selections[side + 0x2DD] = selection - 1;
        }
    }
    return old != (selections + side)[0x2DD];
}
