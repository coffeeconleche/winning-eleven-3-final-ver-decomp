#include "common.h"

extern u8 D_800FF748[];
extern u8 D_800F0420[][22];
extern void func_800AB620(s32 value);

s32 func_80057AE4(u8 *record, u32 first, u32 second)
{
    u8 *base;
    s32 side = record[0x398];
    s32 argument;
    /* Real low-byte selector, assigned on each path before its only use.
     * This measured binding preserves the original selector allocation. */
    register s32 flag __asm__("$2");

    base = D_800FF748;
    /* Numeric guest offsets retain the full byte index without inventing
     * a bound inside either nominal 22-byte row. */
    if (side == 0) {
        flag = second & 0xFF;
        if (flag != 0) {
            argument = *(u8 *)((u32)D_800F0420 + record[0x392]) + 0x10FD;
        } else {
            argument = *(u8 *)((u32)D_800F0420 + record[0x392]) + 0x10E7;
        }
    } else {
        flag = second & 0xFF;
        if (flag != 0) {
            argument = *(u8 *)((u32)D_800F0420 + 22 + record[0x392]) + 0x1129;
        } else {
            argument = *(u8 *)((u32)D_800F0420 + 22 + record[0x392]) + 0x1113;
        }
    }
    if ((first & 0xFF) || *(u16 *)(record + 0x394) != *(u16 *)(base + 0xAC48)) {
        func_800AB620(argument);
        /* The dispatch may change this shared record: reread after it. */
        *(u16 *)(base + 0xAC48) = *(u16 *)(record + 0x394);
        return 1;
    }
    return 0;
}
