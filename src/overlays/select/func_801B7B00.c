#include "common.h"

extern u8 D_800FF748[], D_801D94E8[];
extern u8 *func_8001D004(s32);
extern u8 *func_801A9540(u8 *, s32, u8, s32, s32);
extern u8 *func_801B0368(u8 *, s32);
extern u8 *func_801A9168(u8 *, u8, u8, s32);

/* Record fields and the output encoding are unknown. Preserve the ordered
 * calls, mixed-width reads and mapping rereads after output stores. */
void func_801B7B00(void) {
    /* Saved-register bindings retain the measured base/index lifetimes and
     * the first formatter loop's record-address arithmetic. */
    register u8 *base __asm__("$19") = D_800FF748;
    register s32 i __asm__("$17") = 0;
    register u8 *record __asm__("$16");
    s32 constant, offset, j;
    u8 *row = D_801D94E8;
    u8 *mapped, *out;

    for (; i < 4; i++) {
        for (j = 44; j >= 0; j--) row[j] = 0;
        row += 45;
    }
    out = func_8001D004(0x3134);
    for (i = 0; i < 4;) {
        /* These argument bindings retain setup before the record arithmetic,
         * including the blank value in the first byte load's delay slot. */
        register s32 two __asm__("$6") = 2;
        register s32 blank __asm__("$7");
        s32 firstValue;
        record = base + *(i + base + 0xAB50) * 36;
        blank = 176;
        firstValue = record[0x8F26];
        /* Keep index advance after the first field load. The empty tie
         * leaves i unchanged and emits no instructions. */
        __asm__ volatile("" : "=r"(i) : "0"(i), "r"(firstValue));
        i++;
        out = func_801A9540(out, firstValue, two, blank, 14);
        out = func_801B0368(out, *(u16 *)(record + 0x8F2C));
        out = func_801B0368(out, *(u16 *)(record + 0x8F2E));
        out = func_801A9540(out, record[0x8F33], 2, 176, 14);
        out = func_801A9540(out, record[0x8F34], 2, 176, 14);
    }
    i = 0;
    constant = 28;
    {
        /* The scoped binding/tie keeps the byte constant's preheader load
         * and later saved-register stores, without an extra pointer or value
         * copy. This is a compiler constraint, not an encoding claim. */
        register s32 initialConstant __asm__("$20") = constant;
        __asm__ volatile("" : "=r"(initialConstant) : "0"(initialConstant));
        constant = initialConstant;
    }
    offset = 0;
    for (; i < 4; i++) {
        u32 packed;
        u8 *cursor, *address;
        mapped = base + *(i + base + 0xAB50) + 0xAB80;
        {
            /* Retain the original temporary address, rather than extending
             * its lifetime into the subsequent output-store sequence. */
            register u8 *recordPointer __asm__("$2") = base + *mapped * 36;
            packed = recordPointer[0x8F24];
        }
        cursor = func_801A9168(D_801D94E8 + offset, 4,
                              packed & 192, (packed & 63) + 1);
        *cursor++ = 9;
        *cursor++ = constant;
        *cursor = 30;
        address = (u8 *)((u32)base + *mapped * 36);
        cursor++;
        *cursor = address[0x8F25];
        cursor++;
        *cursor++ = 32;
        *cursor = constant;
        address = (u8 *)((u32)base + *mapped * 36);
        cursor[1] = address[0x8F25];
        offset += 45;
    }
}
