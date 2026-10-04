#include "common.h"
extern u8 D_801B0000[], D_80191908[], D_80193C88;
extern u32 D_801A3000[];
extern s32 func_8001E6B8(s32);
extern void func_8001BC30(void *);
/* Ordered access views preserve overwritten fields, not an MMIO assertion. */
#define BYTE(off) (*(volatile u8 *)(cursor + (off)))
#define WORD(off) (*(volatile u32 *)(cursor + (off)))
#define HALF(off) (*(volatile u16 *)(cursor + (off)))

/* Eight 1000-byte records; field meanings and complete helper types are unknown. */
void func_8018AE8C(void)
{
    /* Retail stores this unused pointer in a local slot; its purpose is unknown. */
    u8 *volatile unused = D_801B0000;
    u8 *record = D_80191908;
    u8 *cursor;
    u32 i = 0;
    u32 choice;
    s32 one = 1;
    s32 two = 2;
    register u32 scale __asm__("$19");
    /* Empty identities keep constants 1/2 ahead of scale/cursor setup; no code.
     * The scale binding and scoped initial-word binding preserve measured
     * allocation and keep 0x1000 from introducing an extra saved register. */
    __asm__ ("" : "=r"(one), "=r"(two) : "0"(one), "1"(two));
    scale = 0xD55;
    cursor = record + 0x3A6;
    do {
        BYTE(-0x19) = i + 24;
        record[0] = one;
        BYTE(-0x10) = 0;
        BYTE(-0xF) = 0;
        {
            s32 mode = D_80193C88;
            if (mode == one) goto modeOne;
            if (mode < 2) {
                if (mode == 0) goto modeZero;
                goto modeDefault;
            }
            if (mode == two) goto modeTwo;
            goto modeDefault;
        modeZero: choice = func_8001E6B8(4); goto modeDone;
        modeOne: choice = func_8001E6B8(4) + 4; goto modeDone;
        modeTwo: choice = func_8001E6B8(2) + 8; goto modeDone;
        modeDefault: choice = func_8001E6B8(2) + 10;
        modeDone:
            ;
        }
        *(u32 *)(cursor - 0x386) = D_801A3000[(u8)choice];
        func_8001BC30(record);
        {
            register u32 initial __asm__("$2") = 0x1000;
            WORD(-0x37A) = initial;
            WORD(-0x376) = initial;
            WORD(-0x372) = initial;
        }
        WORD(-0x376) = 0xE38;
        BYTE(2) = 0;
        BYTE(1) = 0;
        HALF(-0x3A4) = 0;
        HALF(-0x3A2) = 0;
        HALF(-0x3A0) = 0;
        WORD(-0x396) = 0;
        WORD(-0x39A) = 0;
        WORD(-0x39E) = 0;
        WORD(-0x37A) = scale;
        WORD(-0x372) = scale;
        BYTE(0x2C) = 0;
        BYTE(-0xA) = two;
        BYTE(0x2B) = 0;
        BYTE(6) = 0;
        BYTE(-1) = 0;
        BYTE(0) = 12;
        i++;
        record += 1000;
        cursor += 1000;
    } while ((u8)i < 8);
}
