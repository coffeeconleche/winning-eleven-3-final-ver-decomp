#include "common.h"

extern u8 D_800E6B88, D_800E6AEA;
extern void func_800AB698(s32 command);
extern void func_800ABD5C(s32 command);
extern void func_800ABE7C(s32 command);

void func_800AB620(s32 command)
{
    if (D_800E6B88 == 2) {
        D_800E6AEA = 1;
        if (command < 0x100) {
            func_800AB698(command);
        } else if (command < 0x500) {
            func_800ABD5C(command);
        } else if (command <= 0xEFFF) {
            func_800ABE7C(command);
        }
        D_800E6AEA = 0;
    }
}
