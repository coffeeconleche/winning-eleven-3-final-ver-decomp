#include "common.h"

extern void func_800508C8(void);
/* Observed calls supply no new arguments. The older four-word forwarding
 * declarations for 2283C and 51810 do not establish complete native APIs. */
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern void func_80051810(void);
extern void func_800A2684(void);
extern void func_8004ED68(u32);
extern void func_80055974(void);
extern void func_800AB620(s32);
extern void func_8004F25C(void);
extern void func_800171C4(u32);
extern u8 D_800FF748[];

/* Partial PS1 scratch and record access views; no storage or volatility.
 * Field meanings, complete record bounds and return contract are unknown.
 * Calls may mutate these views, so preserve the loads after each call. */
#define scratch290 (*(s32 *)(scratch + 0x290))
#define scratch2E1 scratch[0x2E1]
#define scratch2C1 scratch[0x2C1]
#define scratch2AC scratch[0x2AC]
#define scratch04A (*(s16 *)(scratch + 0x04A))
#define scratch194 (*(u16 *)(scratch + 0x194))
#define scratch2A9 scratch[0x2A9]
#define scratch2F4 (*(s16 **)(scratch + 0x2F4))
#define scratch2C4 (*(s32 *)(scratch + 0x2C4))
#define scratch2C8 (*(s32 *)(scratch + 0x2C8))
#define scratch2FC scratch[0x2FC]
#define scratch2CC (*(s16 *)(scratch + 0x2CC))

void func_80076E7C(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *base;
    u8 *record;
    s32 step;
    s32 mode;

    func_800508C8();
    func_8002283C();
    func_8004A2D0();
    func_80051810();
    base = D_800FF748;
    /* Measured zero-instruction identity retains the original load order. */
    __asm__("" : "=r"(base) : "0"(base));
    step = scratch290 % 4;
    switch (step) {
    case 0:
        func_800A2684();
        /* fall through */
    case 1:
        func_8004ED68(step);
        break;
    case 2:
        func_80055974();
        break;
    }
    if (scratch2E1 != 5) {
        if (scratch2C1 == 0) {
            s32 position;
            record = base + (u8)((u32)scratch2AC % 24U) * 1000;
            position = scratch04A;
            if (record[0x399] ? -position >= 0x22E3 : position >= 0x22E3) {
                func_800AB620(0x501);
                scratch2C1 = 1;
                scratch194 = 300;
            }
        } else {
            s32 position;
            if (scratch194 != 0) {
                u32 index;
                scratch194--;
                index = scratch2A9;
                if (index != 0) {
                    record = base + (u8)(index % 24U) * 1000;
                    position = scratch2F4[1];
                    if (record[0x399] ? position > 0 : position < 0) {
                        func_800AB620(0x51C);
                        scratch194 = 0;
                    }
                }
            }
            position = scratch2F4[1];
            if (position < 0) {
                position = -position;
            }
            if (position < 0x1990) {
                scratch2C1 = 0;
                scratch194 = 0;
            }
        }
        func_8004F25C();
        if (scratch2C4 != 0 || scratch2C8 != 0) {
            scratch2CC = 0;
        } else {
            u32 index;
            s32 position;
            s16 *coordinates = scratch2F4;
            position = coordinates[1];
            if ((position < 0 ? -position : position) < 0x110A) {
                func_800171C4(10);
            } else if (scratch2FC != 0) {
                scratch2CC = 0;
            } else {
                index = scratch2A9;
                if (index != 0) {
                    record = base + (u8)(index % 24U) * 1000;
                    if (*(s32 *)(record + 0x3A0) == 0 ||
                        (record[0x399] ? position > 0 : position < 0)) {
                        scratch2CC++;
                    } else {
                        scratch2CC = 0;
                    }
                } else if (coordinates[2] >= -116) {
                    scratch2CC++;
                } else {
                    scratch2CC = 0;
                }
                if (scratch2CC > 128) {
                    func_8004F25C();
                    func_800171C4(10);
                }
            }
        }
    } else {
        mode = base[0xABDE];
        if (mode < 3 && mode != 0) {
            /* The resident word subtraction wraps modulo 2^32. */
            scratch2C8 = (s32)((u32)scratch2C8 - 1U);
            if (scratch2C8 <= 0) {
                func_800171C4(4);
            }
        }
    }
}
