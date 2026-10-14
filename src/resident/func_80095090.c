#include "common.h"

/* Numeric access view of the live scratchpad pointer slot; defines no storage. */
extern u8 *scratch2F4 __asm__("0x1F8002F4");

/* Partial record access view. The eight direct callers do not consume a return
 * value; a complete record layout and indirect-call contract remain unknown.
 * Destination word/halfword accesses require four-/two-byte alignment. */
void func_80095090(u8 *record)
{
    /* Genuine destination-pointer allocation hint, with no added instructions. */
    register u8 *destination __asm__("a0");
    s32 middle;
    s32 movement;
    u8 *scratch;
    u8 side;
    s32 near;
    s32 first;
    s32 old;

    /* Signed sums fit in 32 bits; arithmetic shifts round negative odd sums
     * downward, and each ordered coordinate store keeps the low halfword. */
    first = (*(s16 *)0x1F8000F0 + *(s16 *)0x1F800036) >> 1;
    *(s16 *)(scratch2F4 + 2) = first;
    scratch = (u8 *)0x1F800000;
    middle = (*(s16 *)0x1F8000F2 + *(s16 *)0x1F80004E) >> 1;
    destination = *(u8 **)0x1F8002F4;
    movement = *(s32 *)(destination + 0xC);
    if ((movement > 0 && middle < *(s16 *)(destination + 4)) ||
        (movement < 0 && middle > *(s16 *)(destination + 4))) {
        /* Keep the field and pointer rereads: preceding stores may alias them. */
        near = *(s16 *)(scratch + 0x4E);
        destination = *(u8 **)(scratch + 0x2F4);
        old = *(s16 *)(destination + 4);
        old += near;
        old >>= 1;
        *(s16 *)(destination + 4) = old;
    } else {
        *(s16 *)(*(u8 **)(scratch + 0x2F4) + 4) =
            (*(s16 *)(scratch + 0xF2) + *(s16 *)(scratch + 0x4E)) >> 1;
    }
    *(s16 *)(*(u8 **)(scratch + 0x2F4) + 6) =
        (*(s16 *)(scratch + 0xF4) + *(s16 *)(scratch + 0x66)) >> 1;
    (*(u8 **)(scratch + 0x2F4))[0x396] = 4;
    /* Capture the byte before the word update, then narrow the XOR to a byte. */
    side = record[0x399];
    *(s32 *)(scratch + 0x2B0) = 11;
    *(u16 *)(scratch + 0x31C) = (u8)(side ^ 1);
    *(u8 *)((u32)scratch + record[0x398] + 0x2CF) = 1;
}
