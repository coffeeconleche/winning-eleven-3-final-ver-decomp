#include "common.h"

/* Native partial access views of existing mapped storage. Record extents,
 * field meanings and original formal/return types remain provisional. */
extern u8 D_800FF748[];
extern u8 D_8010A5A8[];
extern u8 D_8010591C, D_80105944, D_8010596C, D_80107FEC, D_8010C538;
extern u32 D_8010C330[][22][3];
typedef struct {
    u8 bytes[0x59D8];
    u8 flag59D8;
    u8 gap[0x64A4 - 0x59D9];
    u8 flag64A4;
} Base;
typedef struct {
    u8 bytes[10];
    u8 selector;
} Controls;
typedef struct {
    s16 pad, x, y, z;
    u8 bytes[0x3A4 - 8];
    u8 direction;
} Current;
typedef struct {
    u8 bytes[0x2AD];
    u8 index2AD;
    u8 gap0[0x2CF - 0x2AE];
    u8 side[2];
    u8 gap[0x2F4 - 0x2D1];
    Current *current;
} Scratch;
extern u8 scratch2AD __asm__("0x1F8002AD");
extern u8 scratch2AE __asm__("0x1F8002AE");
extern u8 scratch2A1 __asm__("0x1F8002A1");
extern u16 scratch334 __asm__("0x1F800334");
extern Current *scratch2F4 __asm__("0x1F8002F4");
extern s32 func_8004FBC4(s32);
extern void func_80098428(void), func_80089BD8(void), func_800729CC(void);
extern void func_800732B0(void);
extern void func_8004ED28(u32);
extern s32 func_8001E6B8(s32);
extern void func_800A71FC(void);
extern void func_8005BA30(u8 *, u32, u32);
extern void func_80078CE4(u8 *, u32);
extern u32 func_8005CE30(u32);
extern void func_800512B8(u8 *, u32);
extern void func_800204D8(void), func_80020C14(void), func_800171DC(void);

/* Both known callers supply no consumed arguments and ignore the result.
 * The no-argument 729CC view is supported through 21F28: incoming argument
 * registers are overwritten before use. Other declarations describe only
 * observed consumed words. Keep mixed-width stores and alias-driven reloads.
 * Three register bindings, the tied pointer identity and the volatile byte
 * read are measured compiler aids. The volatile view asserts no asynchronous
 * writer; it preserves the observed byte normalization. No new storage. */
void func_80079D5C(void)
{
    u32 state = D_8010C538;
    Controls *controls = (Controls *)D_8010A5A8;
    Base *base = (Base *)D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *record;
    u8 *current;
    u32 index;
    s32 i;
    s32 x;
    register s32 direction __asm__("a1");
    u8 *cursor;

    switch (state) {
    case 0:
        __asm__("" : "=r"(controls), "=r"(base), "=r"(scratch)
                         : "0"(controls), "1"(base), "2"(scratch));
        if (func_8004FBC4(0) != 0) {
            func_80098428();
            func_80089BD8();
            index = scratch2AD % 24;
            D_8010591C = 0;
            D_80105944 = 0;
            D_8010596C = 0;
            base->flag59D8 = 0;
            record = (u8 *)((u8)index * 1000 + (u32)base);
            {
                u32 side = record[0x398];
                u32 number = record[0x392];
                u8 *row = (u8 *)(side * 22 + (u32)base);
                u32 statusOffset;
                statusOffset = 0x88A5;
                if (*(row + statusOffset + number) >= 2U) {
                    record[0x3D1] = 0;
                    record[0] = 0;
                    func_800732B0();
                }
            }
            if (scratch334 != 0) {
                func_800729CC();
            }
            index = scratch2AE % 24;
            {
                u32 amount = 8;
                scratch2A1 = 1;
                record = (u8 *)((u8)index * 1000 + (u32)base);
                func_8004ED28(amount);
            }
            (*(u8 *)((u32)(record[0x398] + (u32)base) + 0x8ED6))++;
            current = (u8 *)scratch2F4;
            x = 0x28F0 - func_8001E6B8(0x15);
            if (record[0x399] != 0) {
                x = -x;
            }
            *(s16 *)(current + 2) = x;
            ((Scratch *)scratch)->current->y = -32;
            ((Scratch *)scratch)->current->z = 0;
            (*(u8 **)(scratch + 0x2F4))[0x3A4] = record[0x399] << 7;
            (*(u8 **)(scratch + 0x2F4))[0x396] = 0;
            (*(u8 **)(scratch + 0x2F4))[0x397] = 0;
            ((Scratch *)scratch)->side[record[0x398]] = 0;
            {
                u32 side = record[0x398];
                register u32 one __asm__("v1") = 1;
                ((Scratch *)scratch)->side[side ^ 1] = one;
            }
            {
                u32 nextState = D_8010C538;
                scratch[0x2AD] = 255;
                D_8010C538 = nextState + 1;
            }
        }
        break;
    case 1:
        D_80107FEC = 3;
        func_800A71FC();
        i = 0;
        {
            u32 first = 49;
            u32 second = 14;
            cursor = (u8 *)base + 0x7CB;
            do {
                i++;
                cursor[-0x4D] = first;
                cursor[-0x4C] = 0;
                cursor[-1] = second;
                cursor[0] = 0;
                cursor += 1000;
            } while (i < 22);
        }
        index = (u8)*(volatile u8 *)(scratch + 0x2AD) % 24;
        record = (u8 *)base + (u8)index * 1000;
        func_8005BA30(record, 47, 0);
        record[0x3AC] = (D_8010C330[record[0x398]][record[0x392]][0] >> 4) & 1;
        scratch[0x2A8] = record[0x38D];
        index = (*(u8 **)(scratch + 0x2F4))[0x3A4];
        {
            register u32 angle __asm__("v0") = index;
            if (record[0x3AC] == 0) {
                direction = angle - 4;
            } else {
                direction = angle + 4;
            }
        }
        func_80078CE4(record, (u8)direction);
        scratch[0x2AE] = func_8005CE30(record[0x38D]);
        func_800512B8(record, 5);
        func_800204D8();
        func_80020C14();
        scratch[0x309] = 1;
        *(s16 *)(scratch + 0x2EA) = 0x500;
        *(s16 *)(scratch + 0x2EC) = -0x200;
        {
            u32 selector = controls->selector;
            *(u16 *)(scratch + 0x2B8) = 0x7FFF;
            *(u16 *)(scratch + 0x294) = 0;
            *(u16 *)(scratch + 0x296) = 0;
            D_8010C538 = 0;
            base->flag64A4 = selector & 3;
        }
        func_800171DC();
        break;
    }
}
