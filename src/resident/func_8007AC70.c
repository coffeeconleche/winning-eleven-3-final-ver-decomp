#include "common.h"

/* Partial scratch access view; field meanings and complete layout are unknown. */
typedef struct {
    u8 unknown0[0x29A];
    u8 mode29A;
    u8 unknown29B[0x2F4 - 0x29B];
    u8 *record2F4;
} Resident7AC70Scratch;

extern u8 scratch2A1 __asm__("0x1F8002A1");
extern u8 scratch333 __asm__("0x1F800333");
extern u16 scratch334 __asm__("0x1F800334");
/* Observed callback argument views, not complete original APIs. */
extern u32 func_8004FB68(u32);
extern void func_800477A0(u8 *, u32);
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern void func_80051810(void);
extern void func_8004ED68(u32);
extern void func_800A484C(void);

/* Record meaning and the original return contract remain provisional. */
void func_8007AC70(void)
{
    Resident7AC70Scratch *scratch = (Resident7AC70Scratch *)0x1F800000;
    u8 mode;

    if (func_8004FB68(0) != 0) {
        scratch2A1 = 1;
        if (scratch334 != 0) {
            scratch333 = 1;
        }
    }
    func_800477A0(scratch->record2F4, 2);
    func_8002283C();
    func_8004A2D0();
    func_80051810();
    func_8004ED68(0);
    func_8004ED68(1);
    mode = scratch->mode29A;
    if (mode == 2 || mode == 4) {
        func_800A484C();
    }
}
