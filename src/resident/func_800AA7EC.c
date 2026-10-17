#include "common.h"

extern u16 D_800E6A90;
extern u32 D_800E6BCC;
extern volatile u16 D_800E6B84;
extern u16 D_800E6B54;
extern s16 D_800E6A98;
extern volatile u32 D_800E6A94;
extern u8 D_800E6BD8[];
extern u16 D_800E6B86;
extern u8 D_8010A5D7[];
extern u16 D_800CE7B8[];

void func_800AA7EC(void)
{
    u16 value;
    s16 index;
    s16 next;
    s32 i;
    u16 *walk;
    u16 current;

    if (D_800E6A90 == 2001) {
        D_800E6BCC = D_800E6A90;
        D_800E6B84 = 0x70;
        D_800E6B54 = 0;
        D_800E6A90 = 0;
    }
    index = D_800E6A98;
    value = D_800CE7B8[index];
    if (value != 0) {
        if (D_800E6B84 == 0) {
            D_800E6B84 = 0x70;
            next = index + 1;
            D_800E6A98 = next;
            D_800E6BCC = value;
            D_800E6B54 = 0;
            D_800CE7B8[index] = 0;
            if (next >= 0x20) {
                D_800E6A98 = 0;
            }
        }
    } else {
        if (D_800E6BD8[0] == 1) {
            u32 command;

            if (D_800E6A94 != 0) {
                command = D_800E6A94;
                D_800E6B84 = 0x70;
                D_800E6B54 = 0;
                D_800E6A94 = 0;
                D_800E6BCC = command;
            }
        }
        if (D_800E6B84 == 0) {
            u32 command;

            if (D_800E6A94 != 0) {
                command = D_800E6A94;
                D_800E6B84 = 0x70;
                D_800E6B54 = 0;
                D_800E6A94 = 0;
                D_800E6BCC = command;
            }
        }
        if (D_800E6B84 == 0) {
            if (D_800E6A90 != 0) {
                D_800E6BCC = D_800E6A90;
                D_800E6B84 = 0x70;
                D_800E6B54 = 0;
                D_800E6A90 = 0;
            }
        }
    }
    D_800E6B86 = 0;
    for (i = 0, walk = D_800CE7B8; i < 0x18; i++) {
        current = *walk;
        walk++;
        if (current != 0) {
            D_800E6B86 = D_800E6B86 + 1;
        }
    }
    if (D_8010A5D7[0] == 1) {
        D_800E6B86 = D_800E6B86 + 1;
    }
    if (D_800E6B84 != 0) {
        D_800E6B86 = D_800E6B86 + 1;
    }
}
