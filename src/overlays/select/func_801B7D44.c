#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D959C[];
/* Word-width caller ABI views preserve the supplied bits. The dispatcher
 * narrows its key to u16; the glyph helpers narrow their byte arguments.
 * Their complete original prototypes and record meanings remain unknown. */
extern u8 *func_8001D004(u32);
extern u8 *func_801A9540(u8 *, s32, u32, s32, s32);
extern u8 *func_801B0368(u8 *, s32);
extern u8 *func_801A9168(u8 *, u32, u32, s32);

void func_801B7D44(u32 input) {
    u8 *base = D_800FF748;
    s32 i = 4;
    u8 *output = D_801D959C;
    do {
        s32 count = 44;
        u8 *cursor = output + 44;
        do {
            *cursor = 0;
            count--;
            cursor--;
        } while (count >= 0);
        i++;
        output += 45;
    } while (i < 32);
    output = func_8001D004(0x3139);
    i = 0;
    /* An explicit back edge retains the five reused constants separately
     * from the literals that exist only in the later branches. */
    {
        s32 start = (u8)input;
        s32 c48 = 48;
        s32 c208 = 208;
        s32 c80 = 80;
        s32 c56 = 56;
        s32 c200 = 200;
        u8 *p = output;
again:
        {
            s32 value = start + i;
            if (value < 4) {
                p[61] = c48;
                p[63] = c208;
                p[64] = c80;
            } else {
                s32 under12 = value < 12;
                if (under12) {
                    p[61] = c56;
                    p[63] = c200;
                    p[64] = 96;
                } else {
                    p[61] = 72;
                    p[63] = 168;
                    p[64] = 32;
                }
            }
            i++;
            p += 12;
        }
        if (i < 4)
            goto again;
    }
    output = func_8001D004(0x3134) + 576;
    i = 0;
    do {
        /* Scoped argument bindings reproduce the measured call setup. */
        register s32 alignment __asm__("$6") = 2;
        register s32 glyphBase __asm__("$7") = 176;
        u8 *record;
        s32 value;
        {
            u32 index = i + (u8)input;
            u8 *row;
            row = (u8 *)((u32)base + index);
            record = base + row[0xAB54] * 36;
        }
        value = record[0x8F26];
        /* Keep that setup before advancing the counter; emits no code. */
        __asm__ volatile ("" : : "r"(alignment));
        i++;
        output = func_801A9540(output, value, alignment, glyphBase, 14);
        output = func_801B0368(output, *(u16 *)(record + 0x8F2C));
        output = func_801B0368(output, *(u16 *)(record + 0x8F2E));
        output = func_801A9540(output, record[0x8F33], 2, 176, 14);
        output = func_801A9540(output, record[0x8F34], 2, 176, 14);
    } while (i < 4);
    i = 0;
    {
        s32 marker = 28;
        s32 offset = 0;
        do {
            u8 *entry;
            u8 *record;
            s32 flags;
            u8 *p;
            {
                u32 index = i + (u8)input;
                u8 *row;
                /* Keep the loaded map byte in the measured shared temporary. */
                register s32 mapped __asm__("$2");
                row = (u8 *)((u32)base + index);
                mapped = row[0xAB54];
                entry = base + mapped + 0xAB80;
            }
            {
                u8 *firstRecord = base + *entry * 36;
                flags = firstRecord[0x8F24];
            }
            p = func_801A9168(D_801D959C + offset, 4, flags & 0xC0,
                (flags & 0x3F) + 1);
            *p = 9;
            p++;
            *p = marker;
            p++;
            *p = 30;
            record = base + *entry * 36;
            {
                u8 code = record[0x8F25];
                p++;
                *p = code;
                p++;
            }
            *p = 32;
            p++;
            *p = marker;
            record = base + *entry * 36;
            {
                u8 code = record[0x8F25];
                /* Keep the late alias-sensitive byte read before increment;
                 * this empty input emits no instructions/accesses. */
                __asm__ volatile ("" : : "r"(code));
                i++;
                p[1] = code;
            }
            offset += 45;
        } while (i < 4);
    }
}
