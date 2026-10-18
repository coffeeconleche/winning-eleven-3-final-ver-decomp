#include "common.h"

extern s16 func_8006B7F4(u8 *);
extern s16 func_8005A7E4(s32, s32, s32);
extern s16 func_8005A76C(s32, s32, s16);

/* Partial record/scratch views of existing storage; no data is defined here.
 * The scratch base is the PS1 hardware scratchpad, so a native port must remap
 * these addresses. Field meanings and the selector's gameplay range are
 * provisional; only the observed stores and reloads are asserted. */
void func_8006C1EC(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    s16 direction = -1;

    if (record[0x399] == 0) {
        direction = 1;
    }
    *(s16 *)(scratch + 0xF8) = func_8006B7F4(record);

    switch (scratch[0x30B]) {
    case 0:
        break;
    case 1:
    case 2:
        *(s16 *)(scratch + 0xFC) = func_8005A7E4(
            (s16)*(u16 *)(scratch + 0xFC),
            -(s32)*(s16 *)(*(u8 **)(scratch + 0x2F4) + 6),
            5);
        break;
    case 3: {
        s32 value;
        s32 magnitude;

        *(s16 *)(scratch + 0xFC) = func_8005A7E4(
            (s16)*(u16 *)(scratch + 0xFC),
            -(s32)*(s16 *)(*(u8 **)(scratch + 0x2F4) + 6),
            10);
        record[0x3E1] = 0;
        value = (s16)*(u16 *)(scratch + 0xF8);
        magnitude = value >= 0 ? value : -value;
        if (magnitude >= 0x2563) {
            s32 clamped = value < 0 ? -0x2562 : 0x2562;
            *(s16 *)(scratch + 0xF8) = clamped;
        }
        break;
    }
    case 4: {
        s32 value;
        s32 magnitude;

        *(s16 *)(scratch + 0xFC) = func_8005A76C(
            (s16)*(u16 *)(scratch + 0xFC), 0, 6);
        *(s16 *)(scratch + 0xF8) = (s16)(
            ((s16)*(u16 *)(scratch + 0xF8) +
             (*(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) -
              direction * 512)) / 2);
        value = (s16)*(u16 *)(scratch + 0xF8);
        magnitude = value >= 0 ? value : -value;
        if (magnitude >= 0x2D09) {
            s32 clamped = value < 0 ? -0x2D08 : 0x2D08;
            *(s16 *)(scratch + 0xF8) = clamped;
        }
        break;
    }
    case 5: {
        s32 value;
        s32 magnitude;

        *(s16 *)(scratch + 0xF8) = (s16)(
            *(u16 *)(*(u8 **)(scratch + 0x2F4) + 2) -
            direction * 1280);
        value = (s16)*(u16 *)(scratch + 0xF8);
        magnitude = value >= 0 ? value : -value;
        if (magnitude >= 0x2D09) {
            s32 clamped = value < 0 ? -0x2D08 : 0x2D08;
            *(s16 *)(scratch + 0xF8) = clamped;
        }
        record[0x3E1] = 0;
        break;
    }
    default:
        break;
    }
}
