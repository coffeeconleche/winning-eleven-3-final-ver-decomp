#include "common.h"

extern u8 D_800FF748[];
extern u8 D_80108667, D_8010866A;
extern u16 D_800AD638;
extern void func_801BFB58(void);
/* Word-width caller views retain the observed argument words. The callees
 * narrow their byte/halfword fields; complete original prototypes are unknown. */
extern u32 func_801BD6A0(u32, u32);
extern void func_801A8540(s32, s32, u32, u32);
extern void func_801964F8(s32, s32, s32, s32, s32, s32, s32, s32, s32);
/* The first call supplies ten words, the second nine; the observed callee
 * consumes nine. This preserves that extra word, not a recovered variadic API. */
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32, ...);

void func_801BF0F4(void) {
    s32 origin = -48;
    u8 *base;
    s32 spacing;
    s32 row, yOffset, y, column, x;
    s32 code, limit;

    func_801BFB58();
    base = D_800FF748;
    if ((D_80108667 >> 6) & 1) {
        func_801964F8(0x40000000, 58, -161, 0, 354, 48, 96, 128, 4);
        origin = -50;
    }
    spacing = 15;
    if ((D_80108667 >> 6) & 1)
        spacing = 7;
    row = 0;
    if (row <= D_8010866A) {
        yOffset = 0;
        do {
            y = yOffset + origin;
            if (row >= 15)
                y += 6;
            column = 0;
            x = -157;
            for (; column < 16; column++) {
                u8 *entry = base + column;
                code = func_801BD6A0(entry[0xAB50], row);
                switch (code) {
                case 1:
                    func_801A8540(y, x, 1, 3);
                    break;
                case 2:
                    func_801A8540(y, x, 2, 3);
                    break;
                case 3:
                    func_801A8540(y, x, 3, 3);
                    break;
                }
                x += 22;
            }
            limit = base[0x8F22];
            /* 8F22 aliases the entry-limit byte. Keep this late reread before
             * incrementing row, preserving the measured load-delay scheduling
             * without emitting instructions or claiming volatile storage. */
            __asm__ volatile ("" : : "r"(limit));
            row++;
            yOffset += spacing;
        } while (row <= limit);
    }
    func_80196800(0x50000000, -156, D_800AD638 * 22 - 160,
                   80, 20, 160, 48, 0, 1, 4);
    func_80196800(0x70000000, -52, D_800AD638 * 22 - 160,
                   224, 20, 255, 170, 255, 3);
}
