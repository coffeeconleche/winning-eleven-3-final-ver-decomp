#include "common.h"

/* Existing lookup storage and the observed full-word helper interface.
 * Historical coordinate domains, helper APIs, and native signed-conversion
 * contracts remain provisional. */
extern s16 D_800C6A58[];
extern u32 func_800B1128(u32);

u32 func_8005B61C(u32 firstX, u32 firstY, u32 secondX, u32 secondY)
{
    u32 dx = secondX - firstX;
    /* GCC 2.7.2 captures of the full-word copies before sign/narrowing tests. */
    register u32 x __asm__("$4") = dx;
    u32 dy = secondY - firstY;
    register u32 y __asm__("$5") = dy;
    s32 signY = (s16)dy;
    s32 signX;
    u32 negativeY;
    u32 negativeX;
    s32 narrowedX;
    s32 narrowedY;
    u32 bits;
    u32 square;
    /* Capture the actual helper word used as the unsigned divisor. */
    register u32 divisor __asm__("$7");
    u32 ratio;
    u32 lower;
    u32 upper;
    s32 mid;
    s32 lowByte;
    s32 highByte;
    u32 index;

    if (signY == 0) {
        return (dx >> 8) & 0x80;
    }
    signX = (s16)dx;
    negativeY = 0;
    if (signX == 0) {
        return signY > 0 ? 0x40 : 0xC0;
    }
    negativeX = 0;
    if (signX < 0) {
        negativeX = 1;
        x = 0U - dx;
    }
    if (signY < 0) {
        negativeY = 1;
        y = 0U - dy;
    }
    /* Unsigned shifts isolate each low half before PS1 signed extraction. */
    bits = x << 16;
    narrowedX = (s32)bits >> 16;
    square = (u32)(narrowedX * narrowedX);
    bits = y << 16;
    narrowedY = (s32)bits >> 16;
    /* Each narrowed signed square fits; their low-word sum is unsigned. */
    divisor = func_800B1128(square + (u32)(narrowedY * narrowedY));
    lower = 0;
    if (divisor == 0) {
        divisor = 1;
    }
    upper = 63;
    ratio = ((u32)narrowedY << 12) / divisor;

    for (;;) {
        lowByte = (u8)lower;
        highByte = (u8)upper;
        mid = ((u32)lowByte + highByte) >> 1;
        index = (u8)mid;
        if (index == 0 || index == 63 || highByte - lowByte < 2) {
            break;
        }
        if ((u32)D_800C6A58[index] < ratio) {
            lower = mid;
            if ((u32)D_800C6A58[index + 1] >= ratio) {
                break;
            }
        } else {
            upper = mid;
            if ((u32)D_800C6A58[index - 1] < ratio) {
                break;
            }
        }
    }
    if (negativeX) {
        mid = 0x180 - (u8)mid;
        mid %= 256;
    }
    if (negativeY) {
        mid = -mid;
    }
    return (u8)mid;
}
