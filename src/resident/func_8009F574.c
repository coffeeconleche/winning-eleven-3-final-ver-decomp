#include "common.h"

extern u8 D_800FFB56[];
extern u32 func_8005B36C(s32 first, s32 second, s32 third, s32 fourth);

/* Partial record/scratch access and word-call views only. The helper consumes
 * signed low halves; its API, the layouts, and return residue are provisional. */
void func_8009F574(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 count = 0;
    u8 *cursor = D_800FFB56;
    u8 *other;
    u16 first;
    u16 second;
    s32 argument;
    u32 value;
    u32 reread;
    s32 delta;

    do {
        /* Matching access view: retain the unsigned physical read separately
         * from the signed read below; this is not recovered volatility. */
        first = *(volatile u16 *)(cursor - 0x24);
        second = *(u16 *)(cursor - 0x20);
        argument = *(s16 *)(cursor - 0x24);
        *(u16 *)(cursor + 0x3AE) = 0;
        *(u16 *)(cursor + 0x396) = first;
        *(u16 *)(cursor + 0x398) = second;
        other = *(u8 **)(scratch + 0x2F4);
        value = func_8005B36C(argument, *(s16 *)(cursor - 0x20),
                            *(s16 *)(other + 2), *(s16 *)(other + 6));
        cursor[0x37E] = value;
        /* Matching access view of the original post-store physical reread. */
        reread = *(volatile u8 *)(cursor + 0x37E);
        cursor[0x384] = value;
        delta = 448 - reread;
        *(u16 *)cursor = (delta % 256) * 16;
        count++;
        cursor += 1000;
    } while ((u8)count < 22);
}
