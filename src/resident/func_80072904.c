#include "common.h"

/* Partial record access view; complete extent and field meanings are unknown. */
typedef struct {
    u8 unknown0[0x64A4];
    u8 flag64A4;
    u8 unknown64A5[0x64B2 - 0x64A5];
    s16 value64B2;
} Resident72904View;

extern u8 D_800FF748[];
extern u8 D_8010A5A8[];
extern u8 D_8010A5B2;
extern u8 D_80105BEC;
extern s16 D_80105BFA;
extern u8 scratch2E6 __asm__("0x1F8002E6");

/* Existing symbol views overlap the corresponding byte/halfword fields.
 * The original return contract and state meanings remain provisional. */
void func_80072904(void)
{
    Resident72904View *record = (Resident72904View *)D_800FF748;
    u8 *controls = D_8010A5A8;

    if (scratch2E6 >= 5 && (D_8010A5B2 & 3) != 0) {
        D_80105BEC = 1;
        D_80105BFA = 0x4E;
    } else {
        s32 selector = controls[0xA] & 3;

        switch (selector) {
        case 0:
            record->flag64A4 = 0;
            break;
        case 1:
            record->flag64A4 = 1;
            record->value64B2 = -0x50;
            break;
        case 2:
            record->flag64A4 = 1;
            record->value64B2 = 0x4E;
            break;
        }
    }
}
