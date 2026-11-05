#include "common.h"

extern u8 D_8010C1D8[];
extern void func_800A3450(u8 *record);
extern s16 func_8005A7E4(s32, s32, s32);
extern s16 func_8005A76C(s32, s32, s16);

/* Replay-mode weight interpolation on the scratch mode at 0x1F80030B;
 * partial roster, record and packet views. */
void func_80069FD0(u8 *input) {
    u8 *record = input;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *roster = D_8010C1D8;
    s32 weight;
    u8 *entry;
    s32 side;
    s32 t;
    s32 coord;
    s32 side2;

    func_800A3450(record);
    switch (*(u8 *)0x1F80030B) {
    case 0:
        *(s16 *)(scratch + 0xF8) = (*(s16 *)(scratch + 0xF8) * 2
            + *(s16 *)(*(u32 *)(scratch + 0x2F4) + 2)) / 3;
        /* fallthrough */
    case 1:
        weight = 5;
        if (record[0x391] == 16) weight = 10;
        break;
    case 2:
    case 3:
        weight = 10;
        if (record[0x391] == 16) weight = 20;
        break;
    case 4:
    case 5:
        weight = 20;
        if (record[0x391] == 16) weight = 30;
        break;
    }
    *(s16 *)(scratch + 0xFC) = func_8005A7E4(*(s16 *)(scratch + 0xFC),
        *(s16 *)(*(u32 *)(scratch + 0x2F4) + 6), weight & 0xFF);
    entry = roster + record[0x398];
    if (entry[0xD] == 4) {
        side = record[0x399];
        if (side == 0) {
            coord = *(s16 *)(*(u32 *)(scratch + 0x2F4) + 2);
            if (coord > 0) goto adjust;
            t = 1;
        } else {
            t = 1;
        }
        if (side != t) goto end;
        coord = *(s16 *)(*(u32 *)(scratch + 0x2F4) + 2);
        if (coord >= 0) goto end;
adjust:
        side2 = record[0x399];
        *(s16 *)(scratch + 0xF8) = func_8005A76C(*(s16 *)(scratch + 0xF8),
            *(u32 *)(scratch + side2 * 4 + 0x314), 3);
    }
end:
    ;
}
