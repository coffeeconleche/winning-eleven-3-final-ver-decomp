#include "common.h"
extern s16 D_801DA5D2, D_801DA5D6;
extern u8 D_801D94E8[];
extern u32 scratchWord __asm__("0x1F800290");
/* Caller word-ABI views preserve all supplied words. The measured child
 * helpers narrow their byte/halfword fields internally; full original
 * prototypes and the record meanings are unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801942E0(s32, void *, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern u8 *func_8001D004(s32);
/* Ordered descriptor setup, two signed-halfword tests, then paired 45-byte
 * rows. Keep the second halfword reread after the first returned-row store. */
void func_801B8028(void) {
    u8 *record;
    u8 *first, *second;
    s32 i;
    s32 yFirst, ySecond;
    s32 one, two, limit;
    func_80193FB4(2, 0x30AC, 0, -228, -8, 29, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 1, 0);
    func_80193FB4(3, 0x3139, 0, 0, 0, 28, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(4, 0x3133, 0, 0, 0, 12, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(7, 0x3135, 0x70000000, 0, 0, 12, 0, 4096, 4096, 0, 0, 255, 255, 255, 0, 5, 1);
    func_80193FB4(8, 0x3135, 0x40000000, 3, 3, 12, 0, 4096, 4096, 0, 0, 0, 0, 0, 0, 5, 1);
    func_80193FB4(9, 0x3132, 0x60000000, -9, -1, 12, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 3, 1);
    func_80193FB4(10, 0x3131, 0x60000000, 0, 0, 12, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 3, 1);
    func_80193FB4(6, 0x3134, 0, 0, 0, 12, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 3, 1);
    func_80193FB4(11, 0x3136, 0, 0, 0, 12, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 3, (scratchWord >> 5) & 1);
    record = func_8001D004(0x3136);
    {
        s32 field = D_801DA5D2;
        /* These two scoped v0 views retain the measured selection/temp reuse. */
        register u32 value __asm__("$2");
        if (field == 0) {
            /* Prevent branch if-conversion; this input emits no instruction. */
            __asm__ volatile("" : : "r"(field));
            value = 91;
        } else value = 98;
        record[10] = value;
    }
    {
        register s32 threshold __asm__("$2") = 28;
        s32 field;
        s32 selected;
        field = D_801DA5D6;
        selected = D_801DA5D2;
        threshold -= field;
        record += 12;
        if (selected == threshold) {
            threshold = 91;
        } else threshold = 98;
        record[10] = threshold;
    }
    i = 0;
    limit = 200;
    one = 1;
    two = 2;
    /* Preserve loop-constant setup order, with no emitted instructions. */
    __asm__ volatile("" : : "r"(limit), "r"(one), "r"(two));
    ySecond = 31;
    {
        u8 *initial = D_801D94E8;
        second = initial + 180;
        yFirst = -56;
        first = initial;
    }
    do {
        func_801942E0(i + 20, first, -106, yFirst, limit, one, 0, 0, 0, two, one, one);
        func_801942E0(i + 25, second, -106, ySecond, limit, one, 0, 0, 0, two, one, one);
        ySecond += 17;
        second += 45;
        yFirst += 17;
        i++;
        first += 45;
    } while (i < 4);
}
