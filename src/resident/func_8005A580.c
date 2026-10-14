#include "common.h"

/* Views of existing storage, not complete recovered objects. Bank/table
 * extents, pointer/alias/alignment contracts and gameplay meaning are unknown. */
extern u8 D_8010C1D8[];
extern u8 D_800FF748[];
extern void func_8005A72C(u8 *);

/* Known callers discard the result; this void view does not establish the
 * historical return contract. The loops use a measured 1,000-byte stride. */
void func_8005A580(void)
{
    u8 *state = D_8010C1D8;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *bank = D_800FF748;
    u8 *record = bank + 2000;
    u8 i;
    s32 mode;
    u32 first;
    u32 second;
    s32 difference;

    for (i = 0; i < 10; i++) {
        func_8005A72C(record);
        record += 1000;
    }
    record = bank + 13000;
    for (i = 0; i < 10; i++) {
        func_8005A72C(record);
        record += 1000;
    }

    scratch[0x30B] = 1;
    scratch[4] = 0;
    state[3] = 0;
    scratch[0xA] = 0;
    scratch[0xB] = 0;
    scratch[9] = 0;
    state[4] = 0;
    scratch[8] = 0;
    scratch[6] = 0;
    scratch[7] = 0;
    state[0x2D] = 255;
    state[0xF] = 0;
    *(u32 *)(state + 0x20) = 0;
    *(u32 *)(state + 0x24) = 0;
    *(u32 *)(state + 0x28) = 0;
    state[0x14] = 0;
    state[0x15] = 0;
    *(u16 *)(state + 0x3A) >>= 1;

    /* Keep the signed switch default edge emitted by the matching compiler,
     * even though the loaded byte cannot select a negative case. */
    mode = scratch[0x2DF];
    switch (mode) {
    case 0:
        state[0x12] = 0;
        state[0x11] = 0;
        break;
    case 1:
    case 2:
    case 3:
        first = bank[0x8EC8];
        second = bank[0x8EC9];
        /* Byte subtraction and its negation are bounded to [-255, 255]. */
        difference = (s32)first - (s32)second;
        if (difference < 0) {
            difference = -difference;
        }
        if (difference >= 6) {
            if (first > second) {
                state[0x12] = 1;
            } else {
                state[0x11] = 1;
            }
        }
        if (bank[0x8EC8] < 2) {
            state[0x11] = 1;
        }
        if (bank[0x8EC9] < 2) {
            state[0x12] = 1;
        }
        break;
    }
}
