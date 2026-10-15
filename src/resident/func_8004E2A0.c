#include "common.h"

/* Partial record and scratchpad access views, not complete historical APIs.
 * func_8004E410 returns a byte-canonical value in the word result register. */
extern void func_800512B8(u8 *, u32);
extern u32 func_8004E410(u8 *);
extern s32 func_8004E5A8(u32);
extern void func_800951C4(u8 *, u32, s32, u32);
extern s32 func_80052C6C(u8 *);
extern s32 func_8001E6B8(s32);

/* Masked phase differences are unsigned. The word product wraps before its
 * logical shift, so the operands are unsigned before multiplication. */
void func_8004E2A0(u8 *record)
{
    u8 direction;
    u32 adjustment;
    u8 *scratch = (u8 *)0x1F800000;
    s32 level;

    func_800512B8(record, 1);
    direction = func_8004E410(record);
    if (*(u32 *)0x1F8002B0 == 0xB) {
        u32 own;
        u32 reference;
        u32 magnitude;
        u32 delta;

        *(s16 *)0x1F80031C = 0xC;
        own = record[0x3A4];
        reference = (*(u8 **)0x1F8002F4)[0x3A4];
        magnitude = *(u32 *)(record + 0x3A0);
        delta = (own - reference) & 0xFF;
        adjustment = (delta < 0x81U ? magnitude * delta :
                      magnitude * ((reference - own) & 0xFF)) >> 9;
    } else {
        u32 own = record[0x3A4];
        u32 reference = (*(u8 **)0x1F8002F4)[0x3A4];
        u32 magnitude = *(u32 *)(record + 0x3A0);
        u32 delta = (own - reference) & 0xFF;

        adjustment = (delta < 0x81U ? magnitude * delta :
                      magnitude * ((reference - own) & 0xFF)) >> 8;
        *(s16 *)(scratch + 0x31C) = 0;
    }
    level = func_8004E5A8(direction);
    func_800951C4(record, direction, level, adjustment);
    *(u32 *)(scratch + 0x2B0) = 0xB;
    *(scratch + record[0x398] + 0x2CF) = 1;
    (*(u8 **)(scratch + 0x2F4))[0x3B0] = 2;
    (*(u8 **)(scratch + 0x2F4))[0x3B2] = 2;
    if ((func_80052C6C(record) & 0xFF) == 0) {
        record[0x3D0] = (u32)func_8001E6B8(4) + 4U;
        record[0x396] = 0xE;
        record[0x397] = 0x40;
    }
}
