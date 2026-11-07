#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8005B36C(s16, s16, s16, s16);
extern s32 func_8004C39C(u8 *, s32);
extern s32 func_8004D7D4(u8 *);

#define CURRENT (*(u8 **)(scratch + 0x2F4))

/* Replay roster scanner: walks the 22 quarter records, filters each by the
 * commentary/flag bytes, then runs the phase handler selected by the
 * record's state byte; the camera arm chases the record with repeated
 * distance queries. The two asm statements emit no code: the first keeps
 * the far-selection constant out of the preceding call's delay slot, the
 * second stops the two selection tails from being threaded together. */
void func_8004C0B0(void)
{
    u8 *buf = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *p;
    u8 *q;
    u8 *p31;
    s32 i;
    s32 v;
    s32 r;
    s32 d;
    s32 s0v;

    if (*(u8 *)0x1F8002FC != 0) {
        return;
    }
    p = buf + 0x3E8;
    i = 0;
    q = buf + 0x792;
    for (; i < 0x16; i++, q += 0x3E8, p += 0x3E8) {
        if (p[0] == 0) {
            continue;
        }
        if (q[0x28] != 0) {
            continue;
        }
        if (q[-0x1D] == scratch[0x2A8]) {
            continue;
        }
        p31 = scratch + 2 * q[-0x11];
        if (q[-0x1D] == p31[0x31E] || q[-0x1D] == p31[0x31F] ||
            q[-0x1D] == scratch[0x3D1] || q[-0x1D] == scratch[0x3D2] || q[-0x1D] == 1 || q[-0x1D] == 0xC) {
            v = scratch[0x2A9];
            if (v == 0) {
                if (q[-0x1D] != scratch[0x2AC]) {
                    goto sw;
                }
            } else {
                if (q[-0x1D] == v) {
                    goto tag;
                }
                if ((scratch + q[-0x12])[0x2CF] != 0) {
                    goto sw;
                }
                continue;
            }
tag:
            if (CURRENT[0x3B0] != 0) {
                continue;
            }
sw:
            switch (q[0x27]) {
            case 1:
            case 2:
            case 4:
                if ((u8)func_8004C39C(p, 0x6E40) != 0) {
                    return;
                }
                continue;
            case 5:
                r = func_8005B36C(*(s16 *)(q - 0x3A8), *(s16 *)(q - 0x3A4),
                                  *(s16 *)(CURRENT + 2), *(s16 *)(CURRENT + 6));
                if (!((u8)(r - q[-6]) < 0x81)) {
                    r = func_8005B36C(*(s16 *)(q - 0x3A8), *(s16 *)(q - 0x3A4),
                                      *(s16 *)(CURRENT + 2), *(s16 *)(CURRENT + 6));
                    if (((q[-6] - r) & 0xFF) < 0x19) {
                        s0v = 0x6E40;
                    } else {
                        __asm__ volatile("	");
                        s0v = 0x1000;
                    }
                } else {
                    r = func_8005B36C(*(s16 *)(q - 0x3A8), *(s16 *)(q - 0x3A4),
                                      *(s16 *)(CURRENT + 2), *(s16 *)(CURRENT + 6));
                    if (((r - q[-6]) & 0xFF) < 0x19) {
                        s0v = 0x6E40;
                    } else {
                        s0v = 0x1000;
                        __asm__ volatile("	");
                    }
                }
                if ((u8)func_8004C39C(p, s0v) == 0) {
                    continue;
                }
                if (s0v == 0x1000) {
                    *(u16 *)(CURRENT + 2) = *(u16 *)(scratch + 0x36);
                    *(u16 *)(CURRENT + 4) = *(u16 *)(scratch + 0x4E);
                    *(u16 *)(CURRENT + 6) = *(u16 *)(scratch + 0x66);
                }
                CURRENT[0x3A4] = q[0];
                return;
            case 3:
                if ((u8)func_8004D7D4(p) != 0) {
                    return;
                }
                continue;
            }
        }
    }
}
