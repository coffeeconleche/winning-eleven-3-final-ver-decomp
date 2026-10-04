#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D81C4;
extern u8 D_801D81C5;
extern u8 D_801D81C6;
extern u8 D_801D81C7;
extern u8 D_801D81C8;
extern u8 D_801D81C9;
extern u8 *func_8001D004(u16 key);

/* Update the observed bytes of the record returned for key 0x3082.
 * The original record type and field meanings remain unknown. */
void func_801A8124(void)
{
    u8 *result = func_8001D004(0x3082);
    u8 *output;
    /* Keep the base in the measured saved register through the byte writes. */
    register u8 *base __asm__("s0");
    s32 value;
    s32 number;
    s32 tens;

    {
        s32 firstValue = 0x90;
        /* Retain the initial value/base setup before the first flag read. */
        __asm__("" : "=r"(firstValue) : "0"(firstValue));
        base = D_800FF748;
        __asm__("" : "=r"(base) : "0"(base));
        if (D_801D81C4 == 0) firstValue = 0x80;
        output = result;
        output[4] = firstValue;
    }
    value = 0x90;
    if (D_801D81C5 == 0) value = 0x80;
    output[0x10] = value;
    /* Both divisions use signed word arithmetic after the unsigned byte load. */
    number = D_801D81C6 * 5 + 5;
    {
        s32 size;
        if (number / 10 <= 0) {
            output[0x19] = 2;
            size = 1;
        } else {
            output[0x19] = 8;
            size = 16;
        }
        output[0x1A] = size;
        /* Keep the size store before the second division constant occupies v0. */
        __asm__ volatile("" : : : "v0");
    }
    tens = number / 10;
    output[0x1B] = tens * 8 - 128;
    output[0x27] = (number - tens * 10) * 8 - 128;
    output[0x40] = D_801D81C7 * 16 - 128;
    output[0x4B] = D_801D81C8 * 8 - 48;
    /* Reread the source flags after every potentially aliasing record store. */
    value = 0xC8;
    if (D_801D81C9 & 1) value = 0xB8;
    output[0x64] = value;
    value = 0xC8;
    if ((D_801D81C9 >> 1) & 1) value = 0xB8;
    output[0x70] = value;
    value = 0xC8;
    if ((D_801D81C9 >> 2) & 1) value = 0xB8;
    output[0x7C] = value;
    value = 0xF0;
    if (base[0x8F16] == 0) value = 0xE0;
    output[0x88] = value;
    value = 0xF0;
    if (base[0x8F17] == 0) value = 0xE0;
    output[0x94] = value;
}
