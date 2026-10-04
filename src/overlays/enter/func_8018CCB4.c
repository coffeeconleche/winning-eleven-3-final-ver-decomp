#include "common.h"
extern u8 D_80193848[];
extern u8 D_80193C98[];
extern u8 D_800F3560[];
extern void func_80019E90(void *first, void *second);

/* Record and linked-table meanings, and the helper's full types, remain unknown. */
void func_8018CCB4(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 i = 0;
    u32 four = 4;
    u8 *table = D_800F3560;
    /* Measured bindings retain the retail saved-mask and call/tail lifetimes.
     * They emit no instructions; no body assembly or frame reservation is used. */
    register u32 mask __asm__("$20") = 0xFFFFFF;
    u32 high = 0xFF000000;
    s32 half126 = 0x200;
    /* Access view for the original word-sized stack spill/reload across calls;
     * volatility preserves that compiler ordering, not a hardware claim. */
    volatile s32 firstOffset;
    u8 *packet;

    {
        s32 index = record[0x38D];
        u32 selector = *(u8 *)0x1F80029D;
        register s32 offset __asm__("$6");
        u32 bank;
        index -= 24;
        offset = index * 128;
        bank = selector * 0x530;
        bank += (u32)D_80193C98;
        {
            s32 packetOffset = index * 160;
            packet = (u8 *)(bank + packetOffset);
        }
        firstOffset = offset;
    }

    for (; i < 4; packet += 40) {
        s32 rowOffset = i * 32;
        s32 field2 = *(s16 *)(record + 2);
        register u32 previous __asm__("$4");
        u32 count;
        u32 selector;
        u32 value;
        u32 * entry;
        i++;
        *(s32 *)(scratch + 0x140) = 0;
        *(s32 *)(scratch + 0x13C) = field2;
        field2 = *(s16 *)(record + 6);
        *(s16 *)(scratch + 0x126) = half126;
        half126 += 0x400;
        *(s16 *)(scratch + 0x124) = 0;
        *(s16 *)(scratch + 0x128) = 0;
        *(s32 *)(scratch + 0x144) = field2;
        {
            register u8 *base __asm__("$2") = D_80193848;
            register s32 savedOffset __asm__("$6") = firstOffset;
            u8 * first = (u8 *)((s32)rowOffset + (s32)base);
            func_80019E90((u8 *)(savedOffset + (s32)first), packet);
        }
        /* Keep the two table-index reloads separate: the packet write may alias. */
        previous = *(u32 *)packet;
        count = *(u32 *)scratch;
        selector = scratch[0x29D];
        count = four << count;
        selector <<= 14;
        selector += count;
        entry = (u32 *)((s32)selector + (s32)table);
        value = *entry;
        *(u32 *)packet = (previous & high) | (value & mask);
        previous = (u32)packet & mask;
        count = *(u32 *)scratch;
        selector = scratch[0x29D];
        count = four << count;
        selector <<= 14;
        selector += count;
        entry = (u32 *)((s32)selector + (s32)table);
        {
            register u32 word __asm__("$3") = *entry;
            *entry = (word & high) | previous;
        }
    }
}
