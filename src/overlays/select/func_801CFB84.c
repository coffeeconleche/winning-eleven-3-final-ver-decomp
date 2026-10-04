#include "common.h"

extern u8 D_8010A5A8[];
extern u8 D_800FF748[];
extern u8 D_8010865C;

void func_801CFB84(void) {
    u8 *input = D_8010A5A8;
    /* Measured base allocation; removing this binding changes the complete
     * comparison lane's register assignments. No assembly body is substituted. */
    register u8 *base __asm__("$6") = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 i, flag;
    u32 update;

    if (D_8010865C & 1)
        return;
    i = 0;
    /* All comparisons short-circuit in this order. The last halfword compares
     * two fields in the same base, not another scratch field. */
    do {
        u32 index = i;
        /* Target-specific 32-bit address views retain the measured add order. */
        u8 *row = (u8 *)(index * 2 + (u32)base);
        u8 *other = (u8 *)(index * 2 + (u32)scratch);
        if (*(u16 *)(row + 0x8ED8) != *(u16 *)(other + 0x12))
            goto changed;
        if (*(u16 *)(row + 0x8EDC) != *(u16 *)(other + 0x16))
            goto changed;
        if (*(u16 *)(row + 0x8EE0) != *(u16 *)(other + 0x1A))
            goto changed;
        if (*(u16 *)(row + 0x8EE4) != *(u16 *)(other + 0x1E))
            goto changed;
        if (*(u16 *)(row + 0x8EE8) != *(u16 *)(other + 0x22))
            goto changed;
        if (*(u16 *)(row + 0x8EEC) != *(u16 *)(other + 0x26))
            goto changed;
        if (*(u16 *)(row + 0x8EF0) != *(u16 *)(other + 0x2A))
            goto changed;
        if (*(u16 *)(row + 0x8EF4) != *(u16 *)(other + 0x2E))
            goto changed;
        if (*(u16 *)(row + 0x8EF8) != *(u16 *)(other + 0x32))
            goto changed;
        if (*(u16 *)(row + 0x8EFC) != *(u16 *)(row + 0x8F1A))
            goto changed;
        if (((u8 *)((u32)base + index))[0x8F09] !=
            ((u8 *)((u32)scratch + index))[0x307])
            goto changed;
        i++;
    } while (i < 2);
checkFlag:
    /* This load follows any first-pass flag store; do not reuse its old value. */
    flag = base[0x8F14];
    if (flag & 1)
        return;
    /* The original byte-counter register is reused for this narrowed mask. */
    i = input[9] & 0x73;
    if (base[0x8F00] == scratch[0x2E6])
        goto remaining;
    update = flag | 1;
    goto writeFlag;
changed:
    base[0x8F14] |= 1;
    goto checkFlag;
remaining:
    if (base[0x8F01] != input[10])
        goto savedChanged;
    if (base[0x8F02] != input[6])
        goto savedChanged;
    if (base[0x8F03] != input[2])
        goto savedChanged;
    if (base[0x8F04] != input[3])
        goto savedChanged;
    if (base[0x8F05] != input[4])
        goto savedChanged;
    if (base[0x8F06] != input[5])
        goto savedChanged;
    if (base[0x8F07] != base[0xABE2])
        goto savedChanged;
    if (base[0x8F12] != base[0x8F13])
        goto savedChanged;
    if (*(s16 *)(base + 0x8F0C) != (s16)*(u16 *)(scratch + 0x336))
        goto savedChanged;
    if (base[0x8F0E] != i)
        goto rereadChanged;
    if (base[0x8F0F] != base[0xAC1D])
        goto rereadChanged;
    if (base[0x8F10] != base[0xAC1E])
        goto rereadChanged;
    if (base[0x8F11] == base[0xAC1F])
        return;
rereadChanged:
    /* The final four byte comparisons use a fresh flag read on failure. Earlier
     * failures instead OR the captured flag, through the shared store below. */
    update = base[0x8F14] | 1;
    goto writeFlag;
savedChanged:
    update = flag | 1;
writeFlag:
    base[0x8F14] = update;
}
