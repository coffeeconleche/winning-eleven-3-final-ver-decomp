#include "common.h"

/* The four incoming words model unchanged call-site registers, not a
 * recovered original helper API. Record meaning, complete layout, and the
 * wrapper return contract remain provisional. */
extern void func_80021F28(u32, u32, u32, u32);
extern void func_8001BC30(u8 *);
extern u8 D_800FFB30[];

void func_800729CC(u32 first, u32 second, u32 third, u32 fourth)
{
    u8 *record;
    s32 i;

    func_80021F28(first, second, third, fourth);
    record = D_800FFB30;
    for (i = 0; i < 22; i++, record += 1000) {
        if (record[0] != 0) {
            func_8001BC30(record);
        }
    }
}
