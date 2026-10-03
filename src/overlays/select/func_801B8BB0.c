#include "common.h"

extern u8 D_80108668;
extern u8 D_800FF748[];
extern u8 D_8018B1F0[];
extern void func_801B8C68(void *, u8, u8);

void func_801B8BB0(u8 oldValue, u8 newValue) {
    u32 i = 0;
    u8 *base = D_800FF748;
    if (D_80108668 != 0) {
        u8 *table = D_8018B1F0;
        do {
            /* Narrow the old index before the word-sized increment; mode is
             * reread for both addressing and the bound across each call. */
            u32 index = (u8)i;
            i++;
            func_801B8C68(*(void **)(index * 4 + (u32)(table + base[0x8F20] * 64)), oldValue, newValue);
        } while ((u8)i < base[0x8F20]);
    }
}
