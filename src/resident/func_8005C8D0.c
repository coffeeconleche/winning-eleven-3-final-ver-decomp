#include "common.h"

/* Observed word-argument and pointer-return views; complete helper APIs,
 * record bounds and table-index invariants remain provisional. */
extern void func_8001CEE0(s32, s32, s32, s32, s32, s32, s32, s32);
extern u8 *func_8001D004(u16);
/* Matching-only view of existing state, used for the post-helper reread.
 * This declaration allocates no storage and makes no MMIO claim. */
extern u8 state298 __asm__("0x1F800298");
extern u8 D_800E78A8[][22];
extern u8 D_800CA30C[][11];
extern u8 D_800F0420[][22];
/* Access views encode observed 11/22-byte and 12/264-byte strides, not
 * complete table extents or validated input ranges. Only word zero is read. */
typedef struct { u32 word; u8 unknown[8]; } PackedRow;
extern PackedRow D_8010C330[][22];

/* Deliberately reread for every output store: packet/record/table aliasing
 * has not been ruled out. The extracted fields promote to signed int. */
#define FIELD_WORD (D_8010C330[record[0x398]][record[0x392]].word)
#define FIELD(bits, mask) ((s32)((FIELD_WORD >> (bits)) & (mask)))

void func_8005C8D0(u8 *record, u32 flag, u32 selector)
{
    u32 index;
    u8 initial;
    u32 preserved;
    u32 quotient;
    u32 tile;
    u8 number;
    u8 *packet;

    if (*(u8 *)0x1F800298 != 3) {
        index = selector & 255;
        func_8001CEE0(index + 1, 0x31, 0, 0, 0x50, 7, 0, 1);
        func_8001CEE0(index + 2, 0x30, 0, 0, 0x50, 9, 0, 1);
        /* Retain this snapshot across the first pointer-lookup call. */
        initial = record[0x392];
        packet = func_8001D004(0x31);
        preserved = (u8)initial;
        quotient = (u32)(u8)initial / 11U;
        packet[3] = ((u8)quotient << 6) + (record[0x398] << 7);
        packet[4] = (u8)((u32)(u8)initial % 11U) * 16;
        packet = func_8001D004(0x30);
        if (state298 == 6) {
            tile = D_800E78A8[record[0x398]][preserved] * 8;
        } else if ((*(u8 *)0x1F8002E1) == 4) {
            tile = D_800E78A8[record[0x398]][preserved] * 8;
        } else {
            u8 *base = (u8 *)D_800CA30C;
            u8 *row = base + ((u8 *)0x1F8002FD)[record[0x398]] * 11;
            s32 first = record[0x399] * 11 + 1;
            tile = row[record[0x38D] - first] * 8;
        }
        packet[4] = tile + 0x20;
        number = D_800F0420[record[0x398]][initial];
        if ((u32)(u8)number < 10U) {
            packet[0x16] = 0x5B;
        } else {
            /* Byte temporaries preserve the observed narrowing points. */
            u8 tens = (u32)(u8)number / 10U;
            packet[0x16] = 0x9B;
            packet[0x10] = tens * 8 + 0x30;
        }
        {
            u32 units = (u8)((u32)(u8)number % 10U);
            packet[0x1C] = units * 8 + 0x30;
        }
        if ((u8)flag) {
            packet[0x2E] = 7;
            packet[0x3A] = 0x5B;
        } else {
            packet[0x3A] = 0x5B;
            packet[0x2E] = 0x5B;
        }
        packet[0x40] = 0x38;
        packet[0x4C] = FIELD(11, 127) / 10 * 8 + 0x30;
        packet[0x58] = FIELD(11, 127) % 10 * 8 + 0x30;
        packet[0x64] = FIELD(18, 127) / 10 * 8 + 0x30;
        packet[0x70] = FIELD(18, 127) % 10 * 8 + 0x30;
        packet[0x7C] = FIELD(5, 63) / 10 * 8 + 0x30;
        packet[0x88] = FIELD(5, 63) % 10 * 8 + 0x30;
    }
}
