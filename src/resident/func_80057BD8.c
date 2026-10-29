#include "common.h"
#if defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE)
#define KEEP(v) __asm__("" : "=r"(v) : "0"(v))
#else
#define KEEP(v) ((void)0)
#endif

#if defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE)
#define REG(r) __asm__(r)
#else
#define REG(r)
#endif

extern u8 D_8010A5A8[];
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32 value);

/* Compare the scratch clock with (table[0]+1)*9000 or *3000, then request
 * the selected sound. This function never advances the counter. For N=1..256,
 * the partial products below equal the ordinary multiplications without any
 * overflow. The guarded register/identity constraints retain gcc272-dos
 * allocation and the retail byte-normalization step; native/reference builds
 * use defined unsigned C with the same result and a fresh second mode read. */
void func_80057BD8(void) {
    register u32 expected;
    register u32 count REG("$2");
    register u32 mode;
    u8 *table = D_8010A5A8;

    if (*(u8 *)0x1F8002DF < 2) {
        count = (s32)table[0] + 1;
        expected = count * 5U;
        count = expected * 15U;
        expected = count * 16U;
    } else {
        count = (s32)table[0] + 1;
        expected = count * 3U;
        expected = (expected * 16U - count) * 8U;
    }
    expected -= count;
    expected *= 8U;
    if (*(u32 *)0x1F8002C4 == expected) {
        mode=*(u8 *)0x1F8002DF;
        KEEP(mode);
        switch (mode & 0xFF) {
        case 0:
            func_800AB620(func_8001E6B8(6) + 0xC8F);
            break;
        case 1:
            func_800AB620(func_8001E6B8(4) + 0xF15);
            break;
        case 2:
            func_800AB620(func_8001E6B8(3) + 0xF1B);
            break;
        case 3:
            func_800AB620(func_8001E6B8(2) + 0xF20);
            break;
        case 4:
            func_800AB620(func_8001E6B8(3) + 0xF24);
            break;
        }
    }
}
