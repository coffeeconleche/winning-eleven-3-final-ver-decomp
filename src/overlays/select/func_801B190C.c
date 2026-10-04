#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A320;
extern u8 D_801D8A8A, D_801D8A8B, D_801D8A8C, D_801D8A8D;
extern u8 D_801D8A8E, D_801D8A8F, D_801DAD84, D_801D8A51;
extern u16 D_801D8A82, D_801D8A84, D_801D8A86, D_801D8A88;
extern s16 D_801DA5D2;
extern u8 D_801D8735;
extern u8 D_801DA2F0;
extern u16 D_8010A5A4;
/* Caller-side ABI views, not recovered original prototypes. E538 does not
 * consume its observed zero argument; 38E0 returns a byte load in v0, retained
 * as a word here until the measured byte store (or discarded in state 20). */
extern void func_8018E538(u32);
extern void func_801B30FC(void);
extern u32 func_801B38E0(u32, s16);
extern s32 func_8006F07C(u8);
extern s32 func_8006F0DC(u8, u8);
extern u16 func_801B04B4(u8);
extern s32 func_801B29CC(u8, u8);

s32 func_801B190C(void) {
    u8 state = D_8010A320;
    u8 *base = D_800FF748;
    u32 flags;
    u32 next;
    u32 result;
    u8 four;

    switch (state) {
    case 0:
        D_801D8A8A = 0x5F;
        D_801D8A8B = 0xFF;
        D_801D8A8D = 0x60;
        flags = D_801D8A8E;
        four = 4;
        D_801D8A82 = 0;
        D_801D8A84 = 0;
        D_801D8A86 = 0;
        D_801D8A88 = 0;
        D_801D8A8F = 0;
        D_801D8A8C = 0;
        D_801DAD84 = four;
        D_801D8A51 = 0;
        /* Combine the captured flag byte only after the ordered reset stores. */
        D_801D8A8E = (flags & 0x61) | 0x21;
        func_8018E538(0);
        *(u8 *)0x1F8002A2 = four;
        func_801B30FC();
        {
            /* Keep this increment in retail v0; the empty input prevents its
             * store tail merging with the different state-1 callback path. */
            register u32 counter __asm__("$2") = base[0xABD8];
            counter++;
            __asm__ volatile ("" : : "r"(counter));
            base[0xABD8] = counter;
        }
        return 0;
    case 1:
        result = func_801B38E0(2, D_801DA5D2);
        next = base[0xABD8];
        D_801D8735 = result;
        /* Retain the captured counter through the byte store, then increment.
         * This identity tie emits no instructions or memory accesses. */
        __asm__ volatile ("" : "=r"(next) : "0"(next));
        base[0xABD8] = next + 1;
        return 0;
    case 2:
        if (func_8006F07C(16)) {
            D_801D8A8F = 1;
            base[0xABD8] = 20;
        }
        return 0;
    case 20:
        func_801B38E0(2, D_801DA5D2);
        D_8010A5A4 = func_801B04B4(0);
        if (func_801B29CC(0, 1) == 2) {
            D_801DA2F0 = 0;
            D_801D8A8F = 0;
            base[0xABD8] = 30;
        }
        return 0;
    case 30:
        if (func_8006F0DC(64, 0)) {
            return 2;
        }
        break;
    }
    return 0;
}
