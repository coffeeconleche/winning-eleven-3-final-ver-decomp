#include "common.h"

extern void func_8005A85C(u8 *record, s16 *x, s16 *z);
extern void func_800A3084(u8 *record, s16 *x, s16 *z);
extern void func_80068FC0(u8 *record, s16 x, s16 z);
extern void func_80069660(u8 *record);
extern void func_8006A16C(u8 *record);
extern void func_8006A2E4(u8 *record);
extern void func_8006AC4C(u8 *record);
extern void func_8006BDE4(u8 *record);
extern void func_8006B904(u8 *record);
extern void func_8006C1EC(u8 *record);

/* Replay-frame mode router over the record state byte at +0x391, then a
 * pair of clamped scratch coordinates is submitted. */
void func_8009F1BC(u8 *record) {
    u8 *scratch = (u8 *)0x1F800000;
    s16 value;

    func_8005A85C(record, (s16 *)(scratch + 0xF8), (s16 *)(scratch + 0xFC));
    switch (record[0x391]) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        func_80069660(record);
        break;
    case 6:
    case 7:
    case 8:
        func_8006A16C(record);
        break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
        func_8006A2E4(record);
        break;
    case 14:
    case 15:
    case 16:
        func_8006AC4C(record);
        break;
    case 19:
    case 20:
        func_8006BDE4(record);
        break;
    case 17:
    case 18:
    case 21:
    case 22:
    case 23:
        func_8006B904(record);
        break;
    case 24:
    case 25:
        func_8006C1EC(record);
        break;
    }
    func_800A3084(record, (s16 *)(scratch + 0xF8), (s16 *)(scratch + 0xFC));
    value = *(s16 *)(scratch + 0xF8);
    if (value < -0x3280) {
        *(s16 *)(scratch + 0xF8) = -0x3270;
    }
    value = *(s16 *)(scratch + 0xF8);
    if (value >= 0x3281) {
        *(s16 *)(scratch + 0xF8) = 0x3270;
    }
    value = *(s16 *)(scratch + 0xFC);
    if (value < -0x2060) {
        *(s16 *)(scratch + 0xFC) = -0x2050;
    }
    value = *(s16 *)(scratch + 0xFC);
    if (value >= 0x2061) {
        *(s16 *)(scratch + 0xFC) = 0x2050;
    }
    func_80068FC0(record, *(s16 *)(scratch + 0xF8), *(s16 *)(scratch + 0xFC));
}
