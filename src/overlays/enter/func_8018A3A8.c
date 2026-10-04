#include "common.h"
extern u8 D_800FF748[];
extern void func_8005BD1C(void *), func_8005B864(void *, u32);
extern s32 func_8001E6B8(s32), func_8005C7A0(s32);
extern s32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(void *, u32, u32);
extern void func_800AB620(s32), func_8005A1F0(u32, u32);

/* Unknown record/state meanings. Index narrowing, late field rereads, and
 * signed comparison of the word-wrapped squared distance are intentional. */
void func_8018A3A8(void) {
    u8 *scratch = (u8 *)0x1F800000;
    u8 *base = D_800FF748;
    u8 *record = base + 1000;
    s32 i = 0;
    /* Measured saved cursor and branch-result bindings retain the original
     * allocation/scheduling; no instructions are supplied by these bindings. */
    register u8 *cursor __asm__("$17") = base + 0x792;
    do {
        switch (cursor[-20]) {
        case 0: {
            s32 magnitude;
            s32 random;
            u32 index, quotient;
            u32 remainder;
            func_8005BD1C(record);
            func_8005B864(record, *(u16 *)(cursor - 10));
            magnitude = *(s16 *)(cursor - 0x3A4);
            if (magnitude < 0) magnitude = -magnitude;
            random = func_8001E6B8(256);
            random += 0x1180;
            index = (u8)i;
            quotient = index / 11;
            remainder = (u8)(index - quotient * 11);
            {
                s32 threshold = remainder << 7;
                threshold += random;
                magnitude = magnitude < threshold;
                if (magnitude) {
                    u8 state = cursor[-20];
                    *(u32 *)(cursor - 10) = 10;
                    cursor[-20] = state + 1;
                    if ((base[0x8F15] == 0 && index >= 11) ||
                        (base[0x8F15] != 0 && index < 11)) {
                        s32 adjustment = func_8005C7A0(2);
                        register s32 total __asm__("$3") = remainder * 192;
                        adjustment += 256;
                        total += adjustment;
                        *(u16 *)(cursor + 24) = total;
                    } else {
                        register s32 adjustment __asm__("$2") = func_8005C7A0(2);
                        adjustment -= 256;
                        *(u16 *)(cursor + 24) = adjustment - remainder * 192;
                    }
                    if (cursor[-29] == 23) *(u16 *)(cursor + 24) = 0;
                }
            }
            break;
        }
        case 1: {
            s32 direction;
            s32 x, y;
            func_8005BD1C(record);
            direction = func_8005B36C(*(s16 *)(cursor - 0x3A8),
                *(s16 *)(cursor - 0x3A4), *(s16 *)(cursor + 24), -0x1080);
            cursor[0] = func_8005B7CC((u8)direction, cursor[-6], 2);
            func_8005B864(record, *(u16 *)(cursor - 10));
            x = *(s16 *)(cursor - 0x3A8) - *(s16 *)(cursor + 24);
            y = *(s16 *)(cursor - 0x3A4) + 0x1080;
            if ((s32)((u32)x * (u32)x + (u32)y * (u32)y) <= 4096) {
                u8 state = cursor[-20];
                *(u32 *)(cursor - 10) = 8;
                cursor[-20] = state + 1;
            }
            break;
        }
        case 2: {
            u32 value;
            func_8005BD1C(record);
            func_8005B864(record, 0);
            value = func_8005B7CC(192, cursor[-6], 8);
            if ((u8)value == cursor[-6]) {
                u8 state;
                func_8005BA30(record, 53, 0);
                state = cursor[-20];
                cursor[3] = 20;
                cursor[-20] = state + 1;
                if (cursor[-29] == 23) {
                    func_800AB620(0x1072);
                    func_8005A1F0(*(u8 *)((u32)scratch + base[0x8F15] + 0x2DD), 0xFD6);
                    func_800AB620(0x1073);
                    *(u16 *)(base + 0xAC4C) = 0;
                    base[0xAC4A] = 0;
                }
            } else cursor[0] = value;
            break;
        }
        }
        i++;
        cursor += 1000;
        record += 1000;
    } while ((u8)i < 23);
}
