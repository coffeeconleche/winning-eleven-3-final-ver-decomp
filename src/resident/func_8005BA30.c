#include "common.h"

/* Existing outer pointer table and nested word-table access views. Table
 * extents, valid indices and pointer ownership remain unknown. */
extern u32 *D_8014A000[];

/* Partial record views preserve the unsigned halfword and byte rereads.
 * Both incoming words narrow to low bytes; the first is stored as a full
 * halfword. The base pointer is stored before advancing the actual cursor.
 * This void ABI view retains the measured $v0 residue of 1; original formal
 * types, return declaration and complete record layout remain provisional. */
void func_8005BA30(u8 *record, u32 selector, u32 index)
{
    u32 *table;
    u32 captured;

    *(u16 *)(record + 0x38E) = (u8)selector;
    record[0x390] = index;
    table = D_8014A000[*(u16 *)(record + 0x38E)];
    *(u32 **)(record + 0x18) = table;
    table += record[0x390];
    captured = *table;
    record[0x3AD] = 1;
    *(u32 *)(record + 0x1C) = captured;
}
