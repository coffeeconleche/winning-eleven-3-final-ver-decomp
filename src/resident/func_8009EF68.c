#include "common.h"

extern void func_8005A85C(u8 *, u16 *, u16 *);
extern void func_800691A8(u8 *);
extern void func_80069800(u8 *);
extern void func_80069B28(u8 *);
extern void func_80069FD0(u8 *);
extern void func_8006B044(u8 *);
extern void func_8006B46C(u8 *);
extern void func_800A3084(u8 *, u16 *, u16 *);
extern void func_800A0B60(u8 *, u16 *, u16 *);

/* Replay camera step: pan the shared camera X by the replay direction, run
 * the handler picked by the record's phase byte, feed both camera halfwords
 * to the camera helpers, then lock the pan to the replay-side bound and the
 * playfield margins. */
void func_8009EF68(u8 *record)
{
    u16 *camx = (u16 *)0x1F8000F8;
    u8 *scratch = (u8 *)0x1F800000;
    s16 dir;

    func_8005A85C(record, (u16 *)0x1F8000F8, (u16 *)0x1F8000FC);
    dir = (record[0x399] == 0) ? 1 : -1;
    *camx += (dir * 11217) / 5;
    switch (record[0x391]) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        func_800691A8(record);
        break;
    case 6:
    case 7:
    case 8:
        func_80069800(record);
        break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
        func_80069B28(record);
        break;
    case 14:
    case 15:
    case 16:
        func_80069FD0(record);
        break;
    case 19:
    case 20:
        func_8006B044(record);
        break;
    case 17:
    case 18:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
        func_8006B46C(record);
        break;
    }
    func_800A3084(record, (u16 *)(scratch + 0xF8), (u16 *)(scratch + 0xFC));
    func_800A0B60(record, (u16 *)(scratch + 0xF8), (u16 *)(scratch + 0xFC));
    if (record[0x399] == 0) {
        if (*(s32 *)(scratch + 0x318) < *(s16 *)(scratch + 0xF8)) {
            *(s16 *)(scratch + 0xF8) = *(s32 *)(scratch + 0x318);
            goto after;
        }
    }
    if (record[0x399] == 1) {
        if (*(s16 *)(scratch + 0xF8) < *(s32 *)(scratch + 0x314)) {
            *(s16 *)(scratch + 0xF8) = *(s32 *)(scratch + 0x314);
            goto after;
        }
    }
after:
    if (*(s16 *)(scratch + 0xF8) < -0x3280) {
        *(s16 *)(scratch + 0xF8) = -0x3270;
    }
    if (*(s16 *)(scratch + 0xF8) > 0x3280) {
        *(s16 *)(scratch + 0xF8) = 0x3270;
    }
    if (*(s16 *)(scratch + 0xFC) < -0x2060) {
        *(s16 *)(scratch + 0xFC) = -0x2050;
    }
    if (*(s16 *)(scratch + 0xFC) > 0x2060) {
        *(s16 *)(scratch + 0xFC) = 0x2050;
    }
}
