#include "common.h"

extern u8 D_800FF748[];
extern s32 func_800AD678(void);
extern void func_8005BA30(void *, u32, u32);
extern s32 func_8005C7A0(u32);
extern s32 func_8001E6B8(s32);
extern void func_8001D14C(u32, u32, u32, u32, s32, u32, u32, u32, u32, u32);

/* These inlined argument identities prevent hoisting 64 into a saved register.
 * Capturing the preceding result after setup preserves its call-delay copy;
 * the extra input in the first path retains both original 44-call sequences.
 * The empty constraints emit no instructions. */
static __inline__ s32 addFirstAdjustment(s32 raw)
{
    register u32 argument __asm__("$4") = 64;
    s32 captured;
    s32 biased;
    __asm__("" : "=r"(argument) : "0"(argument));
    captured = raw;
    biased = func_8001E6B8(argument) + 144;
    __asm__("" : : "r"(biased));
    return (u32)captured + (u32)biased;
}

static __inline__ s32 addSecondAdjustment(s32 raw)
{
    register u32 argument __asm__("$4") = 64;
    s32 captured;
    s32 biased;
    __asm__("" : "=r"(argument) : "0"(argument));
    captured = raw;
    biased = func_8001E6B8(argument) + 144;
    return (u32)captured + (u32)biased;
}

static __inline__ s32 subtractAdjustment(s32 raw)
{
    register u32 argument __asm__("$4") = 64;
    s32 captured;
    s32 biased;
    __asm__("" : "=r"(argument) : "0"(argument));
    captured = raw;
    biased = func_8001E6B8(argument) + 144;
    return (u32)captured - (u32)biased;
}

/* Record fields, local-table meaning and full helper types are unidentified. */
void func_80189DB4(void)
{
    u8 *base = D_800FF748;
    u8 *record = base + 1000;
    s32 i = 0;
    u16 values[6];
    u16 *table = values;
    u8 *fields = base + 0x781;

    *(u8 *)0x1F8002A8 = 11;
    **(u8 **)0x1F8002F4 = 0;
    /* Only these two entries are initialized in the original. */
    table[5] = 0xDF00;
    table[4] = 0xDF00;
    do {
        s32 difference;
        s32 x;
        u32 column;
        u32 y;
        func_8005BA30(record, 5, (u8)(func_800AD678() % 10));
        fields[12] = 12;
        fields[13] = 24;
        fields[3] = 1;
        *(u32 *)(fields + 7) = 16;
        fields[17] = 64;
        /* Reload views retain observed reads, not a hardware qualification. */
        column = *(volatile u8 *)(fields + 17);
        fields[11] = 64;
        fields[58] = 0;
        fields[-3] = 0;
        fields[23] = 0;
        difference = 0x1C0 - (s32)column;
        *(u16 *)(fields - 0x373) = (difference % 256) << 4;
        if (base[0x8F15] == 0) {
            if (i >= 11) x = addFirstAdjustment(func_8005C7A0(44));
            else x = subtractAdjustment(func_8005C7A0(36));
        } else {
            if (i < 11) x = addSecondAdjustment(func_8005C7A0(44));
            else x = subtractAdjustment(func_8005C7A0(36));
        }
        *(u16 *)(fields - 0x397) = x;
        /* Keep this store before the following call's setup and delay slot. */
        __asm__("" : : : "memory");
        x = func_8005C7A0(96);
        column = fields[0];
        y = table[column + 4] - 256;
        y -= x;
        i++;
        column = *(volatile u8 *)fields;
        record += 1000;
        *(u16 *)(fields - 0x393) = y;
        table[column + 4] = y;
        fields += 1000;
    } while (i < 22);
    func_8001D14C(23, 65, 5, 0, -8192, 64, 0xE0C, 4096, 0xE0C, 1);
    *(u32 *)(record + 0x3A0) = 16;
    record[0x39C] = 1;
    record[0x3D3] = 1;
}
