#include "common.h"

extern s16 D_800EF864;
/* The leaf helper does not consume the incoming argument registers. */
extern void func_8006F310(void);

/* Access width and word result are observed; state meaning/API is unknown. */
s32 func_8006F290(u32 increment)
{
    if (D_800EF864 < 0x80) {
        D_800EF864 += (u8)increment;
        if (D_800EF864 > 0x80) {
            D_800EF864 = 0x80;
        }
        func_8006F310();
        return 0;
    }
    D_800EF864 = 0x80;
    func_8006F310();
    return 1;
}
