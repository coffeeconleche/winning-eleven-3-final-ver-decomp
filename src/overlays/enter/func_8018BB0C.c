#include "common.h"
extern u8 D_800FF748[];
extern s32 func_8001E694(u32, s32), func_8001E5A4(u32, s32);

/* Field meanings are unknown; signed /16 rounds toward zero. The two
 * halfword bases are reread after their respective calls and before byte writes. */
void func_8018BB0C(u8 *argument) {
    u8 *record = argument;
    u8 *base = D_800FF748;
    s32 quotient;
    /* Saved angle allocation and the empty identities below retain the original
     * quotient copy before byte wrapping; they emit no instructions. */
    register s32 angle __asm__("$16");
    s32 result;
    s32 coordinate;
    switch (record[0x38D] & 7) {
    case 0:
        angle = *(s16 *)(base + 0xAC36) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + 40) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC28) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC30);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    case 1:
        angle = *(s16 *)(base + 0xAC36) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + 88) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC28) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC30);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    case 2:
        angle = *(s16 *)(base + 0xAC36) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + 168) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC28) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC30);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    case 3:
        angle = *(s16 *)(base + 0xAC36) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + -40) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC28) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC30);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    case 4:
        angle = *(s16 *)(base + 0xAC3E) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + 40) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC2A) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC32);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    case 5:
        angle = *(s16 *)(base + 0xAC3E) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + 88) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC2A) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC32);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    case 6:
        angle = *(s16 *)(base + 0xAC3E) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + 168) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC2A) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC32);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    case 7:
        angle = *(s16 *)(base + 0xAC3E) / 16;
        quotient = angle;
        __asm__("" : "=r"(angle) : "0"(angle));
        angle = (angle + -40) & 255;
        result = func_8001E694(angle, 800);
        *(u16 *)(record + 0x3BC) = *(u16 *)(base + 0xAC2A) + result;
        result = func_8001E5A4(angle, 800);
        coordinate = *(u16 *)(base + 0xAC32);
        record[0x3A4] = quotient;
        coordinate += result;
        *(u16 *)(record + 0x3BE) = coordinate;
        break;
    }
}
