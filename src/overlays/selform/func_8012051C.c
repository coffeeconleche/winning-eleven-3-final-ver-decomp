#include "common.h"

extern u8 *func_8001D004(u32);

/* Byte access view only: the original record and field meanings are unknown. */
void func_8012051C(u8 selector, u8 side, u32 value) {
    u32 index;
    u8 *record;

    if (side) {
        index = ((u8 *)0x1F800303)[selector];
    } else {
        index = ((u8 *)0x1F800301)[selector];
    }
    record = (u8 *)(index * 24 + (u32)func_8001D004(selector + 0x100D));
    record[0xE2] = value;
    record[0xEE] = value;
}
