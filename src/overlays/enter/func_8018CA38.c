#include "common.h"

/* Scalar view of the proved scratch byte; no new data or symbol is added. */
extern u8 scratchIndex __asm__("0x1F80029D");
extern u8 D_80193848[];
extern u8 D_80193C98[];
extern u8 D_800F3560[];
extern void func_80019E90(void *first, void *second);
void func_8018CA38(u8 *record)
{
    /* Measured eight-byte reservation; its original purpose is unknown. */
    u8 frameReserve[8];
    s32 index = record[0x38D];
    u32 selector;
    s32 field6;
    u8 *packet;
    u8 *first;
    {
        s32 field2 = *(s16 *)(record + 2);
        selector = scratchIndex;
        *(s32 *)0x1F800140 = 0;
        *(s32 *)0x1F80013C = field2;
    }
    {
        register u16 half126 __asm__("$2") = 0xE00;
        u32 bank = selector * 83;
        field6 = *(s16 *)(record + 6);
        bank <<= 4;
        *(s16 *)0x1F800126 = half126;
        packet = D_80193C98 + bank;
    }
    index -= 24;
    {
        s32 firstOffset = index * 128;
        packet += index * 160;
        *(s16 *)0x1F800124 = 0;
        *(s16 *)0x1F800128 = 0;
        *(s32 *)0x1F800144 = field6;
        first = (u8 *)((s32)firstOffset + (s32)D_80193848);
    }
    func_80019E90(first, packet);
    {
        /* Bindings retain measured word, constant and address allocation;
         * original record layouts and helper prototype remain unknown. */
        register u32 mask __asm__("$6") = 0xFFFFFF;
        register u32 *scratch __asm__("$7") = (u32 *)0x1F800000;
        register u32 four __asm__("$5") = 4;
        u32 high = 0xFF000000;
        register u32 previous __asm__("$4") = *(u32 *)packet;
        u32 count = *scratch;
        register u32 selector __asm__("$2") = scratchIndex;
        u32 value;
        u32 *entry;
        count = four << count;
        selector <<= 14;
        selector += count;
        value = *(u32 *)(D_800F3560 + selector);
        previous = (previous & high) | (value & mask);
        *(u32 *)packet = previous;
        {
            register u8 *table __asm__("$4") = D_800F3560;

            /* Retain both rereads after the potentially aliasing store. */
            count = *scratch;
            selector = scratchIndex;
            four <<= count;
            selector <<= 14;
            selector += four;
            entry = (u32 *)((s32)selector + (s32)table);
            *entry = (*entry & high) | ((u32)packet & mask);
        }
    }
}

