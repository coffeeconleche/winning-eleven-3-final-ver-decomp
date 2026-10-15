#include "common.h"

extern s16 scratchF8 __asm__("0x1F8000F8");
extern s16 scratchFC __asm__("0x1F8000FC");
extern s16 scratch100 __asm__("0x1F800100");
extern u32 func_8005BD1C(u8 *record);
extern void func_800479B8(u8 *record, u32 mode);
extern void func_8005B908(u8 *record);
extern s32 func_80052E68(u8 *record);

/* Partial record/scratch views and consumed helper arguments only; historical
 * field meanings and the return contract remain provisional. Helpers may
 * mutate the record and scratch storage, so later coordinate reads reload.
 * Signed halfwords widen to s32 before negation; -32768 becomes 32768 safely. */

void func_80028F98(u8 *record)
{
    s32 horizontal;

    record[0x3A7] = 1;
    record[0x3D1] = 2;
    func_8005BD1C(record);
    {
        s32 targetX = -0x3320;
        if (record[0x399] == 0) {
            targetX = 0x3320;
        }
        scratchF8 = targetX;
    }
    if (scratch100 < *(s16 *)(record + 6)) {
        scratchFC = 0x2100;
    } else {
        scratchFC = -0x2100;
    }
    func_800479B8(record, 1);
    func_8005B908(record);
    if ((u8)func_80052E68(record) == 0) {
        horizontal = *(s16 *)(record + 2);
        if (record[0x399] != 0) {
            if (-horizontal >= 0x32A0) {
                goto finish;
            }
            return;
        }
        if (horizontal >= 0x32A0) {
            goto finish;
        }
    } else {
finish:
        record[0x396] = 1;
        record[0x397] = 0;
    }
}
