#include "common.h"

extern void func_8005BA30(u8 *, s32, s32);
extern s32 func_8005B7CC(u8, u8, s32);
extern void func_8005BD1C(u8 *);
extern s32 func_80094EEC(u8 *, s32, s32, s32);
extern void func_8004B0F0(u8 *, u8, s32, s32);
extern void func_80095090(u8 *);
extern void func_8005B864(u8 *, s32);
extern void func_800956C0(u8 *, s32);
extern void func_8005C2AC(u8 *, s32, s32, u8, u8);
extern void func_800954E8(u8 *);

/* Record phase stepper: approach-speed easing on the shared halfwords,
 * replay spark handling, and the tag-boundary recentering path. The asm
 * statements and the $2 binding emit no code and introduce no value of
 * their own: they pin the argument setup above the loads, keep both
 * coordinate loads from inheriting the call's scheduling priority so the
 * four loads keep their statement order, and fix the shared accumulator
 * register pair. */
void func_8008ECC0(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *p;
    s32 q;
    s32 dx;
    s32 dz;
    register s32 v1 __asm__("$2");

    if (record[0x397] == 0) {
        func_8005BA30(record, 0x73, 0);
        *(s16 *)(record + 0x26) = ((0x1C0 - (u8)(record[0x3AA] = func_8005B7CC(record[0x3AB], record[0x3AA], 0x40))) % 256) << 4;
        *(u16 *)(record + 0x2) += *(s32 *)(record + 0x8);
        *(u16 *)(record + 0x6) += *(s32 *)(record + 0x10);
        record[0x397]++;
        return;
    }
    func_8005BD1C(record);
    switch (record[0x390]) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        *(s16 *)(record + 0x26) = ((0x1C0 - (u8)(record[0x3AA] = func_8005B7CC(record[0x3AB], record[0x3AA], 0xC))) % 256) << 4;
        *(u16 *)(record + 0x2) += *(s32 *)(record + 0x8);
        *(u16 *)(record + 0x6) += *(s32 *)(record + 0x10);
        break;
    case 6:
        p = ({ u8 *tp; __asm__ volatile("\t" : "=r"(tp) : "0"(record)); tp; });
        q = ({ s32 tt; __asm__ volatile("\t" : "=r"(tt) : "0"(0x100)); tt; });
        dx = ({ s32 tt; __asm__ volatile("\t" : "=r"(tt) : "0"(*(s32 *)(record + 0x8))); tt; });
        v1 = *(u16 *)(record + 0x2);
        dz = ({ s32 tt; __asm__ volatile("\t" : "=r"(tt) : "0"(*(s32 *)(record + 0x10))); tt; });
        *(u16 *)(record + 0x2) = v1 + dx;
        *(u16 *)(record + 0x6) = *(u16 *)(record + 0x6) + dz;
        if (func_80094EEC(p, q, dx, dz) != 0) {
            func_8004B0F0(record, record[0x3AA], 0xA, -0xF);
            scratch[0x2A9] = record[0x38D];
            func_80095090(record);
            *(u16 *)(*(u8 **)(scratch + 0x2F4) + 4) = *(u16 *)(scratch + 0x4E);
            (scratch + record[0x398])[0x2CF] = 0;
            *(s32 *)(scratch + 0x2B0) = 0;
        }
        break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
        break;
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
        *(s32 *)(record + 0x3A0) = 8;
        func_8005B864(record, 8);
        break;
    case 17:
        if (record[0x38D] == scratch[0x2A9]) {
            func_800956C0(record, 0x15 - record[0x3B9] / 10);
            func_8005C2AC(record, 0x5F, 6, record[0x3AB], record[0x3AC]);
            *(s32 *)(record + 0x8) = (*(s16 *)(scratch + 0x44) - *(s16 *)(scratch + 0xF0)) / 7;
            *(s32 *)(record + 0x10) = (*(s16 *)(scratch + 0x74) - *(s16 *)(scratch + 0xF4)) / 7;
            *(s16 *)(record + 0x4) = 0;
            record[0x397] = 0;
            record[0x396] = 0x87;
        } else {
            record[0x396] = 0x9D;
            record[0x397] = 0;
        }
        break;
    }
    func_800954E8(record);
}
