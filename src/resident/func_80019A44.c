#include "common.h"

/* Two-pointer byte-stream decoder; the result is the next output position.
 * Backreferences copy forward one byte at a time, including overlapping runs.
 * The historical API and compressed-stream bounds remain provisional. */

u8 *func_80019A44(u8 *input, u8 *output)
{
    u32 flags = 0;
    s32 count;
    s32 literalCount;
    register s32 distance __asm__("$7");
    u8 tag;
    s32 terminal = 0xFF;
    u8 flagByte;
    u8 distanceLow;
    register u32 literalByte __asm__("$6");
    s32 fullTag;

next_token:
    flags >>= 1;
read_token:
    if (!(flags & 0x100)) {
        flagByte = *input++;
        flags = flagByte | 0xFF00;
    }
    tag = input[0];
    if (!(flags & 1)) {
        *output++ = tag;
        input++;
        goto next_token;
    }
    if (!(tag & 0x80)) {
        distanceLow = input[1];
        input += 2;
        count = (tag >> 2) + 2;
        distance = distanceLow | ((tag & 3) << 8);
        goto copy_reference;
    }
    input++;
    if (!(tag & 0x40)) {
        register u32 lowNibble __asm__("$2") = tag & 0xF;
        distance = lowNibble + 1;
        count = (tag >> 4) - 7;
        do {
copy_reference:
            count--;
            *output = output[-distance];
            output++;
        } while (count >= 0);
        flags >>= 1;
        goto read_token;
    }
    fullTag = tag & 0xFF;
    literalCount = fullTag - 0xB9;
    if (fullTag != terminal) {
        do {
            literalByte = *input++;
            output++;
            literalCount--;
            output[-1] = literalByte;
        } while (literalCount >= 0);
        flags >>= 1;
        goto read_token;
    }
    return output;
}
