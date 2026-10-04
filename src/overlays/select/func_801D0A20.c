#include "common.h"

extern u8 D_801D5AA4;
extern u32 D_801D5A48;
extern s32 D_801D8C68;
extern void *D_801D587C;
extern s32 func_80192848(s32), func_801D0BB0(s32, u8);
extern void func_801929B4(u32), func_80192520(u32);
extern s32 func_801924A0(void), func_801D0C80(u8);
extern u8 func_801C52E4(s32, s32, s32, void *, s32, s32);

/* Call/field types are measured access views; original state meanings unknown. */
s32 func_801D0A20(s32 selector) {
    s32 result = 0;
    switch (D_801D5AA4) {
    case 0:
        D_801D5A48 = 0;
        D_801D8C68 = func_80192848(0);
        D_801D8C68 = func_80192848(0);
        if (func_801D0BB0(D_801D8C68, (u8)selector) == 17) {
            func_801929B4(0);
            D_801D5AA4++;
        } else {
            func_80192520(0);
            /* Preserve the indefinite retry and the special 1 -> 2 result. */
            do {
                result = func_801924A0();
            } while (result == 0);
            if (result == 1) result = 2;
        }
        break;
    case 1:
        if (func_801C52E4(1, 144, 52, D_801D587C, -8, 5) != 0) {
            D_801D5A48 = 0;
            D_801D5AA4++;
        }
        break;
    case 2:
        D_801D5A48++;
        result = func_801D0C80((u8)selector);
        if (result != 0) D_801D5AA4 = 0;
        break;
    }
    if (result != 0) D_801D5A48 = 0;
    return result;
}
