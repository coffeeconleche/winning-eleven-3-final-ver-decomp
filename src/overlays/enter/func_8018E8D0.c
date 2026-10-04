#include "common.h"

/* Byte/halfword access views; original record types are unknown. */
extern u8 D_80193C48[];
extern void func_800ADD58(void *packet);
extern void func_800ADCE0(void *packet, s32 value);
extern void func_800ADCB8(void *packet, s32 value);

void func_8018E8D0(u8 *input)
{
    u8 *record = input;
    s32 i = 0;
    u8 *packet;
    register s16 coordinate __asm__("$6");
    u32 color = 128;
    register u8 *base __asm__("$22");
    volatile s16 *last;
    volatile s16 *first;
    u8 *row;
    s32 offset;

    /* Empty identities preserve entry scheduling and the captured base.
     * Bindings retain measured coordinate/index allocation; volatile
     * halfword views preserve store order, not hardware semantics. */
    __asm__ ("" : "=r"(record) : "0"(record));
    base = D_80193C48;
    last = (s16 *)(base + 24);
    first = (s16 *)base;
    row = record;
    offset = 0x500;
    for (; i < 2; offset += 24) {
        packet = record + offset;
        func_800ADD58(packet);
        func_800ADCE0(packet, 1);
        func_800ADCB8(packet, 1);
        row[0x504] = color;
        row[0x505] = color;
        row[0x506] = color;
        __asm__ volatile ("" : "=r"(base) : "0"(base));
        coordinate = -600;
        first[0] = coordinate;
        first[1] = 0;
        coordinate = -375;
        first[2] = coordinate;
        {
            register s32 index __asm__("$3") = i * 32;
            register volatile s16 *address __asm__("$2") = (s16 *)(base + 8);
            address = (s16 *)((s32)index + (s32)address);

            coordinate = 600;
            address[0] = coordinate;
            address[1] = 0;
            coordinate = -375;
            address[2] = coordinate;
            address = (s16 *)(base + 16);
            index = (s32)index + (s32)address;
            {
                register volatile s16 *second __asm__("$3") = (s16 *)index;

                coordinate = -600;
                second[0] = coordinate;
                second[1] = 0;
                coordinate = 375;
                second[2] = coordinate;
            }
        }
        coordinate = 600;
        last[0] = coordinate;
        last[1] = 0;
        coordinate = 375;
        last[2] = coordinate;
        /* Input-only cursor uses retain allocation and post-store advances.
         * All empty constraints emit no instructions. */
        __asm__ volatile ("" : : "r"(first), "r"(row));
        last += 16;
        first += 16;
        row += 24;
        i++;
    }
}
