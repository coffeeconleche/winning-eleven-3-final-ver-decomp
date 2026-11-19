#include "common.h"

extern s16 D_800E6AA2;
extern u32 D_800F0EE8, D_800F0EEC;
extern u16 D_800F0EF0, D_800F0EF2;
extern volatile u16 D_800CE738[];
extern void func_800C44A8(void *attributes);

void func_800A98E0(s32 input)
{
    u32 *attributes = &D_800F0EE8;
    volatile u16 *volume;
    u32 table;
    u32 high;

    D_800E6AA2 = input;
    *attributes = 0x800000U;
    /* Sign-extend the low halfword and scale by the table's two-byte stride. */
    high = (u32)input << 16;
    D_800F0EEC = 3;
    table = (u32)D_800CE738;
    volume = (volatile u16 *)((u32)((s32)high >> 15) + table);
    D_800F0EF0 = (u32)*volume << 7;
    /* The second channel reads the table entry again. */
    D_800F0EF2 = (u32)*volume << 7;
    func_800C44A8(attributes);
}
