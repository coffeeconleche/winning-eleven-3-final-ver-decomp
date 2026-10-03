#include "common.h"

/* Access view only; the original text descriptor type is unknown. */
typedef struct {
    u16 half0, half2, half4, half6;
    u8 byte8;
    s8 pitch9;
} TextFields;

s16 func_80194A74(TextFields *fields, u8 *text) {
    u32 units = 0;
    u32 count = 0;
    u8 byte = *text;
    register s32 difference __asm__("$3");
    register s32 offset __asm__("$5");

    if (byte == 0xA || byte == 0 || byte == 0x5C || byte == 9) {
        goto scanned;
    }
    for (;;) {
        switch (byte) {
        case 0xB:
            goto scanned;
        case 0x20:
            units++;
            text++;
            break;
        default:
            units += 2;
            text += 2;
            break;
        }
        byte = *text;
        count++;
        if (byte == 0xA || byte == 0 || byte == 0x5C || byte == 9) {
            break;
        }
    }

scanned:
    /* Narrow only after scanning; an empty scan still wraps count-1 to 255. */
    count--;
    difference = (s16)(fields->half6 - ((u8)units * 6 + (u8)count * fields->pitch9));
    difference >>= 1;
    offset = difference;
    if (difference < 0) {
        offset = 0;
    }
    /* Keep the clamp input/result distinct for its delay-slot copy. These
       register bindings and paired empty inputs emit no instructions. */
    __asm__("" : : "r"(difference), "r"(offset));
    return fields->half2 + offset;
}
