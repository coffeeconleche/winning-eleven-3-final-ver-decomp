#include "common.h"

/* No-storage scratch views. Counter/mode/flag meanings and complete helper
 * API and wrapper return contract remain provisional. Counter arithmetic is
 * word-sized, then narrowed and interpreted as a signed halfword. */
extern u16 D_1F8002E8 __asm__("0x1F8002E8");
extern u8 D_1F800298 __asm__("0x1F800298");
extern u8 D_1F80029B __asm__("0x1F80029B");
extern u8 D_800E7804;
extern u8 D_8010C2A2;
extern u8 D_8010A322;
extern void func_8004FAC0(u32, u32);

void func_80076938(void)
{
    u32 counter = D_1F8002E8 + 1;
    D_1F8002E8 = (u16)counter;
    if ((s16)counter == 5) {
        D_800E7804 = 1;
        D_1F800298 = 3;
        D_8010C2A2 = 14;
    } else {
        func_8004FAC0(0, 0);
        D_1F80029B = 0;
        D_8010A322 = 1;
    }
}
