#include "common.h"

extern u8 *D_801D1AF8;
extern u8 D_800C8568[];
extern void func_800AD658(void *, u32);
extern void func_800AD648(const void *, void *, u32);
extern s32 func_801D03EC(u8 *);

s32 func_801D08F0(u32 flags) {
    s32 total = 0;
    u8 *output = D_801D1AF8 + 256;
    u32 savedFlags;

    func_800AD658(output, 16000);
    if (flags & 9) {
        s32 amount;
        savedFlags = flags;
        amount = func_801D03EC(output);
        output += amount;
        total = amount;
    } else {
        savedFlags = flags;
    }
    if (flags & 10) {
        s32 length = 0x1C30;
        u8 *source = D_800C8568;
        u8 *end;
        u8 *cursor;
        s32 sum;
        s32 blocks, padding, rounded, aligned;

        /* Retain the original transfer arguments; buffer meanings are unknown. */
        func_800AD648(source, output, length);
        cursor = output + length;
        sum = 0;
        end = source + length;
        do {
            sum += *source++;
        } while ((s32)source < (s32)end);
        *cursor++ = sum;
        length++;
        /* Signed quotient/remainder arithmetic and checksum-byte narrowing. */
        blocks = length / 128;
        aligned = blocks * 128;
        padding = 128 - (length - aligned);
        if (padding != 128) {
            func_800AD658(cursor, padding);
        }
        if (length & 127) {
            rounded = (blocks + 1) * 128;
        } else {
            rounded = aligned;
        }
        total += rounded;
    }
    if (savedFlags & 8) {
        total += 384;
    }
    return total;
}
