#include "common.h"

extern u8 D_800FF748[];
extern u32 func_8005B36C(s32, s32, s32, s32);

void func_800818DC(u8 *object)
{
    u8 slot;
    register u8 *pool __asm__("$5");
    u8 *other;
    s32 first;
    s32 second;

    pool = D_800FF748;
    slot = ((u8 *)0x1F800000)[0x2AD] % 24;
    other = pool + slot * 1000;
    if (object != other) {
        if (*(u32 *)(other + 0x3A0) >= 0x20) {
            if ((u32)(u8)(func_8005B36C(*(s16 *)(other + 2), *(s16 *)(other + 6),
                *(s16 *)(object + 2), *(s16 *)(object + 6)) - object[0x3A4]) >= 0x81) {
                if ((s16)(u8)(object[0x3A4] - func_8005B36C(*(s16 *)(other + 2),
                    *(s16 *)(other + 6), *(s16 *)(object + 2), *(s16 *)(object + 6))) < 0x19) {
                    goto move;
                }
                return;
            }
            if ((s16)(u8)(func_8005B36C(*(s16 *)(other + 2), *(s16 *)(other + 6),
                *(s16 *)(object + 2), *(s16 *)(object + 6)) - object[0x3A4]) < 0x19) {
                goto move;
            }
            return;
        }
    }
    return;
move:
    first = *(s16 *)(object + 2) - *(s16 *)(other + 2);
    second = *(s16 *)(object + 6) - *(s16 *)(other + 6);
    if (first * first + second * second < 0x401) {
        if (*(s16 *)(other + 6) < *(s16 *)(object + 6)) {
            *(s16 *)(object + 6) = *(s16 *)(object + 6) + 0x20;
        } else {
            *(s16 *)(object + 6) = *(s16 *)(object + 6) - 0x20;
        }
    }
}
