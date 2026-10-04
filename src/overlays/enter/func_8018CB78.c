#include "common.h"

/* Scalar access view of the proved absolute byte address, not new data.
 * It preserves repeated absolute loads rather than a saved address cursor. */
extern u8 scratchIndex __asm__("0x1F80029D");
extern u8 D_80193848[];
extern u8 D_80193C98[];
extern u8 D_800F3560[];
extern void func_80019E90(void *first, void *second);

void func_8018CB78(u8 *record)
{
    /* Reproduce the measured eight-byte reservation; its purpose is unknown. */
    u8 frameReserve[8];
    s32 index = record[0x38D];
    s32 field6;
    u8 *packet;
    u8 *first;
    u32 selector;

    *(s16 *)0x1F800124 = 0;
    *(s16 *)0x1F800126 = 0;
    *(s16 *)0x1F800128 = 0;
    {
        u32 previous = *(s16 *)(record + 2);

        *(s32 *)0x1F800140 = 0;
        index -= 24;
        *(s32 *)0x1F80013C = previous;
    }
    field6 = *(s16 *)(record + 6);
    /* These empty uses retain the measured load/address scheduling and
     * captured selector identity; neither emits an instruction. */
    __asm__ volatile ("" : : "r"(field6));
    selector = scratchIndex;
    __asm__ ("" : "=r"(selector) : "0"(selector));
    first = D_80193848;
    {
        register u32 bank __asm__("$16") = selector * 0x530;

        packet = D_80193C98 + bank;
    }
    *(s32 *)0x1F800144 = field6;
    {
        register s32 firstOffset __asm__("$3") = index * 128;

        packet += index * 160;
        first = (u8 *)((s32)firstOffset + (s32)first);
    }
    func_80019E90(first, packet);
    {
        /* Bindings retain the measured word/constant/address lifetimes.
         * Original record layouts and the helper prototype are unknown. */
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

            /* Reread both selectors after the possibly aliasing word store. */
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

