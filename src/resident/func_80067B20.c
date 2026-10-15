#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801002B0;
extern u8 D_8010C1DF;
extern u8 D_8010C1E0;
extern u16 D_8010C212;
extern void func_8005A580(void);
extern s32 func_8005CE30(u32);

void func_80067B20(void)
{
    /* Native scratchpad/table views; complete object layouts remain unknown. */
    u8 *scratch = (u8 *)0x1F800000;
    u8 *bank = D_800FF748;
    u8 value;
    u8 selector;
    u8 *row;
    u8 *current;
    u8 side;
    s32 x;
    register s32 ax __asm__("v0");
    s32 x2;
    s32 x3;
    register s32 ax2 __asm__("a0");
    register s32 ax3 __asm__("v1");
    s32 z;
    register s32 result __asm__("v0");

    if (D_8010C212 != 0) {
        D_8010C212--;
    }
    value = *(u8 *)0x1F8002CF;
    if (D_8010C1DF != value) {
        D_8010C1DF = value;
        func_8005A580();
    }
    value = *(u8 *)0x1F8002D0;
    if (D_8010C1E0 != value) {
        D_8010C1E0 = value;
        func_8005A580();
    }
    selector = *(u8 *)0x1F8002A9;
    if (selector == 0) {
        row = bank + 2000;
        if (*(u8 *)(0x1F8002CFU + D_801002B0) == 0) {
            row = bank + 13000;
        }
    } else {
        row = bank + ((func_8005CE30(selector) & 255) * 1000 + 1000);
    }
    x = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2);
    /* Each absolute value starts with s16, so even -32768 safely widens. */
    ax = x;
    if (x < 0) {
        ax = -ax;
    }
    if (ax >= 2304 &&
        (((side = row[0x399]) == 0 && x > 0) || (side == 1 && x < 0))) {
        scratch[0x30B] = 0;
        return;
    }
    current = *(u8 **)(scratch + 0x2F4);
    x2 = *(s16 *)(current + 2);
    ax2 = x2;
    if (x2 < 0) {
        ax2 = -ax2;
    }
    if (ax2 < 2305) {
        result = 1;
        goto store;
    }
    z = *(s16 *)(current + 6);
    if (z < 0) {
        z = -z;
    }
    if (z >= 3767) {
        result = ax2 < 7267;
        if (result == 0) {
            result = 4;
            goto store;
        }
    }
    /* A measured zero-instruction identity on the used scratchpad base. */
    __asm__("" : "=r"(scratch) : "0"(scratch));
    x3 = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2);
    ax3 = x3;
    if (x3 < 0) {
        ax3 = -ax3;
    }
    if (ax3 < 5745) {
        result = 2;
        goto store;
    }
    result = ax3 < 8162;
    if (result) {
        result = 3;
        goto store;
    }
    result = 5;
store:
    scratch[0x30B] = result;
}
