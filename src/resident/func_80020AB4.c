#include "common.h"

/* Partial byte/halfword packet view; full layouts and helper API are unknown. */
extern u8 *func_8001D004(s32 selector);

static __inline__ u32 packet_byte(u32 value)
{
    value = (u8)value;
    /* Materialize this actual byte before its word-width packet shift. */
    __asm__("" : "=r"(value) : "0"(value));
    return value;
}

void func_80020AB4(void)
{
    u8 *packet;
    u8 value;
    s32 offset;
    u32 number;
    u32 quotient;
    u32 digit;
    u8 *scratch = (u8 *)0x1F800000;

    packet = func_8001D004(3);
    value = scratch[0x2D1 + scratch[0x2E0]];
    if (value >= 100) {
        value = 99;
    }
    number = value;
    quotient = number / 10;
    number -= quotient * 10;
    offset = 0;
    if ((u8)quotient != 0) {
        digit = (u8)quotient;
        packet[0x1B] = digit << 4;
        packet[0x22] = 0x58;
    } else {
        packet[0x22] = 0x5B;
        offset = -8;
    }
    packet[0x27] = packet_byte(number) << 4;
    *(s16 *)(packet + 0x2A) = offset - 5;
    *(s16 *)(packet + 0x36) = offset + 4;

    {
        /* Retain the measured loaded word before its byte conversion. */
        register u32 selected __asm__("$2") =
            (scratch + (scratch[0x2E0] ^ 1))[0x2D1];
        value = selected;
    }
    if (value >= 100) {
        value = 99;
    }
    number = value;
    quotient = number / 10;
    number -= quotient * 10;
    *(s16 *)(packet + 0x42) = offset + 13;
    digit = (u8)quotient;
    if (digit != 0) {
        packet[0x3F] = digit << 4;
        packet[0x46] = 0x58;
    } else {
        packet[0x46] = 0x5B;
        offset -= 8;
    }
    packet[0x4B] = packet_byte(number) << 4;
    *(s16 *)(packet + 0x4E) = offset + 22;
    *(s16 *)(packet + 0x12) = offset + 33;
}
