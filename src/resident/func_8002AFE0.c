#include "common.h"

extern u8 D_800C6C69[];
extern u8 D_8010C32C[], D_8010C330[];
extern s32 func_8001E6B8(s32), func_8005C7A0(u32);
extern u32 func_8005B61C(u32,u32,u32,u32);

/* Partial views of existing actor/stat/scratch storage; no data is allocated.
 * The reverse lookup uses target-word address arithmetic, not C subtraction
 * before an array object. Native ports must translate the mapped addresses.
 * Two initialized real-value bindings and one empty record identity retain
 * measured allocation/branch layout. The identity has no memory clobber. */
u32 func_8002AFE0(u8 *actor, u32 bias)
{
    u8 *scratch;
    u8 *record = actor;
    u32 direction;
    s32 range;
    {
        register s32 amount __asm__("$16");
        s32 x, destination;
        u32 offset = record[0x392] * 12 + record[0x398] * 264;
        u32 packed = *(u32 *)((u8 *)D_8010C32C + offset);
        u32 lookup = (u32)D_800C6C69;
        u32 index = (packed >> 4) & 15;
        {
            register u32 stat __asm__("$2") = *(u8 *)(lookup - index);
            amount = (s32)(stat + bias);
        }
        scratch = (u8 *)0x1F800000;
        if (record[0x39B] != 0) {
            amount = (s32)((u32)amount + 8);
        }
        if (record[0x3AC] != ((*(u32 *)((u8 *)D_8010C330 + offset) >> 4) & 1)) {
            amount = (s32)((u32)amount + 4);
        }
        if (amount < 2) {
            amount = 2;
        } else if (amount >= 16) {
            amount = 16;
        }
        x = (s16)*(u16 *)(scratch + 0x036) + 32;
        if (record[0x399] != 0) {
            if (-x < 0x3320) {
                __asm__("" : "=r"(record) : "0"(record));
                goto fixed_destination;
            }
        } else {
            if (x < 0x3320) goto fixed_destination;
        }
        x = (s16)*(u16 *)(scratch + 0x036);
        if (record[0x399] == 0) {
            destination = x + 256;
        } else {
            destination = x - 256;
        }
        goto destination_ready;
    fixed_destination:
        destination = -0x3300;
        if (record[0x399] == 0) {
            destination = 0x3300;
        }
    destination_ready:
        if (*(s16 *)(record + 0x3C2) != 0 && func_8001E6B8(3) != 0) {
            s32 random = (s16)func_8005C7A0(128);
            *(s16 *)(record + 0x3C4) = func_8005C7A0((s16)((random * 2 + 1344) / 3));
        }
        {
            direction = func_8005B61C((s16)*(u16 *)(scratch + 0x036),(s16)*(u16 *)(scratch + 0x066),
                                         (s16)destination,*(s16 *)(record + 0x3C4));
            range = (s16)amount;
        }
    }
    {
        s32 argument = range;
        u32 savedDirection;
        s32 random;
        savedDirection = direction;
        random = (s16)func_8005C7A0(argument);
        savedDirection = (u8)savedDirection;
        savedDirection = savedDirection + random;
        return (u8)savedDirection;
    }
}
