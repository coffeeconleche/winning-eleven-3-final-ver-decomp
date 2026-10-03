#include "common.h"

/* Only the observed call arguments/order and byte write are established. */
extern void func_801BDE5C(s32);
extern s32 func_8006FA84(u8, u8);

void func_801BE744(void) {
    func_801BDE5C(2);
    func_8006FA84(20, 1);
    *(u8 *)0x1F8002A2 = 0x22;
}
