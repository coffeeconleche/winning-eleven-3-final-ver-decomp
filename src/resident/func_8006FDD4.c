#include "common.h"

/* Existing storage access views; complete record/table extents are unknown. */
extern u8 D_800FF748[];
extern u8 D_800E6D00[];
extern u8 D_800E6D40[];
extern u8 D_800E6CF8[];
extern void func_8004FAC0(s32, u32);

/* State meanings and the original return contract remain provisional. */
void func_8006FDD4(void)
{
    /* Matching aid for the real base address: keeps its initial load in $a2
     * before copying the first record pointer to $a1. Removing this binding
     * reverses those three entry instructions. */
    register u8 *base __asm__("$6") = D_800FF748;
    u8 *record;
    u8 index;

    record = base;
    for (index = 0; index < 24; index++, record += 1000) {
        D_800E6D00[index] = record[0];
        record[0] = 0;
    }
    record = base + 0x66D0;
    for (index = 0; index < 18; index++, record += 0x90) {
        D_800E6D40[index] = record[0];
        record[0] = 0;
    }
    index = 0;
    record = base + 0x5DC4;
    for (; index < 58; index++, record += 0x28) {
        if (index >= 40) {
            D_800E6CF8[index] = record[0];
        }
        record[0] = 0;
    }
    func_8004FAC0(0, 0);
}
