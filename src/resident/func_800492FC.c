#include "common.h"

extern u32 func_80049398(u8 *object, u32 value, u32 limit);
extern u32 func_8005B7CC(u32 first, u32 second, u32 step);
extern s32 func_8001E6B8(s32 bound);

/* Partial byte/halfword and word-call views, not a recovered object/API.
 * The historical return convention is unknown; callers ignore its residue. */
void func_800492FC(u8 *object)
{
    u32 value;
    s32 delta;

    value = func_80049398(object, object[0x3AA], 0x190000);
    /* Physical reread after the first callback, not its earlier byte value. */
    value = func_8005B7CC((u8)value, object[0x3AA], 24);
    delta = 448 - (u8)value;
    object[0x3AA] = value;
    *(u16 *)(object + 0x26) = (delta % 256) * 16;
    object[0x3D1] = 0;
    object[0x396] = 20;
    object[0x397] = 0;
    if (func_8001E6B8(3) != 0) {
        object[0x397] = 0;
    } else {
        object[0x397] = 16;
    }
}
