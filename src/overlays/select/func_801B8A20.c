#include "common.h"

extern u8 D_80108668;
extern u8 D_800FF748[];
extern u8 D_8018B1F0[];
extern void func_801B8AB8(void *);

void func_801B8A20(void) {
    u32 i = 0;
    u8 *base = D_800FF748;

    if (D_80108668 != 0) {
        u8 *table = D_8018B1F0;
        u32 mode;
        /* Keep the mode load base-relative and counter initialization before
         * base setup. The tied base/input counter constraint emits no code. */
        __asm__ volatile ("" : "=r"(base) : "0"(base), "r"(i));
        /* The gate is tested once; mode/bound is reread after every call.
         * A nonzero gate still visits entry zero when the mode byte is zero. */
        do {
            mode = base[0x8F20];
            func_801B8AB8(*(void **)((u8)i * 4 + (u32)(table + mode * 64)));
            i++;
            mode = base[0x8F20];
        } while ((u8)i < mode);
    }
}
