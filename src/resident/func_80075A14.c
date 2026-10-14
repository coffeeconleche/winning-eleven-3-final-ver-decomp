#include "common.h"

/* Partial access views of existing storage. The 18-byte and 22-byte strides
 * are observed; full layouts, bounds and gameplay meanings are unknown.
 * Helper declarations and void return are matching target ABI views; callers
 * can inherit result-register residue rather than an established return API. */
extern u8 D_800EF840[];
extern u8 D_800FF748[];
extern u8 *D_800F1068;
extern s32 func_8006FA60(u32, u32);
extern s32 func_8006FAF4(u32, u32, u32);

void func_80075A14(u32 argument)
{
    u8 index = argument;
    u8 *base = D_800FF748;
    u32 value;
    u32 lower;
    u8 *row;
    u32 first;
    u32 second;
    u32 firstOffset;
    u32 secondOffset;
    u32 modeOffset;
    u8 *header;
    u32 current;
    u32 rowIndex;

    D_800F1068 = D_800EF840 + index * 18;
    func_8006FA60(index + 18, 11);
    value = *(u16 *)(D_800F1068 + 10);
    lower = *(u16 *)(D_800F1068 + 12);
    if (value < lower) {
        return;
    }
    if (*(u16 *)(D_800F1068 + 14) < value) {
        return;
    }
    if (value >= 11) {
        func_8006FAF4(index + 16, value - lower, 105);
    } else {
        func_8006FAF4(index + 16, value - lower, 8);
    }
    rowIndex = (u8)argument;
    /* Address addition is a measured 32-bit target word operation. */
    row = (u8 *)(rowIndex * 22U + (u32)base);
    modeOffset = 0x88A5;
    secondOffset = 0x8E9C;
    header = D_800F1068;
    firstOffset = 0xABAA;
    current = *(u16 *)(header + 10);
    /* Successive pointer additions preserve the separate byte lookups,
     * including the measured -1 access; no table bounds are inferred. */
    first = *(row + firstOffset + current);
    second = *(row + secondOffset + first - 1);
    if (*(row + modeOffset + second) >= 2) {
        /* This refreshed halfword may differ from the pre-helper bound.
         * Keep its subtraction unsigned so the original word wrap is defined. */
        func_8006FAF4(rowIndex + 16,
                      current - *(u16 *)(header + 12), 106);
    }
}
