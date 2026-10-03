#include "common.h"

extern u8 D_800FF748[];
extern void func_801A9A08(void);

/* Access offsets are retained without assuming the original record types. */
void func_801A98F0(u8 *text, u8 selector) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 character, first, mapped, value;
    u8 *record;
    /* Retain the measured eight-byte local frame reservation; its original
     * purpose is unknown, and no bytes in this slot are accessed here. */
    u8 frameSlot[8];

    /* The nonvolatile empty tie keeps the captured base before selector
     * arithmetic without emitting code or disturbing the branch delay slot. */
    __asm__("" : "=r"(base) : "0"(base));

    character = text[selector * 2];
    if (character >= 0x61) {
        base[0xABA0] = character - 0x47;
    } else {
        base[0xABA0] = character - 0x41;
    }
    character = text[selector * 2 + 1];
    if (character >= 0x61) {
        character -= 0x47;
    } else {
        character -= 0x41;
    }
    first = base[0xABA0];
    base[0xABA1] = character;
    record = base + first;
    mapped = record[0xAB80];
    record = base;
    record += mapped * 36;
    value = record[0x8F25];
    /* Preserve the second stored-index reread after the first record byte. */
    __asm__ volatile("" : : : "memory");
    record = base + base[0xABA1];
    scratch[0x2DD] = value;
    mapped = record[0xAB80];
    record = base;
    record += mapped * 36;
    scratch[0x2DE] = record[0x8F25];
    func_801A9A08();
}
