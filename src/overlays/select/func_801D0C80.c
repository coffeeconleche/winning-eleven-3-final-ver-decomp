#include "common.h"

extern u8 D_800FF748[], D_8010A5A8[], D_801D59A8;
extern u8 *D_801D1AF8, *D_801D1AFC;
extern u32 D_801D5A9C[];
extern s32 func_80192A30(s32, s32, u32, void *, s32, u8);
/* The local A0/27 thunk proves three word arguments, not transfer direction. */
extern void func_800AD648(void *, void *, u32);
extern void func_801CFF38(u8 *), func_801CF964(void), func_801D110C(u8 *);
extern void func_800AB620(s32), func_800A9714(s32), func_800AB124(s32), func_800A98E0(s32);
extern void func_800B4958(s32, s32);

s32 func_801D0C80(u32 selector) {
    u32 raw = selector;
    u8 *fields = D_8010A5A8;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s32 code, size, result;
    u32 value;
    /* Retain the original saved cursor and its post-callback increment. */
    register u8 *cursor __asm__("$16");
    u8 mode;
    if (!(u8)raw) { code = 1; size = 0x2400; }
    else { code = 255; size = 0x1F00; }
    result = func_80192A30(code, 0, D_801D5A9C[(u8)raw], D_801D1AFC, size, 1);
    if (result) {
        if (result == 1) {
            if (!D_801D59A8) {
                func_801CFF38(D_801D1AF8 + 0x100);
                func_801CF964();
            } else {
                cursor = D_801D1AFC + 0x180;
                func_800AD648(cursor, scratch + 0x2E6, 1);
                /* Prevent folding the first increment into cursor initialization. */
                __asm__("" : "=r"(cursor) : "0"(cursor));
                mode = scratch[0x2E6];
                cursor++;
                /* Only these two mode bytes change; all others are untouched. */
                switch (mode) {
                    case 3: mode = 4; goto storeMode;
                    case 4: mode = 6;
                    storeMode: scratch[0x2E6] = mode;
                }
                func_800AD648(cursor, scratch + 0x12, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x16, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x1A, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x1E, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x22, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x26, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x2A, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x2E, 4); cursor += 4;
                func_800AD648(cursor, scratch + 0x32, 4); cursor += 4;
                func_800AD648(cursor, base + 0x8F1A, 4); cursor += 4;
                func_800AD648(cursor, fields + 10, 1); cursor++;
                func_800AD648(cursor, fields + 7, 1); cursor++;
                func_800AD648(cursor, fields + 8, 1); cursor++;
                func_800AD648(cursor, fields + 6, 1); cursor++;
                func_800AD648(cursor, fields + 2, 1); cursor++;
                func_800AD648(cursor, fields + 3, 1); cursor++;
                func_800AD648(cursor, fields + 4, 1); cursor++;
                func_800AD648(cursor, fields + 5, 1); cursor++;
                func_800AD648(cursor, base + 0xAC18, 2); cursor += 2;
                func_800AD648(cursor, base + 0xAC1A, 2); cursor += 2;
                /* Ordered signed halfword rereads, including after each store. */
                if (*(s16 *)(base + 0xAC18) < 166) *(s16 *)(base + 0xAC18) = 166;
                if (*(s16 *)(base + 0xAC18) > 198) *(s16 *)(base + 0xAC18) = 198;
                if (*(s16 *)(base + 0xAC1A) < 112) *(s16 *)(base + 0xAC1A) = 112;
                if (*(s16 *)(base + 0xAC1A) > 128) *(s16 *)(base + 0xAC1A) = 128;
                cursor += 0x306;
                func_800AD648(cursor, base + 0x89BD, 43); cursor += 43;
                func_800AD648(cursor, base + 0x89E8, 43); cursor += 0x103;
                func_800AD648(cursor, scratch + 0x307, 2); cursor += 2;
                func_800AD648(cursor, scratch + 0x338, 1);
                func_801D110C(cursor + 1);
            }
            /* Each byte is read after the preceding callbacks, not snapshotted. */
            func_800AB620(fields[5] ? 12 : 13);
            func_800AB620(fields[6] ? 4 : 5);
            value = fields[2];
            if (value >= 32) value = 15; else value >>= 1;
            func_800A9714(value);
            value = fields[3];
            if (value >= 32) value = 15; else value >>= 1;
            func_800AB124(value);
            value = fields[4];
            if (value >= 32) value = 15; else value >>= 1;
            func_800A98E0(value);
            func_800B4958(*(s16 *)(base + 0xAC18), *(s16 *)(base + 0xAC1A));
            return 1;
        }
        *(u16 *)(scratch + 0x294) = 0;
    }
    return result;
}
