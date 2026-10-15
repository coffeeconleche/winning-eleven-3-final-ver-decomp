#include "common.h"

extern u8 D_800FF748[], D_800F1018[];
extern void func_800B3FB8(void *, void *, u16);
extern void func_800B39D8(void *, void *, u16);

/* Byte views preserve the measured 40-byte record / 12-byte part layouts. */
void func_80019C34(void *input)
{
    u8 *record = input;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *field;
    u8 *part = *(u8 **)(record + 12);
    u8 *base = D_800FF748;
    u32 index;
    u32 marker;

    if (part != 0) {
        field = part + 8;
        do {
            /* Keep the real offset-eight cursor; no memory or register clobber. */
            __asm__("" : "=r"(field) : "0"(field));
            scratch[0x16A] = field[-5];
            scratch[0x16B] = field[-4];
            *(u16 *)(scratch + 0x164) = field[-7];
            *(u16 *)(scratch + 0x166) = field[-6];
            *(u16 *)(scratch + 0x168) = record[0x14];
            if (record[0x15] != 0) {
                index = record[0x15] * 4;
                *(u16 *)(scratch + 0x16C) = *(u16 *)(base + index + 0x7FA6);
                index = record[0x15] * 4;
            } else {
                index = field[2] * 4;
                *(u16 *)(scratch + 0x16C) = *(u16 *)(base + index + 0x7FA6);
                index = field[2] * 4;
            }
            *(u16 *)(scratch + 0x16E) = *(u16 *)(base + index + 0x7FA4);
            scratch[0x170] = record[0x16];
            scratch[0x171] = record[0x17];
            scratch[0x172] = record[0x18];
            *(u32 *)(scratch + 0x15C) = *(u32 *)(record + 8);
            if (*(s16 *)(record + 0x1E) == 4096 &&
                *(s16 *)(record + 0x20) == 4096 &&
                *(u32 *)(record + 0x24) == 0) {
                *(u16 *)(scratch + 0x160) = *(u16 *)(field - 2) + *(u16 *)(record + 0x10);
                *(u16 *)(scratch + 0x162) = *(u16 *)field + *(u16 *)(record + 0x12);
                func_800B3FB8(scratch + 0x15C, D_800F1018 + scratch[0x29D] * 20, *(u16 *)record);
            } else {
                *(u16 *)(scratch + 0x160) = *(u16 *)(record + 0x1A) + *(u16 *)(record + 0x10);
                *(u16 *)(scratch + 0x162) = *(u16 *)(record + 0x1C) + *(u16 *)(record + 0x12);
                *(u16 *)(scratch + 0x174) = *(u16 *)(record + 0x1A) - *(u16 *)(field - 2);
                *(u16 *)(scratch + 0x176) = *(u16 *)(record + 0x1C) - *(u16 *)field;
                *(u16 *)(scratch + 0x178) = *(u16 *)(record + 0x1E);
                *(u16 *)(scratch + 0x17A) = *(u16 *)(record + 0x20);
                *(u32 *)(scratch + 0x17C) = *(u32 *)(record + 0x24);
                func_800B39D8(scratch + 0x15C, D_800F1018 + scratch[0x29D] * 20, *(u16 *)record);
            }
            field += 12;
            marker = part[0];
            part += 12;
        } while (marker != 255);
    }
}
