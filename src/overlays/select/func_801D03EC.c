#include "common.h"

extern u8 D_80108662[], D_8010A5A8[], D_8010A360[], D_80108232[];
extern u8 D_80108105[], D_80108130[], D_8010A32A[], D_801081B1[];
extern u8 D_8010815B[], D_80108186[], D_80108207[], D_801081DC[];
extern u8 D_8010865B[], D_8010A364[];
/* Separate access views of the exact symbol-plus-offset arguments in the
 * reference. No adjacent array extent or original aggregate type is inferred. */
extern u8 D_8010A362[] __asm__("D_8010A360+2");
extern u8 D_8010A365[] __asm__("D_8010A364+1");
extern u8 D_8010A366[] __asm__("D_8010A364+2");
extern u8 D_8010A367[] __asm__("D_8010A364+3");
/* Local A0/27 and A0/28 dispatch thunks do not prove transfer direction
 * or the complete external helper prototypes. Preserve their word arguments. */
extern void func_800AD648(void *, void *, u32), func_800AD658(void *, u32);
s32 func_801D03EC(u8 *input) {
    u8 *cursor = input;
    u8 *begin;
    u8 *fields = D_8010A5A8;
    s32 length, blocks, aligned, padding, rounded;
    s32 i;
    /* Keep the checksum accumulator separate from the a1 loop counter. */
    register s32 sum __asm__("$4");
    /* Retail has a 168-byte frame, including 128 bytes never accessed by
     * its instructions. Preserve that measured area; its original purpose
     * and any original local-object type are unknown. */
    u8 unusedFrame[128];
    u8 *check;
    __asm__("" : : "m"(unusedFrame[0]));
    func_800AD648((void *)0x1F8002E6, cursor, 1);
    /* Preserve the post-callback snapshot instead of capturing it at entry. */
    __asm__("" : "=r"(cursor) : "0"(cursor));
    begin = cursor;
    cursor += 1;
    func_800AD648((void *)0x1F800012, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F800016, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F80001A, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F80001E, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F800022, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F800026, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F80002A, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F80002E, cursor, 4);
    cursor += 4;
    func_800AD648((void *)0x1F800032, cursor, 4);
    cursor += 4;
    func_800AD648(D_80108662, cursor, 4);
    cursor += 4;
    func_800AD648(fields + 10, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 7, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 8, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 6, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 2, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 3, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 4, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 5, cursor, 1);
    cursor += 1;
    func_800AD648(D_8010A360, cursor, 2);
    cursor += 2;
    func_800AD648(D_8010A362, cursor, 2);
    cursor += 2;
    func_800AD648(D_80108232, cursor, 0x3B2);
    cursor += 0x3B2;
    func_800AD648(D_80108105, cursor, 43);
    cursor += 43;
    func_800AD648(D_80108130, cursor, 43);
    cursor += 43;
    func_800AD648(D_8010A32A, cursor, 1);
    cursor += 1;
    func_800AD648(D_801081B1, cursor, 43);
    cursor += 43;
    func_800AD648(D_8010815B, cursor, 43);
    cursor += 43;
    func_800AD648(D_80108186, cursor, 43);
    cursor += 43;
    func_800AD648(D_80108207, cursor, 43);
    cursor += 43;
    func_800AD648(D_801081DC, cursor, 43);
    cursor += 43;
    func_800AD648((void *)0x1F800307, cursor, 2);
    cursor += 2;
    func_800AD648((void *)0x1F800338, cursor, 1);
    cursor += 1;
    func_800AD648(D_8010865B, cursor, 1);
    cursor += 1;
    func_800AD648((void *)0x1F800336, cursor, 2);
    cursor += 2;
    func_800AD648(D_8010A365, cursor, 1);
    cursor += 1;
    func_800AD648(D_8010A366, cursor, 1);
    cursor += 1;
    func_800AD648(D_8010A367, cursor, 1);
    cursor += 1;
    func_800AD648(fields + 9, cursor, 1);
    cursor += 1;
    /* Signed byte count, wrapping checksum byte, then signed /128 rounding. */
    length = cursor - begin;
    sum = 0;
    i = 0;
    if (length > 0) {
        check = begin;
        do {
            sum += *check++;
            i++;
        } while (i < length);
    }
    *cursor++ = sum;
    length++;
    blocks = length / 128;
    aligned = blocks * 128;
    padding = 128 - (length - aligned);
    if (padding != 128) func_800AD658(cursor, padding);
    if (length & 127) rounded = (blocks + 1) * 128;
    else rounded = aligned;
    return rounded;
}

