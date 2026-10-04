#include "common.h"

extern u8 D_800FF748[];
extern u16 D_8010A394;
extern u8 D_8010A392;
extern u8 D_8010865D;
extern u32 func_80057AE4(void *, u32, u32);
extern void func_800AB620(s32);
extern void func_8005A1F0(u8, u16);
extern s32 func_8001E6B8(s32);

/* Timer/counter fields and the helpers' full types remain unidentified. */
void func_8018FB8C(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *base = D_800FF748;
    {
        u32 timer = D_8010A394;
        u32 stage = D_8010A392;
        timer++;
        D_8010A394 = timer;
        timer = (u16)timer;
        if (timer == (u8)stage * 30 + 15 && (u8)stage < 11) {
            register u32 one __asm__("$5") = 1;
            register u32 zero __asm__("$6") = 0;
            u32 selector = D_8010865D;
            u32 next;
            u8 *row;
            /* Argument bindings and empty inputs preserve the original call setup;
             * they emit no instructions. */
            __asm__("" : : "r"(one), "r"(zero), "r"(selector));
            next = stage + 1;
            D_8010A392 = next;
            {
                u32 offset = selector * 11000 + 1000;
                row = base + offset;
            }
            func_80057AE4(row + (10 - (u8)stage) * 1000, one, zero);
        }
    }
    if (*(u16 *)(base + 0xAC4C) == 360) {
        func_800AB620(0x107C);
        func_8005A1F0((scratch + (base[0x8F15] ^ 1))[0x2DD], 0xFD6);
        func_800AB620(0x107D);
        base[0xAC4A] = 0;
    }
    {
        u32 raw = base[0xAC4A];
        u32 timer2 = *(u16 *)(base + 0xAC4C);
        u32 stage2;
        stage2 = (u8)raw;
        if (timer2 == stage2 * 30 + 390) {
            if (stage2 < 11) {
                register u32 one __asm__("$5") = 1;
                register u32 zero __asm__("$6") = 0;
                u32 next;
                u32 offset;
                u32 selector;
                u8 *row;
                __asm__("" : : "r"(one), "r"(zero));
                next = raw + 1;
                offset = stage2 * 1000;
                selector = base[0x8F15];
                base[0xAC4A] = next;
                {
                    u32 bank = (selector ^ 1) * 11000 + 1000;
                    row = base + bank;
                }
                /* Keep the bank pointer distinct from the counter offset. */
                __asm__("" : "=r"(row) : "0"(row));
                func_80057AE4(row + offset, one, zero);
                timer2 = *(u16 *)(base + 0xAC4C);
            }
        }
        if (timer2 == 780) {
            s32 value;
            if ((base[0x8F1F] & 0xCF) == 0x40 && (base[0x8F22] >> 4) == 3)
                value = func_8001E6B8(3) + 0xC95;
            else value = 0x107E;
            func_800AB620(value);
        }
    }
}
