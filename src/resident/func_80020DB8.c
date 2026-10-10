#include "common.h"

/* Scalar address views allocate no storage; scratch and global meanings remain
 * provisional. The known caller ignores the result; this void ABI view retains
 * the observed $v0 = 1 residue without recovering an original return contract. */
extern u8 scratch2E5 __asm__("0x1F8002E5");
extern u8 scratch2E4 __asm__("0x1F8002E4");
extern u8 D_80105D7C;
extern u8 D_80105DA4;
extern u8 D_80105DCC;

void func_80020DB8(void)
{
    if (scratch2E5 != 0) {
        u32 mode = scratch2E4;

        if (mode == 0) {
            goto firstOnly;
        }
        if (mode != 1) {
            return;
        }
    }
    D_80105D7C = 1;
    D_80105DA4 = 1;
    D_80105DCC = 1;
    return;

firstOnly:
    D_80105D7C = 1;
    D_80105DA4 = 0;
    D_80105DCC = 0;
}
