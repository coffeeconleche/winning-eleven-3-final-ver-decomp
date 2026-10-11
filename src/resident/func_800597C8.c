#include "common.h"

/* Word-register views; complete original helper APIs remain provisional. */
extern s32 func_8001E6B8(s32);
extern void func_800AB620(u32);

/* The low incoming byte selects the branch; no return contract is claimed. */
void func_800597C8(u32 mode)
{
    u32 command;

    if ((u8)mode != 0) {
        command = (u32)func_8001E6B8(3) + 0xE07;
    } else {
        command = (u32)func_8001E6B8(5) + 0xDEA;
    }
    func_800AB620(command);
}
