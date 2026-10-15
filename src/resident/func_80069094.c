#include "common.h"

/* Word ABI views narrow coordinates explicitly. Products and their sum retain
 * the original low32 bits before the signed distance comparison. Partial
 * record layouts remain provisional; native code needs scratch translation.
 * Empty identities retain initialized values, emit no instructions, and have
 * no memory clobbers. The magnitude binding retains measured allocation. */
void func_80069094(u8 *record, u32 target_x, u32 target_z)
{
    u32 limited_z = target_z;
    u32 raw_x = target_x;
    register s32 magnitude __asm__("$6");
    u8 *scratch;
    s32 dx;
    s32 dz;
    u32 distance;
    s32 position;
    s32 direction;
    s32 facing;
    u32 difference;

    __asm__("" : "=r"(limited_z), "=r"(raw_x) : "0"(limited_z), "1"(raw_x));
    magnitude = (s16)target_z;
    if (magnitude < 0) {
        magnitude = -magnitude;
    }
    if (magnitude >= 0x2081) {
        limited_z = 1;
    }
    scratch = (u8 *)0x1F800000;
    __asm__("" : "=r"(scratch), "=r"(target_x) : "0"(scratch), "1"(target_x));
    dx = *(s16 *)(record + 2) - (s16)target_x;
    dz = *(s16 *)(record + 6) - (s16)limited_z;
    *(u16 *)(record + 0x3BC) = raw_x;
    *(u16 *)(record + 0x3BE) = limited_z;
    distance = (u32)((long long)dx * dx) + (u32)((long long)dz * dz);
    if (*(u8 *)0x1F80029A == 1 && (s32)distance > 0x190000) {
        position = *(s16 *)(record + 2);
        if (position < 0) {
            position = -position;
        }
        if (position < 0x23E2) {
            direction = record[0x3AA];
            facing = record[0x399] << 7;
            difference = (u8)(facing - direction);
            if (difference >= 0x81U) {
                if (((direction - facing) & 0xFF) < 0x20) {
                    goto update;
                }
            } else if ((s32)difference < 0x20) {
update:
                *(u16 *)(record + 0x3D4) |= *(u16 *)(scratch + 0x22 + record[0x398] * 2);
            }
        }
    }
}
