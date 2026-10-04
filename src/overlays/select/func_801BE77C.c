#include "common.h"

extern u8 D_800FF748[];
extern u16 D_800AD638;
extern void func_801BFB58(void);
extern void func_801A89F0(s32, s32, s32, s32, s32, s32, s32, s32);
/* Word-width caller ABI view, not a recovered variadic prototype: the first
 * observed call supplies ten words, the second nine. The callee consumes only
 * nine; the extra final word in the first call remains preserved here. */
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32, ...);

void func_801BE77C(void) {
    u8 *base = D_800FF748;
    u8 *record;
    s32 i;
    s32 y;
    s32 eight, two, seven;

    func_801BFB58();
    i = 0;
    eight = 8;
    two = 2;
    seven = 7;
    y = -157;
    for (; i < 16; i++) {
        /* Only the measured 36-byte record access view is known. */
        record = base + (*(u8 *)((u32)base + i + 0xAB50) * 36 + 0x8F24);
        func_801A89F0(-51, y, 22, record[5], eight, two, seven, two);
        func_801A89F0(-23, y, 22, record[7], eight, two, seven, two);
        func_801A89F0(5, y, 22, record[6], eight, two, seven, two);
        func_801A89F0(33, y, 22, *(u16 *)(record + 8), eight, two, seven, two);
        func_801A89F0(61, y, 22, *(u16 *)(record + 10), eight, two, seven, two);
        func_801A89F0(89, y, 22, record[4], eight, two, seven, two);
        func_801A89F0(117, y, 22, record[15], eight, two, seven, two);
        {
            s32 slot = 145;
            register s32 oldY asm("$5") = y;
            register s32 span asm("$6") = 22;
            u32 value;
            /* Keep the three argument setups before the byte load and y
             * increment. These scoped bindings and empty tie emit no code. */
            __asm__("" : "=r"(slot) : "0"(slot), "r"(oldY), "r"(span));
            value = record[16];
            y += 22;
            func_801A89F0(slot, oldY, span, value, eight, two, seven, two);
        }
    }
    func_80196800(0x50000000, -156, D_800AD638 * 22 - 160,
                 80, 20, 160, 48, 0, 1, 4);
    /* Preserve the halfword reread after the first callback. */
    func_80196800(0x60000000, -52, D_800AD638 * 22 - 160,
                 224, 20, 48, 48, 96, 2);
}
