#include "common.h"

extern u8 D_8010C32C[], D_8010C330[];
extern s32 func_8001E6B8(s32);

/* Partial views of existing record, scratchpad and stat storage. No data is
 * defined here and no complete layout is claimed. The scratch base is the PS1
 * hardware scratchpad, so a native port must remap these addresses.
 *
 * The current and other pointers reload the same 2F4 word across intervening
 * field stores. Separate loads also follow the random-helper call paths.
 * Facing differences wrap modulo 256, and the random helper's signed result
 * is narrowed only when it reaches the halfword or byte store. */
void func_8002B38C(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 side;
    u32 mask;
    u8 *current;
    u8 *other;
    s32 mode;
    u32 state;
    u32 offset;
    u32 packed;
    s32 difference;
    s32 distance;
    s32 amount;

    /* A non-zero phase byte means the transition was already published. */
    if (record[0x3B1] != 0) {
        return;
    }
    side = record[0x398];
    mask = *(u16 *)(record + 0x3D4);
    if ((*(u16 *)(scratch + 0x16 + side * 2) & mask) == 0) {
        /* No side mask selected this record: react to the current actor. */
        current = *(u8 **)(scratch + 0x2F4);
        state = current[0x396];
        if (state != 4) {
            return;
        }
        mode = *(s32 *)(scratch + 0x2B0);
        if (mode != state) {
            return;
        }
        *(u16 *)(current + 0x3CA) =
            (u16)((u32)((current[0x3A4] - record[0x3AA]) & 0xFF) < 0x81U);
        record[0x3B1] = 1;
        if (record[0x396] != mode) {
            goto release;
        }
        if ((u16)(*(u16 *)(record + 0x38E) - 0xF) >= 2) {
            goto release;
        }
        /* Circular facing distance in sixteenths of a turn, capped at 16. */
        other = *(u8 **)(scratch + 0x2F4);
        difference = record[0x3AA] - other[0x3A4];
        distance = difference & 0xFF;
        if ((u32)distance >= 129U) {
            amount = 16 - (((other[0x3A4] - record[0x3AA]) & 0xFF) >> 4);
        } else {
            amount = 16 - (distance >> 4);
        }
        *(u16 *)(other + 0x3C8) = amount;
        return;
    release:
        *(u16 *)(*(u8 **)(scratch + 0x2F4) + 0x3C8) = 18 - func_8001E6B8(5);
        return;
    }
    /* Select the next phase from the packed stat word's top nibble. */
    offset = record[0x392] * 12 + side * 264;
    if (record[0x3AC] == ((*(u32 *)((u8 *)D_8010C330 + offset) >> 4) & 1)) {
        packed = *(u32 *)((u8 *)D_8010C32C + offset);
        switch ((packed >> 28) - 5) {
        case 4:
            record[0x3B1] = 3;
            break;
        case 2:
        case 3:
            record[0x3B1] = 4;
            break;
        case 0:
        case 1:
            record[0x3B1] = 5;
            break;
        default:
            record[0x3B1] = 6;
            break;
        }
    } else {
        record[0x3B1] = 6 - func_8001E6B8(3);
    }
    *(u16 *)(*(u8 **)(scratch + 0x2F4) + 0x3CA) = record[0x3AC] ^ 1;
}
