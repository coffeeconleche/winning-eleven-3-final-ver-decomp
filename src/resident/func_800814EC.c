#include "common.h"

extern s16 D_800F3566;
extern u32 func_8005B36C(s32 first, s32 second, s32 third, s32 fourth);

/* Partial record and signed-halfword access views only. The helper consumes
 * signed low halves; its API, record layout, and return residue are provisional. */
void func_800814EC(u8 *object)
{
    s32 targetFirst;
    s32 targetSecond;
    s32 first;
    s32 second;

    if (*(s16 *)(object + 6) > 0) {
        targetSecond = 0x2100;
    } else {
        targetSecond = -0x2100;
    }
    if (*(s16 *)(object + 2) > 0) {
        if ((s16)(D_800F3566 % 16) == 5) {
            targetFirst = 0x3260;
        } else {
            targetFirst = 0x23E2;
        }
    } else {
        if ((s16)(D_800F3566 % 16) == 5) {
            targetFirst = -0x3260;
        } else {
            targetFirst = -0x23E2;
        }
    }
    first = *(s16 *)(object + 2);
    second = *(s16 *)(object + 6);
    *(s16 *)(object + 0x3C4) = targetFirst;
    *(s16 *)(object + 0x3C6) = targetSecond;
    object[0x3AB] = func_8005B36C(first, second, targetFirst, targetSecond);
}
