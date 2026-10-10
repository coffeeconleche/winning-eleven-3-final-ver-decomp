#include "common.h"

/* Four words model the unchanged incoming $a0-$a3 at the first call;
 * they do not establish the complete original helper API. */
extern void func_80066A94(u32, u32, u32, u32);
extern u8 *func_8001D004(u32);
extern void func_80022AAC(u8 *);
extern void func_8005BD64(void);
extern u8 D_800FFB30[];

/* Record meaning, complete layouts and the return contract remain unknown. */
void func_8002283C(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    u8 *record;
    s32 i;

    func_80066A94(arg0, arg1, arg2, arg3);
    func_8001D004(7)[1] = 0;
    func_8001D004(8)[1] = 0;
    record = D_800FFB30;
    for (i = 0; i < 22; i++, record += 1000) {
        if (record[0] != 0) {
            func_80022AAC(record);
        }
    }
    func_8005BD64();
}
