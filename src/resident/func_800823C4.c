#include "common.h"

/* Private call-site views only: complete helper APIs, pointed-to layouts,
 * global meanings and return contract remain provisional. Calls without
 * explicit arguments preserve measured register residues, not a historical
 * API. 2283C forwards residues into 66A94/66BD8; the inspected prefixes
 * overwrite incoming argument words before use. 51810 forwards a0-a3 through
 * some switch arms; nested APIs and pre-use definitions are not fully audited.
 * 83CC0 coverage is wrapper-only. A native port must explicitly reconcile
 * forwarded arguments and unresolved helper APIs. */
extern s32 func_8004FB68(u32);
extern u8 *func_8001D004(u32);
extern void func_800477A0(u8 *, u32);
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern void func_800A8F3C(void);
extern void func_80083CC0(void);
extern void func_80051810(void);
extern u8 D_800E6D60;
extern u8 D_800E7DE9;
extern u32 D_1F800290 __asm__("0x1F800290");
extern u8 *D_1F8002F4 __asm__("0x1F8002F4");

void func_800823C4(void)
{
    u8 *base;
    u32 offset;
    u32 value;
    if (func_8004FB68(0) != 0) {
        if (D_800E6D60 != 255) {
            base = func_8001D004(63);
            offset = D_800E6D60 * 12;
            offset += (u32)base;
            value = 0x5B;
            if (D_1F800290 & 4) {
                value = 0x5D;
            }
            *(u8 *)(offset + 10) = value;
        }
        func_800477A0(D_1F8002F4, 2);
        func_8002283C();
        func_8004A2D0();
        func_800A8F3C();
        if (D_800E7DE9 == 255) {
            func_80083CC0();
        }
        func_80051810();
    }
}
