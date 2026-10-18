#include "common.h"

/* Native scratchpad access views allocate no storage. The halfword at 0x294
 * is incremented before the branch and reread around the packet writes and
 * helper calls. Its original field name and complete layout are unknown. */
extern u8 *func_8001D004(u32);
extern s32 func_8006FB90(u32, u32, u32);

/* Scratch meanings, record layout and complete helper APIs remain provisional.
 * The half-frame value stays in the measured $4 register. The empty input use
 * keeps the scratch base live in the entry block so its lui is materialized
 * there; retail then fills the counter-branch delay slot with the returned
 * pointer copy instead of the base address. Native mapping/alignment and a
 * valid returned packet pointer are required. The defined C domain has
 * (u16)value >= 2: division by a zero half-duration faults in retail rather
 * than producing a host result. No replacement guard is introduced. */
void func_8004FEE8(u32 value)
{
    u8 *p = func_8001D004(0x32);
    register u16 half __asm__("$4") = (u16)value >> 1;
    u8 *scratch = (u8 *)0x1F800000;
    u16 n = (*(u16 *)(scratch + 0x294)) + 1;

    (*(u16 *)(scratch + 0x294)) = n;
    __asm__("" : : "r"(scratch));
    if (n != 0 && n < half) {
        p[13] = 0;
        p[1] = n * 72 / half;
    }
    if (*(u16 *)(scratch + 0x294) >= half &&
        *(u16 *)(scratch + 0x294) < (u16)value) {
        p[1] = 0x48;
        p[13] = (*(u16 *)(scratch + 0x294) - half) * 72 / half;
    }
    if (*(u16 *)(scratch + 0x294) >= (u16)value) {
        p[1] = 0x48;
        p[13] = 0x48;
    }
    func_8006FB90(0, 6, (u16)((*(u16 *)(scratch + 0x294) >> 2) % 3) * 16 + 40);
    func_8006FB90(0, 7, (2 - (u16)((*(u16 *)(scratch + 0x294) >> 2) % 3)) * 16 + 40);
}
