#include "common.h"

/* Word-register/record access views; complete helper APIs remain unknown. */
extern void func_800AB620(u32);
extern s32 func_8001E6B8(s32);
extern u32 func_80057AE4(u8 *, u32, u32);

/* Record meaning and the original return contract remain provisional. */
void func_800570F0(u8 *record)
{
    u32 command;

    func_800AB620(0x11);
    if (func_8001E6B8(2) != 0) {
        if (func_80057AE4(record, 0, 1) != 0) {
            return;
        }
    }
    if (func_8001E6B8(3) != 0) {
        command = 0xCDF;
    } else {
        command = 0xCE0;
    }
    func_800AB620(command);
}
