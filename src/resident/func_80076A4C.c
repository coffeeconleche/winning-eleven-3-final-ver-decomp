#include "common.h"

extern u8 D_800FF748[];
extern void func_8005BD1C(u8 *);
extern void func_8005C7EC(u8 *);
extern s32 func_8005B7CC(u8, u8, s32);
extern void func_8004B0F0(u8 *, s32, s32, s32);
extern void func_800512B8(u8 *, s32);
extern void func_800AB620(s32);
extern void func_80076D44(void);
extern void func_8005BA30(u8 *, s32, s32);
extern void func_8005B908(u8 *);

/* Replay state stepper on the record state byte: commentary/flag checks,
 * the replay HUD update with its mask gate, and the attract transitions.
 * The asm statements emit no code; they keep each clamp's store ahead of
 * its compare, and the  binding fixes the clamp chain's register. */
void func_80076A4C(u8 *record)
{
    u8 *buf = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 b;
    u32 n;
    register u32 n2 __asm__("$2");
    s32 mask;

    record[0x3A7] = 1;
    switch (record[0x397]) {
    case 0:
        func_8005BD1C(record);
        if (scratch[0x29A] == 1) {
            record[0x396] = 0;
            record[0x397] = 0;
        }
        break;
    case 0x10:
        func_8005C7EC(record);
        n = *(u16 *)(scratch + 0x294) + 1;
        *(u16 *)(scratch + 0x294) = n;
        if (scratch[0x2E1] == 5 || (record[0x39A] != 0 && (n & 0xFFFF) >= 0x1F)) {
            *(u16 *)(record + 0x3D6) = *(u16 *)((u32)scratch + 2 * record[0x398] + 0x16);
        }
        b = 2 * record[0x398] + (u32)scratch;
        mask = *(u16 *)(b + 0x16) | *(u16 *)(b + 0x1A) | *(u16 *)(b + 0x1E) | *(u16 *)(b + 0x12);
        if ((*(u16 *)(record + 0x3D6) & mask) != 0 || *(u16 *)(scratch + 0x294) >= 0xB5) {
            scratch[0x2C0] = 1;
            record[0x397]++;
        }
        break;
    case 0x11:
        func_8005BD1C(record);
        if (record[0x390] == 7) {
            func_8004B0F0(record, ((record[0x399] << 7) + 0x40) & 0xC0, 0x40, 1);
            *(u16 *)(scratch + 0x31C) = 0x10;
            func_800512B8(buf + 1000 * (scratch[0x2AE] % 24), 1);
            *(s32 *)(scratch + 0x2B0) = 0xC;
            func_800AB620(0x508);
            func_80076D44();
            *(u16 *)(scratch + 0x28A) = 0;
        }
        if (record[0x390] == 0xC) {
            func_8005BA30(record, 2, 1);
            record[0x397]++;
        }
        if (record[0x390] >= 8) {
            n2 = *(s32 *)(record + 0x3A0) + 2;
            *(s32 *)(record + 0x3A0) = n2;
            __asm__ volatile("	");
            if (n2 > 0x20) {
                *(s32 *)(record + 0x3A0) = 0x20;
            }
            func_8005B908(record);
        }
        break;
    case 0x12:
        func_8005BD1C(record);
        record[0x3AA] = func_8005B7CC(record[0x3A4], record[0x3AA], 0xC);
        if (record[0x390] == 0x10) {
            record[0x396] = 1;
            record[0x397] = 0;
        }
        n2 = *(s32 *)(record + 0x3A0) + 0xC;
        *(s32 *)(record + 0x3A0) = n2;
        __asm__ volatile("	");
        if (n2 > 0x30) {
            *(s32 *)(record + 0x3A0) = 0x30;
        }
        func_8005B908(record);
        break;
    case 0x20:
        func_8005BD1C(record);
        if (scratch[0x29A] == 0xA || record[0x38D] == scratch[0x2A8]) {
            record[0x396] = 0;
            record[0x397] = 0;
        }
        break;
    }
}
