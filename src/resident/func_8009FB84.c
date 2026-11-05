#include "common.h"

extern void func_8005A85C(u8 *record, s16 *x, s16 *z);
extern s32 func_8001E6B8(s32);

/* Per-mode scratch adjuster with a direction sign and a decile random
 * repositioning; partial record, packet and table views. */
void func_8009FB84(u8 *record) {
    u8 *scratch = (u8 *)0x1F800000;
    s32 dir;

    func_8005A85C(record, (s16 *)(scratch + 0xF8), (s16 *)(scratch + 0xFC));
    dir = -1;
    if (record[0x399] == 0) {
        dir = 1;
    }
    switch (*(u8 *)0x1F80030B) {
    case 2:
        *(s16 *)(scratch + 0xFC) = *(s16 *)(scratch + 0xFC) / 2;
        break;
    case 3:
        *(s16 *)(scratch + 0xFC) = *(s16 *)(scratch + 0xFC) / 4;
        break;
    case 4:
        *(s16 *)(scratch + 0xFC) = *(s16 *)(scratch + 0xFC) / 6;
        break;
    case 5:
        *(s16 *)(scratch + 0xFC) = *(s16 *)(scratch + 0xFC) / 8;
        break;
    case 0:
    case 1:
        break;
    }
    if (record[0x3DA] % 5 == 0) {
        *(u16 *)(record + 0x3DC) = func_8001E6B8(5) * 128 + 128;
        *(u16 *)(record + 0x3DE) = (func_8001E6B8(9) - 4) * 128;
    }
    *(u16 *)(scratch + 0xF8) = *(u16 *)(scratch + record[0x399] * 2 + 0x30C)
        - *(u16 *)(record + 0x3DC) * dir;
    *(u16 *)(scratch + 0xFC) = *(u16 *)(scratch + 0xFC) + *(u16 *)(record + 0x3DE);
}
