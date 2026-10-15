#include "types.h"

extern u8 D_800FF748[];
extern u8 scratch305[] __asm__("0x1F800305");

void func_80068378(u32 selector, u32 mode)
{
    u8 *table = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 state;
    register s8 active __asm__("v0");
    s32 side;

    if ((mode & 0xFF) == 0) {
        side = selector & 0xFF;
        state = scratch[0x303 + side];
        active = 1;
    } else {
        side = selector & 0xFF;
        state = scratch[0x301 + side];
        active = 2;
    }
    scratch305[side] = active;
    switch (state & 0xFF) {
    case 0 ... 6:
        *((u8 *)((u32)scratch + (selector & 0xFF)) + 0x326) = 0;
        break;
    case 7:
        if ((scratch[0x29A] & 0xFF) == 1) {
            s32 index;
            u8 *row;
            u32 selected = selector & 0xFF;
            *((u8 *)((u32)scratch + selected) + 0x326) = 50;
            row = table + 2000;
            if (table[0xB68] != selected) row = table + 13000;
            index = 0;
            {
                u32 reset = 6;
                row += 0x3E3;
                do {
                    index++;
                    row[-1] = reset;
                    row[0] = 0;
                    row += 1000;
                } while ((u32)(index & 0xFF) < 10);
            }
        }
        break;
    }
}
