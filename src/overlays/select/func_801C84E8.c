#include "common.h"

extern u8 D_800FF748[], D_800C8568[];
extern s16 D_801DA5D0[];
extern u8 D_801D8A98[], D_801D8AA0[], D_801D8B17, D_801DA330;
extern u16 D_800AD638;
/* Caller-side word argument views; descriptor field meanings are unknown. */
extern void func_8018EC3C(s32, s32);
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801C84E8(void) {
    u8 *base = D_800FF748;
    s16 *halfwords = D_801DA5D0;
    s32 i;
    u8 *table, *row;
    u32 constant, offset;
    s32 y;
    for (i = 0; i < 11; i++) func_8018EC3C(i + 5, 0);
    i = 0;
    /* Empty inputs/ties retain the measured preheader, table-address setup
     * and per-row constant lifetime. They emit no instructions. */
    __asm__ volatile("" : : "r"(i));
    table = D_800C8568;
    constant = 0x8AEA;
    row = D_801D8A98;
    offset = 0;
    y = -73;
    for (; i < 11; i++) {
        s32 j = 0;
        s32 index = halfwords[1] + i;
        u8 *cursor = row;
        u32 color, state;
        u32 one;
        D_801D8AA0[offset] = 0;
        do {
            u32 mode, record;
            u32 mapped;
            u8 value;
            *cursor = 0;
            mode = D_801DA330 * 11;
            record = mode * 16;
            __asm__("" : "=r"(record) : "0"(record), "r"(mode));
            mapped = *(u8 *)(mode * 2 + (u32)base + constant + index);
            record += (u32)table;
            value = *(u8 *)(mapped * 8 + record + j);
            if (value == 0) break;
            *cursor = value;
            j++;
            cursor++;
        } while (j < 8);
        state = D_801D8B17;
        __asm__ volatile("" : : "r"(state) : "memory");
        one = 1;
        __asm__ volatile("" : "=r"(one) : "0"(one));
        if (state == one) {
            if (i == D_800AD638) goto next;
            color = 106;
        } else color = index < 11 ? 0 : 105;
        func_801942E0(i + 5, row, -163, y, 64, 3, 0, 0, color, 2, 5, 1);
    next:
        row += 9;
        offset += 9;
        y += 16;
    }
}
