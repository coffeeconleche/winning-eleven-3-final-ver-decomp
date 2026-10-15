#include "common.h"

extern s16 D_800E6C28[];
extern s16 D_800E6C48[];
extern u16 D_80105936;
extern u16 D_80105938;
extern u8 D_8010591C;

/* Fixed, disjoint resident halfwords and scratch byte: declaration/access views,
 * not recovered complete layouts. Signed narrowing follows PS1 two's-complement
 * low-half interpretation; a native backend must preserve it explicitly.
 * The sole known caller passes 16 and discards the return residue. */
void func_8004F994(u32 count)
{
    s16 *state = D_800E6C28;
    u16 value;
    u16 timer;

    switch (*state) {
    case 0:
        value = D_80105936 + 600;
        D_80105936 = value;
        D_80105938 += 600;
        if ((s16)value >= 4096) {
            D_80105938 = 4096;
            D_80105936 = 4096;
            D_800E6C48[0] = count & 255;
            {
                s16 next = *state;
                next += 1;
                *state = next;
            }
        }
        break;
    case 1:
        timer = (u16)D_800E6C48[0] - 1U;
        D_800E6C48[0] = (s16)timer;
        if (((u32)timer << 16) == 0) {
            *state = *state + 1;
        }
        break;
    case 2:
        value = D_80105936 - 600;
        D_80105936 = value;
        D_80105938 -= 600;
        if ((s16)value <= 0) {
            *(u8 *)0x1F8002A1 = 1;
            D_8010591C = 0;
        }
        break;
    }
}
