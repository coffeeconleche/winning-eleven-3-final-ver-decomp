#include "common.h"

extern u8 D_800FF748[];
extern u32 func_8005CE30(u32), func_8005CE14(u32);

u32 func_800658D0(u8 *actor, u32 mode)
{
    u8 *pool = D_800FF748;
    u32 first;
    u8 *row;
    register u8 *id __asm__("$4");
    u32 smallest;
    u32 index;
    /* The native result remains the incoming saved-register value when
     * every row is ineligible. A qualifying row always initializes it. */
    register u32 best __asm__("$18");

    register u32 byte_offset __asm__("$3");

    if ((u8)mode == 1)
        first = (u8)func_8005CE30(actor[0x38D]);
    else
        first = (u8)func_8005CE14(actor[0x38D]);
    byte_offset = first * 1000 + 1000;
    row = (u8 *)(byte_offset + (u32)pool);
    smallest = -1U;
    index = 0;
    id = row + 0x38D;
    do {
        if (actor != row && row[0]) {
            register u32 x_sq __asm__("$5");
            register u32 z_sq __asm__("$3");
            register u32 distance __asm__("$3");
            {
                register s32 left __asm__("$2") = *(s16 *)(actor + 2);
                register s32 right __asm__("$3") = *(s16 *)(id - 0x38B);
                s32 delta = left - right;
                x_sq = (u32)delta * (u32)delta;
            }
            {
                register s32 left __asm__("$2") = *(s16 *)(actor + 6);
                s32 right = *(s16 *)(id - 0x387);
                s32 delta = left - right;
                z_sq = (u32)delta * (u32)delta;
            }
            __asm__("" : "=r"(z_sq) : "0"(z_sq));
            /* The sum and closest-distance comparison use unsigned words. */
            distance = x_sq + z_sq;
            if (distance < smallest) {
                best = *id;
                smallest = distance;
            }
        }
        index++;
        id += 1000;
        row += 1000;
    } while ((u8)index < 10);
    return best;
}
