#include "common.h"

extern u8 D_8010C1EC;
extern u8 D_8010C1ED;
extern u32 D_8010C200;

/* Partial byte/halfword record views preserve capture-before-store behavior
 * and the ordered global clears. The incoming low byte is stored as a full
 * halfword. Known callers ignore the result; this void ABI view retains the
 * captured unsigned halfword in $v0. Original declarations, complete layouts,
 * ownership, scratch-table extent and selector domain remain provisional. */
void func_800667E8(u8 *record, u32 value)
{
    u16 captured = ((u16 *)0x1F800012)[record[0x398]];

    *(u16 *)(record + 0x3C2) = (u8)value;
    *(u16 *)(record + 0x3D4) = captured;
    D_8010C1EC = 0;
    D_8010C1ED = 0;
    D_8010C200 = 0;
}
