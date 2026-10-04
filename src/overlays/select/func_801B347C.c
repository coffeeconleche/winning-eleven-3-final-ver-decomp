#include "common.h"
extern u8 D_800FF748[];
/* Split the byte-addressed 36-byte row lookup without caching mapped bytes.
 * The complete original row and output-encoding types are unknown. */
#define RECORD_BYTE(offset) ({ u8 *record = base + *entry * 36; record[offset]; })
extern u8 *func_801A9168(u8 *, u8, u8, s32);
extern u8 *func_801A92A4(u8 *, s32);
extern u8 *func_801A93CC(u8 *, s32);
u8 *func_801B347C(u8 *output, u8 mode, u8 unknown2, u8 firstIndex,
                  u8 secondIndex, u8 unknown5, u8 unknown6, u8 number1, u8 number2) {
    /* Measured register lifetimes span callbacks; branch-local constants
     * remain distinct. Unnecessary bindings and row identities were removed. */
    register u8 *base __asm__("$23") = D_800FF748;
    register u32 second __asm__("$22") = secondIndex;
    register u32 numberA __asm__("$18");
    register u8 *entry __asm__("$16");
    u32 value;
    register u32 separator __asm__("$19");
    register u8 *incoming __asm__("$4") = output;
    /* Preserve the original stack-byte capture and incoming-cursor ordering.
     * The caller-saved incoming binding is used only before the first call. */
    __asm__("" : "=r"(second) : "0"(second));
    numberA = number1;
    __asm__("" : "=r"(incoming) : "0"(incoming), "r"(numberA));
    output = incoming;
    if (mode == 0) {
        register u32 mappingOffset;
        register u32 marker __asm__("$17");
        register u32 escape;
        register u32 space __asm__("$18");
        entry = base + firstIndex;
        mappingOffset = 0xAB80;
        entry += mappingOffset;
        /* Retain the first mapped-byte load through the measured row register. */
        __asm__("" : "=r"(entry) : "0"(entry));
        value = RECORD_BYTE(0x8F24);
        output = func_801A9168(output, 4, value & 0xC0, (value & 0x3F) + 1);
        marker = 0x5F;
        *output++ = marker;
        escape = 0x1F;
        *output++ = escape;
        space = 0x20;
        separator = 0x1C;
        *output++ = RECORD_BYTE(0x8F25);
        *output++ = space;
        *output++ = separator;
        *output++ = RECORD_BYTE(0x8F25);
        *output++ = space;
        *output++ = marker;
        *output++ = marker;
        *output++ = marker;
        *output++ = 0x1A;
        *output++ = 1;
        *output++ = 0x76;
        *output++ = 0x73;
        *output++ = space;
        *output++ = 9;
        *output++ = 0xB6;
        entry = base + second + mappingOffset;
        value = RECORD_BYTE(0x8F24);
        output = func_801A9168(output, 4, value & 0xC0, (value & 0x3F) + 1);
        *output++ = marker;
        *output++ = escape;
        *output++ = RECORD_BYTE(0x8F25);
        *output++ = space;
    } else {
        register u32 marker;
        register u32 escape;
        register u32 space __asm__("$17");
        entry = base + firstIndex;
        entry += 0xAB80;
        value = RECORD_BYTE(0x8F24);
        output = func_801A9168(output, 4, value & 0xC0, (value & 0x3F) + 1);
        marker = 0x5F;
        *output++ = marker;
        escape = 0x1F;
        *output++ = escape;
        space = 0x20;
        separator = 0x1C;
        *output++ = RECORD_BYTE(0x8F25);
        *output++ = space;
        *output++ = separator;
        *output++ = RECORD_BYTE(0x8F25);
        *output++ = space;
        *output++ = 0x1A;
        *output++ = 6;
        output = func_801A92A4(output, numberA);
        *output++ = space;
        *output++ = 0x1A;
        *output++ = 2;
        *output++ = 0x2D;
        *output++ = space;
        *output++ = 0x1A;
        *output++ = 6;
        output = func_801A93CC(output, number2);
        *output++ = space;
        *output++ = 9;
        *output++ = 0xB6;
        entry = base + second + 0xAB80;
        value = RECORD_BYTE(0x8F24);
        output = func_801A9168(output, 4, value & 0xC0, (value & 0x3F) + 1);
        *output++ = marker;
        *output++ = escape;
        *output++ = RECORD_BYTE(0x8F25);
        *output++ = space;
    }
    {
        register u32 mapped __asm__("$3");
        u8 *record;
        u32 last;

        *output = separator;
        mapped = *entry;
        /* Keep the alias-sensitive load after the byte store and before the
         * cursor advance, with the original row/address operand order. */
        __asm__("" : : "r"(mapped) : "memory");
        record = (u8 *)((u32)(mapped * 36) + (u32)base);
        last = record[0x8F25];
        output++;
        *output++ = last;
    }
    /* Keep the base live through the tail and advance before return copying. */
    __asm__("" : : "r"(output), "r"(base));
    return output;
}
