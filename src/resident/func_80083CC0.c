#include "common.h"

extern void func_800A7F04(void);
extern s32 func_800A8B24(void);
/* The original passes the freshly loaded pointer although this body does not
 * consume it. This is a call-register view, not a recovered complete API. */
extern void func_800989B4(u8 *);
extern void func_800AB620(s32);
extern u8 D_8010A400;
extern u8 D_800E7DE9;
/* Numeric extern access views allocate no storage or linker symbols. */
extern u8 *scratch2F4 __asm__("0x1F8002F4");

/* Partial aligned scratch/record accesses; original return API is unknown. */
void func_80083CC0(void)
{
    s32 magnitude;
    u32 side;

    func_800A7F04();
    magnitude = *(s16 *)(scratch2F4 + 2);
    if (magnitude < 0) {
        magnitude = -magnitude;
    }
    if ((u16)magnitude >= 0x333A && func_800A8B24() != 0) {
        func_800989B4(scratch2F4);
        side = D_8010A400;
        D_800E7DE9 = 1;
        side &= 1;
        if (((u8 *)0x1F8002DB)[side] < 99) {
            /* Only this read is qualified, retaining its original physical
             * reread; it is not a hardware/MMIO or table-ownership claim. */
            ((u8 *)0x1F8002DB)[side] = ((volatile u8 *)0x1F8002DB)[side] + 1;
        }
        func_800AB620(0x521);
        func_800AB620(0x522);
    }
}
