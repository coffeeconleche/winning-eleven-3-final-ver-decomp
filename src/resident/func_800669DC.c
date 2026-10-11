#include "common.h"

/* Measured halfword/byte views only; full record layout, state meanings,
 * original argument and return contracts remain provisional. Separate
 * conditions preserve the record rereads and ordered byte stores. */
extern u8 D_8010C1EE;
extern u8 D_8010C1EF;
extern u8 D_8010C1F0;
extern u8 D_8010C1F1;
extern u8 D_8010C1F2;
extern u8 D_8010C1F3;
extern u8 D_8010C1F4;
extern u8 D_8010C1F5;

void func_800669DC(u8 *record, u32 value)
{
    if (*(s16 *)(record + 6) >= 0x16F5) {
        D_8010C1EF = value;
        D_8010C1F0 = value;
        D_8010C1F1 = value;
    }
    if (*(s16 *)(record + 6) < -0x16F4) {
        D_8010C1F3 = value;
        D_8010C1F4 = value;
        D_8010C1F5 = value;
    }
    if (*(s16 *)(record + 2) >= 0x2B09) {
        D_8010C1EF = value;
        D_8010C1EE = value;
        D_8010C1F5 = value;
    }
    if (*(s16 *)(record + 2) < -0x2B08) {
        D_8010C1F1 = value;
        D_8010C1F2 = value;
        D_8010C1F3 = value;
    }
}
