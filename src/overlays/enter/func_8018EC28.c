#include "common.h"

extern u8 D_8010A322;
extern u8 D_800F1018[];
extern u32 D_801946F8;
extern void func_8018CA38(void *);
extern void func_8018CB78(void *);
extern void func_8018CCB4(void *);
extern s32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern s32 func_800B1128(s32);
extern void func_800B1F78(void *, void *);
extern void func_800B2388(void *, void *);
extern void func_800B6A78(void *, void *);
extern void func_800B4A14(void *);
extern u32 func_800B2728(u32, u32, u32, u32, u32, s32, void *);

/* Only the copied word layout is known, not the fields' original meanings. */
typedef struct { u32 words[8]; } Words8;

/* Per-record part transform and draw pass. Record, part-table and scratch
 * layouts are byte/halfword access views; field meanings and helper prototypes
 * remain uncertain. The tilt clamp tests only the stored low byte of the
 * unsigned quotient, and the part-index remainder is narrowed to a byte. */
void func_8018EC28(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 depth;
    s32 slot;
    s32 i;

    if (*(s32 *)(scratch + 0x120) <= 0x200) depth = 0x200;
    else depth = *(s32 *)(scratch + 0x120);
    *(s16 *)(record + 0x14) = (*(s32 *)(scratch + 0x118) << 10) / depth;
    *(s16 *)(record + 0x16) = ((*(s32 *)(scratch + 0x11C) - 0x210) << 10) / depth;
    if (D_8010A322 >= 0x20 && (u16)(*(u16 *)(record + 0x14) + 0x110) > 0x220) return;

    if (scratch[0x2E5] == 0) {
        if (scratch[0x2E4] == 0) func_8018CA38(record);
        else func_8018CB78(record);
    } else {
        func_8018CCB4(record);
    }

    i = 0;
    for (slot = record[0x3A5]; slot < record[0x3A6]; slot++, i++) {
        u8 *coord;
        s16 *pose;
        if (slot == 20 || slot == 23) continue;
        coord = scratch + 0x33C;
        *(u8 **)(scratch + 0x384) = record + 0x3C;
        *(u32 *)(scratch + 0x33C) = 0;
        pose = (s16 *)(*(u8 **)(record + 0x1C) + i * 12);
        if (i == 0 && record[0x3A7] == 1) {
            if (scratch[0x1EC] == 0 ||
                *(s32 *)(scratch + 0x290) % 11 == (u8)(record[0x38D] % 11)) {
                u8 *target = *(u8 **)(scratch + 0x2F4);
                s32 dx = *(s16 *)(record + 2) - *(s16 *)(target + 2);
                s32 dz = *(s16 *)(record + 6) - *(s16 *)(target + 6);
                u32 dist = func_800B1128(dx * dx + dz * dz) + 16;
                s32 height = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 4) + 0x1A0;
                u32 tilt;
                u32 mag;
                mag = height < 0 ? -height : height;
                tilt = (mag << 5) / dist;
                if ((u8)tilt > 24) tilt = 24;
                record[0x3A9] = tilt;
                record[0x3A8] = func_8005B7CC(
                    func_8005B7CC((u8)(record[0x3AA] - func_8005B36C(*(s16 *)(record + 2),
                        *(s16 *)(record + 6), *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2),
                        *(s16 *)(*(u8 **)(scratch + 0x2F4) + 6))), 0, 0x34) & 0xFF,
                    record[0x3A8], 0x20);
            }
            if (*(s16 *)(*(u8 **)(scratch + 0x2F4) + 4) >= -0x1BF) {
                *(s16 *)(scratch + 0x134) = (record[0x3A9] * 7 / 10) << 4;
            } else {
                *(s16 *)(scratch + 0x134) = (0x100 - record[0x3A9]) << 4;
            }
            *(s16 *)(scratch + 0x136) = record[0x3A8] << 4;
            *(s16 *)(scratch + 0x138) = 0;
            func_800B2388(scratch + 0x134, coord + 4);
            if (record[0x3AC] == 0) *(s32 *)(coord + 0x18) = pose[3];
            else *(s32 *)(coord + 0x18) = -pose[3];
            *(s32 *)(coord + 0x1C) = pose[4];
            *(s32 *)(coord + 0x20) = pose[5];
            record[0x3A7] = 0;
        } else if (record[0x3AC] == 0) {
            *(u16 *)(scratch + 0x134) = pose[0];
            *(u16 *)(scratch + 0x136) = pose[1];
            *(u16 *)(scratch + 0x138) = pose[2];
            func_800B1F78(scratch + 0x134, coord + 4);
            *(s32 *)(coord + 0x18) = pose[3];
            *(s32 *)(coord + 0x1C) = pose[4];
            *(s32 *)(coord + 0x20) = pose[5];
        } else {
            /* Mirrored pose: parts 2-11 take their counterpart's entry. */
            switch (i) {
            case 6: case 7: case 8:
                pose += 6;
            case 2: case 3:
                pose += 12;
                *(u16 *)(scratch + 0x134) = -pose[0] + 0x800;
                *(u16 *)(scratch + 0x136) = pose[1];
                *(u16 *)(scratch + 0x138) = -pose[2] + 0x800;
                break;
            case 9: case 10: case 11:
                pose -= 6;
            case 4: case 5:
                pose -= 12;
                *(u16 *)(scratch + 0x134) = -pose[0] + 0x800;
                *(u16 *)(scratch + 0x136) = pose[1];
                *(u16 *)(scratch + 0x138) = -pose[2] + 0x800;
                break;
            default:
                *(u16 *)(scratch + 0x134) = pose[0];
                *(u16 *)(scratch + 0x136) = -pose[1];
                *(u16 *)(scratch + 0x138) = -pose[2];
                break;
            }
            func_800B1F78(scratch + 0x134, coord + 4);
            *(s32 *)(coord + 0x18) = -pose[3];
            *(s32 *)(coord + 0x1C) = pose[4];
            *(s32 *)(coord + 0x20) = pose[5];
        }
        {
            s16 *saved = (s16 *)(record + i * 32 + 0x20C);
            if (record[0x3AD] != 0) {
                *(s16 *)(coord + 0x04) = (*(s16 *)(coord + 0x04) + saved[0]) >> 1;
                *(s16 *)(coord + 0x06) = (*(s16 *)(coord + 0x06) + saved[1]) >> 1;
                *(s16 *)(coord + 0x08) = (*(s16 *)(coord + 0x08) + saved[2]) >> 1;
                *(s16 *)(coord + 0x0A) = (*(s16 *)(coord + 0x0A) + saved[3]) >> 1;
                *(s16 *)(coord + 0x0C) = (*(s16 *)(coord + 0x0C) + saved[4]) >> 1;
                *(s16 *)(coord + 0x0E) = (*(s16 *)(coord + 0x0E) + saved[5]) >> 1;
                *(s16 *)(coord + 0x10) = (*(s16 *)(coord + 0x10) + saved[6]) >> 1;
                *(s16 *)(coord + 0x12) = (*(s16 *)(coord + 0x12) + saved[7]) >> 1;
                *(s16 *)(coord + 0x14) = (*(s16 *)(coord + 0x14) + saved[8]) >> 1;
                *(s32 *)(coord + 0x18) = (*(s32 *)(coord + 0x18) + *(s32 *)(saved + 10)) >> 1;
                *(s32 *)(coord + 0x1C) = (*(s32 *)(coord + 0x1C) + *(s32 *)(saved + 12)) >> 1;
                *(s32 *)(coord + 0x20) = (*(s32 *)(coord + 0x20) + *(s32 *)(saved + 14)) >> 1;
            }
            *(Words8 *)saved = *(Words8 *)(coord + 4);
        }
        func_800B6A78(coord, scratch + 0x104);
        func_800B4A14(scratch + 0x104);
        D_801946F8 = func_800B2728(*(u32 *)(record + 0x14C + slot * 4),
            *(u32 *)(record + 0x8C + slot * 4), *(u32 *)(record + 0xEC + slot * 4),
            D_801946F8, *(u32 *)(record + 0x1AC + slot * 4),
            14 - *(s32 *)scratch, D_800F1018 + scratch[0x29D] * 20);
    }
    if (record[0x3AD] != 0) record[0x3AD]--;
}
