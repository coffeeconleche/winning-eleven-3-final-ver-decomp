#include "common.h"

extern u8 D_801DA2F4;
extern u8 scratchMode __asm__("0x1F8002E1");
extern u8 scratchKey __asm__("0x1F8002E2");

/* These are measured caller word-argument views, not recovered prototypes.
 * The descriptor helper narrows individual fields internally; retain the
 * full signed coordinate words supplied here. Record/selector meanings are
 * not established. */
extern void func_8018E4AC(u32, u32, u32);
extern u8 *func_8001D004(u32);
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                        s32, s32, s32, s32, s32, s32, s32, s32);

void func_8019D23C(u32 mode)
{
    s32 y;
    s32 i;
    u32 key;
    u8 *record;

    func_8018E4AC(38, 49, 0);
    if (scratchMode == 1) {
        func_80193FB4(38, scratchKey + 0x3018, 0, 79, 1, 24, 0, 4096,
                     4096, 0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(39, 0x301D, 0, 79, 1, 24, 0, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 2, 1);
    } else {
        key = D_801DA2F4 + 0x3038;
        record = func_8001D004(key);
        /* Byte 1 is unsigned; the subtraction/division remain signed,
         * including truncation toward zero for a negative difference. */
        func_80193FB4(38, key, 0, (152 - (s32)record[1]) / 2, 0, 27, 0,
                     4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(39, 0x303F, 0, 0, 0, 27, 0, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 2, 1);
    }

    y = 4;
    switch ((u8)mode) {
    case 11:
        y = 8;
        /* Fall through to the same two-iteration sequence as mode 1. */
    case 1:
        i = 0;
        do {
            func_80193FB4(i + 40, i + 0x3047, 0, y, 0, 24, 0, 4096,
                         4096, 0, 0, 128, 128, 128, 0, 1, 1);
            func_80193FB4(i + 43, i + 0x3041, 0, y, 0, 25, 0, 4096,
                         4096, 0, 0, 128, 128, 128, 0, 2, 1);
            func_80193FB4(i + 46, 0x3040, 0, y, i * 44 - 24, 25, 0,
                         4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
            i++;
        } while (i < 2);
        break;
    case 2:
        i = 0;
        do {
            func_80193FB4(i + 40, i + 0x3049, 0, y, 0, 24, 0, 4096,
                         4096, 0, 0, 128, 128, 128, 0, 1, 1);
            func_80193FB4(i + 43, i + 0x3043, 0, y, 0, 25, 0, 4096,
                         4096, 0, 0, 128, 128, 128, 0, 2, 1);
            func_80193FB4(i + 46, 0x3040, 0, y, i * 34 - 40, 25, 0,
                         4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
            i++;
        } while (i < 3);
        break;
    case 13:
        func_80193FB4(40, 0x304C, 0, 8, -52, 24, 0, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 1, 1);
        func_80193FB4(43, 0x3046, 0, 4, 0, 25, 160, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 2, 1);
        func_80193FB4(46, 0x3040, 0, 8, -24, 25, 0, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 2, 1);
        break;
    }
}
