#include "common.h"

extern u32 func_8005B36C(s32 first, s32 second, s32 third, s32 fourth);
extern u32 func_800B1128(u32 squared);
extern void func_8005BA30(u8 *record, u32 selector, u32 index);
extern u32 func_8005B7CC(u32 first, u32 second, u32 step);
extern void func_80048AD8(u8 *record, u32 first, u32 second, u32 distance);

/* Partial views of existing record storage. Products retain the original
 * compiler's low-word arithmetic; complete helper APIs remain provisional. */
void func_80081A6C(u8 *record, s16 targetFirst, s16 targetSecond)
{
    u32 direction;
    u32 distance;
    s32 firstDifference;
    s32 secondDifference;
    u32 adjusted;
    u32 captured;

    direction = func_8005B36C(*(s16 *)(record + 2),
                             *(s16 *)(record + 6), targetFirst, targetSecond);
    firstDifference = *(s16 *)(record + 2) - targetFirst;
    secondDifference = *(s16 *)(record + 6) - targetSecond;
    distance = func_800B1128((u32)(firstDifference * firstDifference) +
                            (u32)(secondDifference * secondDifference));
    if (distance < 32) {
        if (*(u16 *)(record + 0x38E) != 1) {
            func_8005BA30(record, 1, 0);
        }
        adjusted = func_8005B7CC((u8)direction, record[0x3AA], 16);
        captured = *(u32 *)(record + 0x3A0);
        record[0x3AA] = adjusted;
        record[0x3A4] = adjusted;
        if (captured < 19) {
            *(u32 *)(record + 0x3A0) = 0;
        } else {
            *(u32 *)(record + 0x3A0) = captured - 18;
        }
    } else {
        adjusted = func_8005B36C(*(s16 *)(record + 2),
                                *(s16 *)(record + 6), targetFirst, targetSecond);
        func_80048AD8(record, (u8)adjusted, (u8)direction, (u16)distance);
    }
}
