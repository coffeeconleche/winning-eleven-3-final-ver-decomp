#include "common.h"

/* Existing storage access views; complete record/table extents are unknown. */
extern u8 D_800FF748[];
extern u8 D_800E6D00[];
extern u8 D_800E6D40[];
extern u8 D_800E6CF8[];

/* The original return contract is unknown. */
void func_8006FEA8(void)
{
    /* Matching aid for the real base value: keeps the initial address in $a1
     * before the first record-pointer copy to $a0. Removing it reverses that
     * load/copy order, although the later loop registers are unchanged. */
    register u8 *base __asm__("$5") = D_800FF748;
    u8 *record;
    u8 index;

    record = base;
    for (index = 0; index < 24; index++, record += 1000) {
        record[0] = D_800E6D00[index];
    }
    record = base + 0x66D0;
    for (index = 0; index < 18; index++, record += 0x90) {
        record[0] = D_800E6D40[index];
    }
    record = base + 0x6400;
    for (index = 40; index < 58; index++, record += 0x28) {
        record[4] = D_800E6CF8[index];
    }
}
