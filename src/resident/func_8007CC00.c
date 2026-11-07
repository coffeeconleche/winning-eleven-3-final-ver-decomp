#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801054B6;
extern void func_800500B0();
extern void func_8005BD1C(u8 *);
extern void func_8005BA30(u8 *, s32, s32);
extern void func_800AE534(s32);

/* Replay quarter router: picks the roster quarter record from the replay
 * minute, then advances its phase state machine. The volatile pads mirror
 * the original's reserved frame slots and are never written; the asm
 * statements emit no code and only pin each roster-row second load beside
 * the first so both precede the row multiply chain. Each arm keeps its
 * own locals so the arms' register allocation stays independent. */
void func_8007CC00(void)
{
    u8 *buf = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *r0 = buf + 0x59D8;
    u8 *r1;
    s32 a0;
    s32 n;
    s32 n2;
    s32 n3;
    s32 n4;
    s32 n5;
    s32 n6;
    u8 *n2b;
    u8 *n2c;
    s32 n7;
    volatile s32 pad;
    volatile s32 pad2;

    r1 = buf + 1000 * (*(u8 *)0x1F8002AD % 24);
    switch (D_801054B6) {
    case 0:
        r0[0x3B0] = 0;
        r0[0x3B1] = 0;
        r0[0x396]++;
        func_800500B0(0, 0x1E8, 1, 0x1E9);
        break;
    case 1:
        n = r0[0x3B0] + 1;
        r0[0x3B0] = n;
        if ((u8)n >= 0x15) {
            goto tick;
        }
        break;
    case 2:
        func_8005BD1C(r0);
        if (r0[0x390] >= 0x17) {
            *(u16 *)(scratch + 0x294) = 0x28;
        } else {
            *(u16 *)(scratch + 0x294) = 0;
        }
        if (r0[0x390] == 0x17) {
            n2 = *(u8 *)(scratch + 0x2AF);
            if (n2 != 2 || r0[0x3B1] != 0) {
                a0 = 2;
            } else {
                a0 = 1;
            }
            func_800500B0(a0, 0x1E8, 1, 0x1E9);
            func_800AE534(0);
        }
        if (r0[0x390] == 0x22) {
            if (r0[0x3B1] != 0 || (n2b = (u8 *)((n3 = r1[0x398], n4 = ({ s32 tt; __asm__ volatile("	" : "=r"(tt) : "0"(*(u8 *)(r1 + 0x392))); tt; }), n3 * 22) + (u32)buf + 0x88A5), n2b[n4]) != 2) {
                *(u16 *)(scratch + 0x294) = 0x11D;
                r0[0x396] = 0xFF;
            } else {
                n7 = r0[0x396];
                r0[0x3B0] = 0;
                r0[0x396] = n7 + 1;
            }
        }
        break;
    case 3:
        n = r0[0x3B0] + 1;
        r0[0x3B0] = n;
        if ((u8)n >= 0x29) {
            goto tick;
        }
        break;
    case 4:
        func_8005BA30(r0, r0[0x38E], (u8)(r0[0x390] - 1));
        if (r0[0x390] == 0x17) {
            func_800500B0(0, 0x1E8, 1, 0x1E9);
        }
        if (r0[0x390] == 0xE) {
            if (r0[0x3B1] != 0) {
                goto tick;
            } else if ((n2c = (u8 *)((n5 = r1[0x398], n6 = ({ s32 tt; __asm__ volatile("	" : "=r"(tt) : "0"(*(u8 *)(r1 + 0x392))); tt; }), n5 * 22) + (u32)buf + 0x88A5), n2c[n6]) != 2) {
                goto tick;
            } else {
                r0[0x3B1] = r0[0x3B1] + 1;
                r0[0x396] = 2;
            }
        }
        break;
    }
    return;
tick:
    r0[0x396]++;
}
