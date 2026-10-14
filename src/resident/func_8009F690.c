#include "common.h"

/* Pointer-only offset view; not a reconstructed complete historical object. */
typedef struct {
    u8 unknown0[2];
    s16 half2;
    u8 unknown4[2];
    u16 half6;
    u8 unknown8[0x385];
    u8 byte38D;
    u8 unknown38E[3];
    u8 byte391;
    u8 unknown392[6];
    u8 byte398;
    u8 byte399;
    u8 unknown39A[0x10];
    u8 byte3AA;
    u8 unknown3AB[0x11];
    s16 half3BC;
    u16 half3BE;
    u8 unknown3C0[0x14];
    u16 half3D4;
} Resident9F690View;

/* The known caller consumes a full-word result. Guest/native pointer,
 * alignment, alias and complete object/API contracts remain provisional. */
s32 func_8009F690(Resident9F690View *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 side = record->byte399;
    s16 direction;
    u32 state;

    if (side == 0) {
        Resident9F690View *reference = *(Resident9F690View **)0x1F8002F4;
        if (reference->half2 > 0) {
            return 0;
        }
    }
    if (side == 1) {
        Resident9F690View *reference = *(Resident9F690View **)0x1F8002F4;
        if (reference->half2 < 0) {
            return 0;
        }
    }

    direction = record->byte399 == 0 ? 1 : -1;
    state = record->byte391;
    if (state < 14 && state != 9 && state != 10 &&
        state != 11 && state != 12 && record->byte38D != 13) {
        return 0;
    }

    /* Retain the low-halfword sum and the following signed memory reload. */
    record->half3BC = ((u16 *)(scratch + 0x30C))[record->byte399 ^ 1] +
                      direction * 768;
    /* Empty real-pointer identity prevents forwarding the stored value. */
    __asm__("" : "=r"(record) : "0"(record));
    {
        /* Genuine LH2/LHU6 captures retain their observed allocation/order. */
        register s32 currentHalf __asm__("$2") = record->half2;
        s32 storedHalf = record->half3BC;
        register u16 oldHalf __asm__("$4") = record->half6;
        /* Two signed halves differ by at most 65535; negation is safe. */
        s32 difference = currentHalf - storedHalf;

        if (difference < 0) {
            difference = -difference;
        }
        record->half3BE = oldHalf;
        if (difference <= 1280) {
            goto processed;
        }
    }

    {
        u32 sideBase = record->byte399 * 128;
        u32 angle = record->byte3AA;
        s32 forward = (u8)(sideBase - angle);
        if ((u32)forward > 128) {
            s32 reverse = (u8)(angle - sideBase);
            if (reverse < 32) {
                goto angularMatch;
            }
            /* Empty real-pointer use retains this result boundary. */
            __asm__("" : : "r"(record));
            return 1;
        }
        if (forward >= 32) {
            goto processed;
        }
    }
angularMatch:
    {
        u32 selector = record->byte398;
        u16 flags = record->half3D4;
        u16 mask = ((u16 *)(scratch + 0x22))[selector];
        record->half3D4 = flags | mask;
    }
processed:
    /* Empty real-pointer use retains the common processed-result boundary. */
    __asm__("" : : "r"(record));
    return 1;
}
