#include "common.h"

extern u8 D_800CA640[];
extern u8 *volatile actorPtr __asm__("0x1F8002F4");
extern u8 D_8010C32C[], D_8010C330[];
extern s32 func_8001E6B8(s32);
extern s32 func_8005C7A0(u32);
extern void func_8004B0F0(u8 *, u32, u32, u32);
extern void func_8004B278(void);
extern void func_80049A94(u8 *, u32, u32, s32, s32);
extern void func_8005B864(u8 *, u16);
extern void func_800AB620(s32);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);

/* Partial record/scratch views of existing storage; no data is defined here.
 * The scratch base is the PS1 hardware scratchpad, so a native port must remap
 * these addresses. Field meanings, helper APIs and the selector's gameplay
 * range are provisional; only the observed stores and reloads are asserted. */
void func_8008B700(u8 *record)
{
    switch (record[0x397]) {
    case 0: {
        u32 offset;
        u32 packed;
        u32 next;

        func_8005BA30(record, 0x68, 0);
        offset = record[0x392] * 12 + record[0x398] * 264;
        packed = *(u32 *)((u8 *)D_8010C330 + offset);
        record[0x3D1] = 0;
        next = record[0x397] + 1;
        record[0x3A4] = record[0x3AA];
        record[0x397] = next;
        record[0x3AC] = (packed >> 4) & 1;
        break;
    }
    case 1:
        func_8005BD1C(record);
        switch (record[0x390]) {
        case 0x19: {
            u32 offset;
            s32 nibble;
            s32 value;
            s32 facing;
            s32 extra;
            u8 *current;

            value = func_8001E6B8(8) + 0xA8;
            offset = record[0x392] * 12 + record[0x398] * 264;
            nibble = *(u32 *)((u8 *)D_8010C32C + offset) & 0xF;
            if (nibble >= 7) {
                value += (nibble - 7) * 8;
            }
            facing = (record[0x3AA] + func_8005C7A0(8)) & 0xFF;
            extra = func_8001E6B8(4) + 0x24;
            func_8004B0F0(record, facing, value, extra);
            current = actorPtr;
            *(u16 *)(current + 0x3BC) = 1;
            current = actorPtr;
            *(u8 *)(current + 0x3B2) = 0x10;
            func_800AB620(0x507);
            func_8004B278();
            *(u32 *)0x1F8002B0 = 7;
            func_80049A94(record, 1, 1, *(s16 *)0x1F8002B4,
                          *(s16 *)0x1F8002B6);
            break;
        }
        case 0x32:
            record[0x396] = 0x82;
            record[0x397] = 0;
            break;
        }
        break;
    }
    func_8005B864(record, (u16)((s32)D_800CA640[record[0x390]] * 52 / 6));
    *(u32 *)(record + 0x3A0) = 0;
}
