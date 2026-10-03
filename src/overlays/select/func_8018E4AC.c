#include "common.h"

extern u8 D_800FF748[];

void func_8018E4AC(u8 first, u8 last, u8 state) {
    u8 *slot;
    s32 i;
    s32 end;

    i = first;
    end = last;
    slot = D_800FF748;
    if (i <= end) {
        slot += i * 40;
        do {
            slot[0x5DC4] = state;
            i++;
            slot += 40;
        } while (i <= end);
    }
}
