#include "types.h"

/* Same partial halfword view as the accepted F554 definition; no storage. */
typedef struct {
    u16 unknown0;
    u16 value2;
    u16 value4;
    u16 value6;
    u8 unknown8[0x3BC - 8];
    u16 value3BC;
    u16 value3BE;
} Resident9F554View;

extern u8 D_800FF748[];
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);
extern u32 func_8009F554(Resident9F554View *, u32, u32);
extern s32 abs(s32);

/* Existing record/scratch views. Full allocations and helper native APIs
 * remain provisional; numeric pointers assume the original guest mapping. */
void func_800A3730(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *records = D_800FF748;
    u8 *record;
    s32 count;
    u8 *z;
    u8 identifier;
    s16 spacingZ;
    s32 delta, spacedZ, value, clamped;
    u8 *other;
    s16 x, otherX, currentZ, otherZ;
    s32 dx, dz;
    u32 distance, phase, component;

    record = records + 0x3E8;
    count = 0;
    z = records + 0x3EE;
    do {
        if ((scratch[0x2E1] & 255) != 5 || z[0x394] == 0) {
            identifier = z[0x387];
            if (identifier != 1 && identifier != 12) {
                spacingZ = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 6);
                delta = *(s16 *)z - spacingZ;
                if (abs(delta) < 0x300) {
                    spacedZ = spacingZ + 0x300;
                    if (delta < 0) spacedZ = spacingZ - 0x300;
                    /* Unsigned narrowing preserves the original half store
                     * even when the spacing adjustment crosses signed16. */
                    *(u16 *)z = spacedZ;
                }
                /* The preceding store may alias the associated record or
                 * pointer storage: use the original fresh pointer/half reads. */
                other = *(u8 **)(scratch + 0x2F4);
                x = *(s16 *)(z - 4);
                otherX = *(s16 *)(other + 2);
                dx = x - otherX;
                currentZ = *(s16 *)z;
                otherZ = *(s16 *)(other + 6);
                dz = currentZ - otherZ;
                /* Both squares fit64. Reduce each to32, add with wrapping,
                 * then retain the original signed low-word comparison. */
                distance = (u32)((long long)dx * dx) + (u32)((long long)dz * dz);
                if ((s32)distance <= 0x53DC21) {
                    phase = (u8)func_8005B36C(otherX, otherZ, x, currentZ);
                    component = func_8001E694(phase, 0x928);
                    *(u16 *)(z - 4) = *(u16 *)(*(u8 **)(scratch + 0x2F4) + 2) + component;
                    component = func_8001E5A4(phase, 0x928);
                    *(u16 *)z = *(u16 *)(*(u8 **)(scratch + 0x2F4) + 6) + component;
                }
                /* Promote before abs so signed16 minimum is handled in32. */
                value = *(s16 *)(z - 4);
                if (abs(value) >= 0x31A1) {
                    clamped = -0x31A0;
                    if (value > 0) clamped = 0x31A0;
                    *(s16 *)(z - 4) = clamped;
                }
                value = *(s16 *)z;
                if (abs(value) >= 0x2101) {
                    clamped = -0x2100;
                    if (value > 0) clamped = 0x2100;
                    *(s16 *)z = clamped;
                }
                func_8009F554((Resident9F554View *)record, *(s16 *)(z - 4), *(s16 *)z);
            }
        }
        count++;
        z += 0x3E8;
        record += 0x3E8;
    } while ((u8)count < 22U);
}
