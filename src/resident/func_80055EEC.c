#include "common.h"

extern u8 D_800FF748[];
extern u16 D_800C7D3C[];
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80057AE4(u8 *record, u32 first, u32 second);
extern void func_800AB620(s32 value);

/* Partial record/table views retain existing storage and callback rereads.
 * Historical layouts and helper APIs remain provisional. The shifted test
 * uses unsigned bits to retain lowword behavior; native code must resolve
 * record allocations. Empty pointer identities emit no instructions and have
 * no memory clobbers. */
void func_80055EEC(u8 *input)
{
    u8 *record = input;
    u8 *base = D_800FF748;
    u32 side;
    s32 position;
    s32 oriented;

    __asm__("" : "=r"(base) : "0"(base));
    side = record[0x399];
    __asm__("" : "=r"(record) : "0"(record));
    position = *(s16 *)(record + 2);
    oriented = -position;

    if (side == 0) {
        oriented = position;
    }
    if (((s16)oriented < 0x23E3 || func_8001E6B8(2) != 0 ||
         func_80057AE4(record, 0, 1) == 0) &&
        (s32)((u32)oriented << 16) > 0 && func_8001E6B8(3) == 0 &&
        (func_8001E6B8(2) != 0 || func_80057AE4(record, 0, 0) == 0)) {
        func_800AB620(D_800C7D3C[base[0xAC6B] & 3]);
        base[0xAC6B] += 1;
    }
}
