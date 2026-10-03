#include "common.h"

extern u8 D_80105804, D_8010587C, D_801058A4, D_801058CC;
extern u8 D_80108667, D_801D8C70[];
extern s16 D_80105798, D_801057C0, D_801057E8;
extern s32 D_80105D00;
extern void func_801BDE5C(u32);
extern void func_801BFB24(void);
/* Word ABI views retain the already-bounded arguments and supplied return
 * bits; the callback consumes low bytes and returns only two measured bits. */
extern u32 func_801AA778(u32, u32);

void func_801BF35C(void) {
    s32 row, column;
    u8 *start, *entry;
    u32 first;

    func_801BDE5C(3);
    D_80105804 = 1;
    D_8010587C = 1;
    D_801058A4 = 1;
    D_801058CC = 1;
    D_80105D00 = 2;
    D_80105798 = -17;
    D_801057C0 = -17;
    D_801057E8 = -17;
    *(u8 *)0x1F8002A2 = 37;
    func_801BFB24();
    if ((D_80108667 >> 6) & 1) {
        start = D_801D8C70;
        for (row = 0; row < 16; row++, start += 16) {
            column = 0;
            entry = start;
            for (; column < 16; column++, entry++) {
                first = func_801AA778(row, column);
                *entry = (first << 4) | func_801AA778(row + 16, column);
            }
        }
    }
}
