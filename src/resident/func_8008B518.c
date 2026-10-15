#include "common.h"

/* Identical declaration-only view used by the existing 52D90 caller.
 * Full record ownership and native pointer/layout contracts remain provisional. */
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
extern s32 func_8001E6B8(s32);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u8 D_800FF748[];

/* Byte399's side-derived scratch index must be mapped; no boolean domain is
 * inferred. Selected pool byte modulo24 addresses an existing 1000-byte slot.
 * Unsigned operands preserve low-word square/sum wrapping; the last distance
 * deliberately uses the PS1 signed interpretation before comparison. */
void func_8008B518(u8 *object)
{
    u8 *pool;
    u8 *other;
    u8 *reference;
    s32 x;
    s32 y;
    s32 referenceX;
    s32 referenceY;
    s32 dx;
    s32 dy;
    u32 distance;
    u32 heading;
    u32 current;
    u32 delta;
    s32 lastDx;
    s32 lastDy;
    u32 lastDistance;

    pool = D_800FF748;
    if (*(u8 *)0x1F80029A != 1) {
        return;
    }
    other = pool + (((u8 *)0x1F800000)[0x31E +
        ((object[0x399] ^ 1) * 2)] % 24) * 1000;
    if (func_80052D90((Resident3EF94View *)other)) {
        return;
    }
    reference = *(u8 **)0x1F8002F4;
    x = *(s16 *)(other + 2);
    referenceX = *(s16 *)(reference + 2);
    dx = x - referenceX;
    y = *(s16 *)(other + 6);
    referenceY = *(s16 *)(reference + 6);
    dy = y - referenceY;
    distance = (u32)dx * (u32)dx + (u32)dy * (u32)dy;
    if (distance <= 0xFFFFU) {
        if (func_8001E6B8(3) != 0) {
            goto setHeading;
        }
        other[0x3D1] = 0;
        other[0x396] = 0x14;
        goto clearState;
    }
    heading = func_8005B36C(x, y, referenceX, referenceY);
    current = other[0x3AA];
    delta = (current - heading) & 0xFF;
    if (delta >= 0x81U) {
        if ((s32)((heading - current) & 0xFF) < 0x40) {
            goto nearHeading;
        }
        return;
    }
    if ((s32)delta < 0x40) {
nearHeading:
        if (distance > 0x63FFFU) {
            lastDx = *(s16 *)(object + 2) - *(s16 *)(other + 2);
            lastDy = *(s16 *)(object + 6) - *(s16 *)(other + 6);
            lastDistance = (u32)lastDx * (u32)lastDx + (u32)lastDy * (u32)lastDy;
            if ((s32)lastDistance > 0x3FFFF) {
                return;
            }
        }
setHeading:
        other[0x3AB] = func_8005B36C(*(s16 *)(object + 2), *(s16 *)(object + 6),
            *(s16 *)(other + 2), *(s16 *)(other + 6));
        other[0x396] = 0x12;
clearState:
        other[0x397] = 0;
    }
}
