#include "common.h"

/* Pointer-only measured fields; the full record and historical APIs remain
 * unknown. No storage is allocated by this partial layout. Guest/native
 * pointer, alias and alignment contracts remain provisional. */
typedef struct {
    u8 unknown000[0x38D];
    u8 byte38D;
    u8 unknown38E[0xB];
    u8 byte399;
    u8 unknown39A;
    u8 byte39B;
    u8 unknown39C[4];
    u32 word3A0;
    u8 unknown3A4[0x24];
    s16 half3C8;
} Resident3EF94View;

extern u8 func_80052D90(Resident3EF94View *);
extern u8 func_8001E730(s16);
extern s32 func_8001E6B8(s32);
extern void func_800492FC(Resident3EF94View *);
extern void func_800171C4(u32);

s32 func_8003EF94(Resident3EF94View *first, Resident3EF94View *second)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 chance;
    s32 coordinate;

    if (func_80052D90(second)) {
        return 0;
    }

    chance = 1;
    if (second->word3A0 != 0) {
        /* Each load uses the current scratch pointer. Widened signed-halfword
         * coordinates make both negations safe, including -32768. */
        coordinate = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2);
        if (first->byte399 != 0) {
            coordinate = -coordinate;
            chance = 12;
            if (coordinate < -0x20E2) {
                goto checkSecondCoordinate;
            }
            goto randomGate;
        } else {
            chance = 12;
            if (coordinate >= -0x20E2) {
                goto randomGate;
            }
        }
checkSecondCoordinate:
        coordinate = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 6);
        if (coordinate < 0) {
            coordinate = -coordinate;
        }
        chance = 1;
        if (coordinate >= 0x13F4) {
            chance = 12;
        }
    }

randomGate:
    if (func_8001E730(chance)) {
        if (func_8001E6B8(12)) {
            scratch[0x2AF] = 1;
        } else {
            scratch[0x2AF] = 2;
        }
        scratch[0x2AD] = first->byte38D;
        scratch[0x2AE] = second->byte38D;
        func_800492FC(second);
        func_800171C4(6);
        return 1;
    }
    second->byte39B = 8;
    first->half3C8 = 1;
    return 0;
}
