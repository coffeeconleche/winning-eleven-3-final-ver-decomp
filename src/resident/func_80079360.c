#include "types.h"

extern u8 D_8010C32C[];
extern u8 D_8010CD90;
extern s32 func_8001E6B8(s32);

/* Partial native PS1 access views: aligned player/actor records, mapped
 * scratchpad, and a valid selected packed-table entry are required. No
 * complete record/table extent or host-portable pointer layout is asserted.
 * The target retains the selected full return word; its known caller stores
 * only the low eight bits of that return, as this function also does here. */
s32 func_80079360(u8 *player)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 x;
    register s32 z __asm__("v0");
    s32 side;
    s32 shifted;
    register s32 shiftedAgain __asm__("v0");
    u32 distance;
    u32 packed;
    s32 result;
    register s32 squaredZ __asm__("a3");
    register u32 limit __asm__("v0");

    if (player[0x39A] != 0) {
        x = *(s16 *)(*(u8 **)0x1F8002F4 + 2);
        shifted = player[0x399] != 0 ? x + 13088 : x - 13088;
        z = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 6);
        /* Each shifted operand is within [-45856,45855], so its signed
         * product fits s32 even when the two side reads differ. z*z also
         * fits. Only the sum requires explicit unsigned low-word wrapping. */
        squaredZ = z * z;
        side = player[0x399];
        shiftedAgain = side != 0 ? x + 13088 : x - 13088;
        distance = (u32)(shifted * shiftedAgain) + (u32)squaredZ;
        /* Measured zero-instruction capture of the real completed distance
         * and its last product operand; neither input is a formal argument. */
        __asm__("" : : "r"(distance), "r"(shiftedAgain));
        limit = 0x2A3FFFFU;
        if (distance <= limit) {
            *(u16 *)(player + 0x3D4) |= 0x4000;
        } else if (distance > 0x3FFFFFFU) {
            *(u16 *)(player + 0x3D4) |= 0x1000;
        }
    }
    if (scratch[0x29A] == 4) {
        result = 11;
        goto done;
    }
    z = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2);
    if ((player[0x399] != 0 && z > 0) ||
        (player[0x399] == 0 && z < 0)) {
        result = 11;
        goto done;
    }
    if (*(u16 *)(player + 0x3D4) & 0x4000) {
        packed = *(u32 *)(D_8010C32C + player[0x392] * 12 + player[0x398] * 264);
        /* The nibble's full domain permits a negative or zero divisor.
         * A returning signed remainder has magnitude at most eight here. */
        result = func_8001E6B8(9 - (s32)((packed >> 4) & 15)) + 13;
    } else if (*(u16 *)(player + 0x3D4) & 0x1000) {
        if (*(s16 *)(player + 0x3C8) != 0) {
            result = func_8001E6B8(2) + 18;
        } else {
            result = func_8001E6B8(2) + 17;
        }
    } else {
        result = func_8001E6B8(3) + 15;
    }
done:
    D_8010CD90 = result;
    return result;
}
