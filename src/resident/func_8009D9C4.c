#include "types.h"

typedef struct {
    u16 unknown0, value2, unknown4, value6;
    u8 unknown8[0x38D - 8];
    u8 key38D;
    u8 unknown38E[0x3BC - 0x38E];
    u16 value3BC, value3BE;
    u8 unknown3C0[0x3E2 - 0x3C0];
    u8 value3E2, value3E3;
} Resident9E244View;
extern u32 func_8009E244(Resident9E244View *);
extern void func_8005E510(u8 *);
extern void func_8005E104(u8 *);
extern void func_8009EF68(u8 *);
extern void func_80068FC0(u8 *, u32, u32);
extern s32 abs(s32);

/* Partial views of existing scratch/record storage. Complete native layouts,
 * allocation bounds and helper declarations remain provisional. */
void func_8009D9C4(u8 *record)
{
    u32 identifier = record[0x38D];
    u8 *scratch;
    s32 x;
    s32 magnitude;
    u8 side;
    s32 wrapped;
    u32 remainder;
    u8 resetMode;
    u32 offset;
    s32 first;
    u32 second;

    scratch = (u8 *)0x1F800000;
    if (identifier == *(u8 *)0x1F8002A9) {
        record[0x3E2] = 13;
        record[0x3E3] = 0;
        func_8009E244((Resident9E244View *)record);
        return;
    }
    if (*(u8 *)(0x1F8002CF + record[0x398]) == 1) {
        resetMode = identifier == *(u8 *)(0x1F80031E + record[0x399] * 2);
        if (resetMode) {
            resetMode = 12;
            record[0x3E2] = resetMode;
            record[0x3E3] = 0;
        }
        x = *(s16 *)(record + 2);
        magnitude = abs(x);
        if (magnitude < 0x22E3) goto reset;
        magnitude = *(s16 *)(record + 6);
        if (magnitude < 0) magnitude = -magnitude;
        if (magnitude >= 0xFF4) goto reset;
        if (record[0x399] != 0) {
            if (x < 0) goto check_side;
            goto reset;
        } else if (x <= 0) goto reset;
check_side:
        side = record[0x399];
        if ((side != 0 || *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) < 0x21E3) &&
            (side != 1 || *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) >= -0x21E2))
            goto reset;
        if (scratch[0x2A9] == 0) goto continuation;
reset:
        record[0x3E2] = 12;
        record[0x3E3] = 0;
        return;
    }
continuation:
    offset = record[0x399] * 2;
    if (record[0x38D] == (scratch + offset)[0x31E] &&
        scratch[0x2A9] == 0 && record[0x39A] != 0) {
        if ((s16)*(u16 *)(scratch + 0x4E) >= -255) {
            wrapped = *(s32 *)(*(u8 **)(scratch + 0x2F4) + 0xC);
            /* Machine negation wraps: INT_MIN remains negative here. */
            if (wrapped < 0) wrapped = (s32)(0U - (u32)wrapped);
            if (wrapped < 0x1700) func_8005E510(record);
            else goto alternate;
        } else {
alternate:
            func_8005E104(record);
        }
        goto save_position;
    }
    offset = record[0x399] * 2;
    identifier = record[0x38D];
    if (identifier == (scratch + offset)[0x31F]) {
        remainder = (u8)(identifier % 22U);
        if (remainder != *(s32 *)(scratch + 0x290) % 22) {
            if (record[0x396] == 7) return;
save_position:
            *(u16 *)(record + 0x3BC) = *(u16 *)(record + 2);
            *(u16 *)(record + 0x3BE) = *(u16 *)(record + 6);
            return;
        }
    }
    func_8009EF68(record);
    /* Both unsigned captures precede sign extension and the consuming call. */
    first = *(u16 *)(scratch + 0xF8);
    second = *(u16 *)(scratch + 0xFC);
    first = (s16)first;
    /* Empty identity preserves first extension before the second extension. */
    __asm__("" : "=r"(first) : "0"(first));
    func_80068FC0(record, first, (s16)second);
}
