#include "common.h"

extern s16 D_801D7D56;
extern u8 D_801D7D60[], D_801D7D68[], D_801D7D78[], D_801D7D80[];
extern u8 D_801D7D88[], D_801D7D90[], D_801D7D98[];
extern u8 D_801D1B05[], D_801D1B11, D_801DA070[], D_800FF748[];
extern u8 D_801D8DFC, D_801D8FB8;
extern u8 *D_8011D5F4[];
extern u8 scratchMode __asm__("0x1F8002E1");

/* Caller ABI views only; table extents, field meanings and original function
 * declarations are not established by these call sites. */
extern s32 func_800AD608(void *, void *, s32);
extern u8 *func_8001D004(u32);
extern void func_801942E0(s32, void *, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32);

void func_80193990(void)
{
    u8 *base = D_800FF748;
    s32 i = 0;
    u8 *record, *cursor;
    s32 j;
    s32 number;
    u32 fill;
    u32 flags, value, key;
    /* Read the low byte of the signed index, but retain the independent
     * signed-halfword index reloads at the later table accesses. */
    D_801D1B11 = *(u8 *)&D_801D7D56 + 48;
    do {
        s32 result = func_800AD608(D_801D1B05, D_801DA070 + i * 40, 13);
        i++;
        if (result == 0) {
            base[0x5E3C] = 1;
            record = func_8001D004(0x5004);
            i = 4;
            {
                u8 *reset = record + 48;
                do {
                    reset[10] = 91;
                    i--;
                    reset -= 12;
                }
                while (i >= 0);
            }
            switch (D_801D7D80[D_801D7D56]) {
            case 0:
                record[10] = 8;
                break;
            case 1:
                record[22] = 8;
                break;
            case 2:
                record[58] = 8;
                record[46] = 8;
                record[34] = 8;
                break;
            }
            fill = 91;
            record[94] = fill;
            record[70] = 8;
            record[82] = 8;
            record[75] = ((D_801D7D78[D_801D7D56] + 1) >> 1) * 8;
            number = (D_801D7D78[D_801D7D56] + 1) * 5;
            record[63] = (number % 10) * 8;
            if (record[75] == 0) record[82] = fill;
            if (D_801D7D60[D_801D7D56] == 2) {
                u8 *clear;
                u32 blank;
                i = 8;
                blank = 91;
                clear = record + 96;
                do {
                    clear[10] = blank;
                    i++;
                    clear += 12;
                }
                while (i < 11);
                record[262] = 91;
                record[298] = 91;
            } else {
                record[298] = 8;
                record[262] = 8;
                switch (D_801D7D68[D_801D7D56]) {
                case 0:
                    record[106] = 8;
                    record[130] = fill;
                    record[118] = fill;
                    break;
                case 2:
                    record[106] = fill;
                    record[118] = 8;
                    record[130] = fill;
                    break;
                case 3:
                    record[118] = fill;
                    record[106] = fill;
                    record[130] = 8;
                    break;
                }
            }
            fill = 11;
            j = fill;
            {
                u32 blank = 91;
                cursor = record + 132;
                flags = D_801D7D88[D_801D7D56];
                value = D_801D7D98[D_801D7D56];
                do {
                    cursor[10] = blank;
                    j++;
                    cursor += 12;
                }
                while (j < 19);
            }
            record[286] = 91;
            record[238] = 91;
            record[226] = 91;
            record[214] = 91;
            if (D_801D7D60[D_801D7D56] == 2) {
                if (flags & 64) {
                    record[154] = 91;
                    record[286] = 8;
                    record[((u8)value >> 4) * 12 + 214] = 8;
                    goto finished;
                }
                if ((flags & 7) == 0) {
                    record[142] = 8;
                    value = (u8)value >> 4;
                } else {
                    u32 numerator, denominator;
                    record[154] = 8;
                    denominator = D_801D7D90[D_801D7D56] >> 1;
                    numerator = (u8)(value - 1);
                    /* Empty identity retains the narrowed dividend/denominator
                     * lifetime and scheduling; it emits no instructions. */
                    __asm__ volatile("" : "=r"(numerator)
                                     : "0"(numerator), "r"(denominator));
                    value = numerator / denominator;
                }
                *(s16 *)(record + 174) = 146;
                record[178] = 8;
                record[166] = 8;
                record[159] = (((s32)(u8)value + 1) / 10) * 8;
                record[171] = (((s32)(u8)value + 1) % 10) * 8;
                if (record[159] == 0) {
                    record[166] = 91;
                    *(s16 *)(record + 174) = 142;
                }
            } else {
                *(s16 *)(record + 174) = 146;
                record[178] = 8;
                record[166] = 8;
                record[159] = (((s32)(u8)value + 1) / 10) * 8;
                record[171] = (((s32)(u8)value + 1) % 10) * 8;
                if (record[159] == 0) {
                    record[166] = 91;
                    *(s16 *)(record + 174) = 142;
                }
            }
            record[202] = 8;
            record[190] = 8;
            break;
        }
        base[0x5E3C] = 0;
    }
    while (i < 15);
finished:
    {
        u32 raw = scratchMode;
        u32 six = 6;
        /* Retain the observed byte capture and subsequent re-narrowing. */
        __asm__ volatile("" : "=r"(raw) : "0"(raw));
        if ((u8)raw != six) key = D_801D8DFC + 25;
        else {
            key = 27;
            if ((u32)(base[0xABDA] - 3) < 2) key = 28;
        }
    }
    D_801D8FB8 = 0;
    /* Real four-byte pointer entries through a byte-address access view keep
     * the clear above the lookup; do not assume nonaliasing object bounds. */
    func_801942E0(0, *(u8 **)((u8 *)D_8011D5F4 + key * 4), -162, 55,
                 334, 0, 0, 2, 0, 3, 3, 1);
}
