#include "common.h"

extern void func_8004B0F0(u8 *, u32, u32, u32);
extern void func_8004B414(void);
extern void func_8005C2AC(u8 *, u8, u8, u8, u8);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_800B1128(u32);
/* Existing aligned scratch storage, with no definitions or new storage.
 * The symbolic call-input views avoid measured constant-address hoisting. */
extern s16 scratchF0 __asm__("0x1F8000F0");
extern s16 scratchF4 __asm__("0x1F8000F4");

/* Four consumed arguments. Wrapped negation is interpreted as a signed PS1
 * word before /736; distance products and sums retain their low32 bits. */
void func_80049DF0(u8 *record, u32 first, u32 second, u32 third)
{
    u8 *other;
    u32 negated;
    u32 index;
    u32 offset;
    u32 dx;
    u32 dz;

    if (record[0x38D] == *(u8 *)0x1F8002A8) {
        other = *(u8 **)0x1F8002F4;
        negated = 0U - *(u32 *)(other + 12);
        func_8004B0F0(record, (u8)first, *(u32 *)(record + 0x3A0), (s32)negated / 736);
        *(u8 *)0x1F8002A9 = record[0x38D];
        func_8004B414();
    }
    {
        /* Capture before the scratch store, which may alias the record. */
        u32 id = record[0x38D];
        *(u16 *)0x1F8002EE = (u8)third + 2;
        *(u8 *)0x1F8002A9 = id;
    }
    ((u8 *)0x1F8002CF)[record[0x398]] = 0;
    record[0x3D1] = 0;
    func_8005C2AC(record, record[0x38E], (u8)second, (u8)first, record[0x3AC]);
    index = (u8)third;
    offset = index * 2;
    record[0x3A4] = func_8005B36C(scratchF0, scratchF4,
                                 *(s16 *)(offset + 0x1F800036), *(s16 *)(offset + 0x1F800066));
    dx = (u32)*(s16 *)0x1F8000F0 - (u32)*(s16 *)(offset + 0x1F800036);
    dz = (u32)*(s16 *)0x1F8000F4 - (u32)*(s16 *)(offset + 0x1F800066);
    *(u32 *)(record + 0x3A0) = func_800B1128(dx * dx + dz * dz) / (index + 1);
}
