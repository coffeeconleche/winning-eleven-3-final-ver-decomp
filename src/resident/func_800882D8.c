#include "common.h"

/* Existing byte-table and helper pointer views only; complete extents and
 * historical/native pointer, alias and alignment contracts are provisional. */
extern u8 D_800E6D68, D_800E6D69;
extern u8 D_800CA5F8[];
extern u8 *func_8001D004(u32);

/* Known direct caller ignores the result. The original has path-dependent
 * incidental v0 residue; this void view does not assert a numeric return API. */
void func_800882D8(u32 incoming)
{
    u8 mode;
    u8 *records;
    u8 index;
    u16 code = incoming;

    if (code == 0x2000 || code == 0x20 || D_800E6D68 != 0) {
        mode = 3;
    } else {
        mode = 0;
    }

    if ((s16)((s16)*(u16 *)0x1F800288 % 3) != 0) {
        return;
    }
    if (D_800E6D69 >= 5) {
        return;
    }

    records = func_8001D004(0x3E);
    index = 0;
    do {
        u8 *table = D_800CA5F8;
        register u8 *selected __asm__("$5");
        register u8 *other __asm__("$2");
        register u32 selectedOffset __asm__("$2");
        u32 value;
        u32 rowIndex;
        u32 selectedRow;

        rowIndex = index + 3;
        rowIndex -= mode;
        /* Explicit PS1 word-address view, not a host-sized pointer ABI. */
        other = (u8 *)(rowIndex * 12 + (u32)records);
        selectedRow = index + mode;
        other[0xA] = 0x16;
        /* The first pointer's $2 lifetime ends at that store; the selected
         * byte displacement then uses $2 before producing the $5 pointer. */
        selectedOffset = selectedRow * 12;
        selected = (u8 *)(selectedOffset + (u32)records);
        selected[0xA] = 0x17;
        if (mode != 0) {
            table += 15;
        }
        value = (index * 5 + table)[D_800E6D69] * 10;
        if (mode != 0) {
            value += 0x22;
        }
        selected[3] = value;
        index++;
    } while (index < 3);

    D_800E6D69++;
    if (D_800E6D69 >= 5) {
        D_800E6D69 = 0;
    }
}
