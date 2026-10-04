#include "common.h"
extern u8 D_800FF748[], D_8010A5A8[], D_80108662[], D_800C8568[];
extern u8 D_8010A5B1;
extern s16 D_8010A360;
extern s16 D_8010A362 __asm__("D_8010A360+2");
/* The resident A0/27 thunk proves word arguments, not transfer direction. */
extern void func_800AD648(void *, void *, u32);
s32 func_801CFF38(u8 *input) {
    u8 *cursor = input;
    u8 *begin;
    u8 *fields, *base;
    /* These two halfword-pointer bindings retain the measured call/clamp allocation. */
    register s16 *first __asm__("$18");
    register s16 *second __asm__("$19");
    s32 length, blocks, padding, rounded;
    u32 selected;
    /* Removing this reservation changes only frame/save words (40 versus 64
     * bytes). The original 24 unaccessed bytes and their purpose are unknown. */
    u8 unusedFrame[24];
    __asm__("" : : "m"(unusedFrame[0]));
    func_800AD648(cursor, (void *)0x1F8002E6, 1);
    /* Keep the post-call cursor snapshot/increments distinct from fixed offsets. */
    __asm__("" : "=r"(cursor) : "0"(cursor));
    begin = cursor;
    cursor++;
    func_800AD648(cursor, (void *)0x1F800012, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F800016, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F80001A, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F80001E, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F800022, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F800026, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F80002A, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F80002E, 4); cursor += 4;
    func_800AD648(cursor, (void *)0x1F800032, 4); cursor += 4;
    func_800AD648(cursor, D_80108662, 4); cursor += 4;
    fields = D_8010A5A8;
    func_800AD648(cursor, fields + 10, 1); cursor++;
    func_800AD648(cursor, fields + 7, 1); cursor++;
    func_800AD648(cursor, fields + 8, 1); cursor++;
    func_800AD648(cursor, fields + 6, 1); cursor++;
    func_800AD648(cursor, fields + 2, 1); cursor++;
    func_800AD648(cursor, fields + 3, 1); cursor++;
    func_800AD648(cursor, fields + 4, 1); cursor++;
    func_800AD648(cursor, fields + 5, 1); cursor++;
    first = &D_8010A360;
    func_800AD648(cursor, first, 2); cursor += 2;
    second = &D_8010A362;
    func_800AD648(cursor, second, 2); cursor += 2;
    base = D_800FF748;
    if (*first < 166) *first = 166;
    if (*first > 198) *first = 198;
    if (*second < 112) *second = 112;
    if (*second > 128) *second = 128;
    func_800AD648(cursor, base + 0x8AEA, 946); cursor += 946;
    func_800AD648(cursor, base + 0x89BD, 43); cursor += 43;
    func_800AD648(cursor, base + 0x89E8, 43); cursor += 43;
    func_800AD648(cursor, base + 0xABE2, 1); cursor += 1;
    func_800AD648(cursor, base + 0x8A69, 43); cursor += 43;
    func_800AD648(cursor, base + 0x8A13, 43); cursor += 43;
    func_800AD648(cursor, base + 0x8A3E, 43); cursor += 43;
    func_800AD648(cursor, base + 0x8ABF, 43); cursor += 43;
    func_800AD648(cursor, base + 0x8A94, 43); cursor += 43;
    func_800AD648(cursor, (void *)0x1F800307, 2); cursor += 2;
    func_800AD648(cursor, (void *)0x1F800338, 1); cursor++;
    func_800AD648(cursor, base + 0x8F13, 1); cursor++;
    func_800AD648(cursor, (void *)0x1F800336, 2); cursor += 2;
    func_800AD648(cursor, base + 0xAC1D, 1); cursor++;
    func_800AD648(cursor, base + 0xAC1E, 1); cursor++;
    func_800AD648(cursor, base + 0xAC1F, 1); cursor++;
    /* Store masked flags before reading the stream byte; retain signed lengths
     * and division, including behavior outside the observed positive range. */
    D_8010A5B1 &= 0x8C;
    selected = *cursor++;
    length = cursor - begin;
    cursor++;
    length++;
    D_8010A5B1 |= selected & 0x73;
    padding = 128 - (length - (length / 128) * 128);
    if (padding != 128) { cursor += padding; length += padding; }
    func_800AD648(cursor, D_800C8568, 0x1C30);
    blocks = length / 128;
    if (length & 127) rounded = (blocks + 1) * 128;
    else rounded = blocks * 128;
    return rounded;
}
