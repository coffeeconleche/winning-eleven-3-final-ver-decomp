#include "common.h"

extern u8 D_800FF748[];
extern u8 D_800E7660[];
extern u8 D_8010A5D8[];
extern u8 D_8010A322, D_8010A368, D_8010A369, D_8010A400;
extern u8 D_800FB5AA, D_800FB5AB;
extern u16 D_8010A5A2;

extern s32 func_8004FBC4(s32);
extern void func_800B53D8(s32);
extern void func_8001F53C(void);
extern void func_8004FD14(s32);
extern void func_8001D14C(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_80081DEC(void);
extern void func_800171DC(void);

void func_80081C30(void)
{
    s32 side;
    s32 sub_idx;
    s32 slot;
    u8 *base;

    if (func_8004FBC4(0) == 0) {
        return;
    }

    *(u32 *)0x1F80032C = 0x400;
    func_800B53D8(0x400);

    D_8010A322 = 0;
    D_8010A369 = 0;
    D_8010A368 = 0;
    *(u8 *)0x1F8002C2 = 0;
    *(u8 *)0x1F8002A1 = 0;

    if (*(u16 *)0x1F800334 != 0) {
        base = D_800FF748;
        for (side = 0; side < 2; side++) {
            u8 pending = *(u8 *)(0x1F800334 + side);
            for (sub_idx = 0; sub_idx < (s32)pending; sub_idx++) {
                u8 out_id = D_8010A5D8[side * 3 + sub_idx];
                u8 in_id = D_800E7660[side * 3 + sub_idx];
                u8 *lineup = base + side * 22 + 0x8E9C;
                for (slot = 0; slot < 11; slot++) {
                    if (lineup[slot] == out_id) {
                        lineup[slot] = in_id;
                    }
                }
            }
        }
    }

    func_8001F53C();
    func_8004FD14(1);
    func_8001D14C(0x17, 0x41, 0x35, -0x26F0, -0x800, 0x48, 0xE0C, 0x1000, 0xE0C, 1);
    D_8010A400 = 0;
    func_80081DEC();

    *(u8 *)0x1F8001EC = 0;
    *(u8 *)0x1F8001E8 = 0;
    *(u8 *)0x1F8002CE = 1;
    D_8010A5A2 = 0;
    D_800FB5AB = 0;
    D_800FB5AA = 0;
    *(u8 *)0x1F8002E7 = 0;
    func_800171DC();
}
