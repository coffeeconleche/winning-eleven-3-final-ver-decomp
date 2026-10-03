#include "common.h"

extern u8 *func_8001D004(u16);

void func_801B8450(s32 selection) {
    u8 *record = func_8001D004(0x30F1);
    u8 value = 0x5B;

    /* The scratchpad word is read after the descriptor lookup. */
    if (*(u32 *)0x1F800290 & 0x10) {
        value = 0x15;
    }
    if (selection < 0) {
        record[0xA] = 0x15;
        record[0x16] = 0x15;
        record[0x22] = 0x15;
        record[0x2E] = 0x15;
    } else if (selection < 2) {
        record[0xA] = value;
        record[0x16] = value;
    } else {
        record[0x22] = value;
        record[0x2E] = value;
    }
}
