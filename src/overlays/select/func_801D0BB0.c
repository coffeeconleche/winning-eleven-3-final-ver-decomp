#include "common.h"

extern u8 D_800FF748[], D_801DA2C8[];
extern void *D_801D5A9C[];
extern void func_80192594(u32);
extern s32 func_80192720(u32), func_800ACEC8(void *, u8 *);

s32 func_801D0BB0(s32 value, u8 selector) {
    u8 *base = D_800FF748;
    s32 result;

    if (value == 0) {
        func_80192594(0);
        do {
            result = func_80192720(0);
        } while (result == 0);
        switch (result) {
        case -2:
            base[0x8F1E] = 0;
            /* Fall through to the same negative-result return. */
        case -3:
        case -1:
            return result;
        }
    }
    if (func_800ACEC8(D_801D5A9C[selector], D_801DA2C8) != 0) {
        return 17;
    }
    return 1;
}
