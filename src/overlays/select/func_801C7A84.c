#include "common.h"

typedef struct {
    s16 half[4];
    u8 colors[4][3];
} RectView;
/* Only the first RGB triplet is used here. The array also covers
 * the descriptor prefix shared with func_80196E1C. */
typedef struct {
    s16 half[6];
    u8 colors[3][3];
} TriangleView;

extern u8 D_801DA5C8, D_801D8B17, D_801D8DFE, D_801D8DEC, D_801D8DBE, D_801DA330;
extern s16 D_801D8DEE, D_801D8DF0, D_801DA5D2;
extern u16 D_800AD638;
extern u8 *D_801D5984;
extern s16 D_8018D824[];
extern s8 D_8018D8AC[];
extern u8 D_800FF748[], D_800F1018[], D_800F0420[], D_800E78A8[];
extern void func_80196378(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801C9A18(u32, u32, u32, u32);
extern void func_800B3FB8(void *, void *, u32);
extern void func_801C5ED8(u32, s32, s32, s32, s32, u32);
extern void func_80196A60(s32, volatile u16 *, u32);
extern void func_80196C98(s32, volatile u16 *, u32);
extern void func_801C96DC(void), func_801C86B4(void);
extern u16 func_8018E5B8(u16, s32);

#define PTR(base, offset) ((u8 *)((u32)(base)+(u32)(offset)))

/* PS1 matching implementation. The text path writes through the caller's
 * incoming s1. The empty capture describes its compiler-generated save
 * at rect + 76 bytes. A native port needs that incoming pointer as an
 * explicit input. */
void func_801C7A84(void)
{
    RectView rect;
    TriangleView triangle;
    s32 i;
    register s32 native_s0 __asm__("$16");
    register s32 selected __asm__("$18");

    s32 quotient;
    u32 mode;
    register u32 one __asm__("$2");
    register u8 *scratch __asm__("$18")=(u8 *)0x1F800000;
    register RectView *rectptr __asm__("$20")=&rect;
    TriangleView *triangle_ptr;
    TriangleView *tp;
    register s32 native_s1 __asm__("$17");
    /* Keep both descriptor addresses live through the mode dispatch. */
    __asm__ ("" : "=r"(rectptr) : "0"(rectptr));
    triangle_ptr = &triangle;
    mode = D_801DA5C8;
    one = 1;

    __asm__ volatile ("" : "=r"(triangle_ptr) : "0"(triangle_ptr), "r"(rectptr), "r"(scratch), "r"(mode));

    if (mode == one) {
        s32 texture_cursor;
        __asm__("" : "=r"(native_s1) : "m"(*(const u32 *)((u32)&rect+76U)));
        for (i = 0; i < 31; i++) {
            {
                s32 divided = i/5;
                s32 sign = i >> 31;
                register s32 half __asm__("$3")=divided+sign;
                __asm__("" : "=r"(half) : "0"(half), "r"(native_s1), "r"(sign));
                native_s1 = half-sign;
                __asm__("" : "=r"(native_s1) : "0"(native_s1));
            }
            selected = native_s1;
            {
                register s32 fives __asm__("$2")=selected*5;
                __asm__("" : "=r"(fives) : "0"(fives));
                native_s1 = i-fives;
            }
            __asm__ ("" : "=r"(native_s1) : "0"(native_s1));
            func_80196378(0, selected*18-61, native_s1*18-44, 8, 16, i*8, 80, 23, 8, 2);
        }
        i = 31;
        texture_cursor = 0;
        for (; i < 36; i++) {
            {
                s32 divided = i/5;
                s32 sign = i >> 31;
                register s32 half __asm__("$3")=divided+sign;
                __asm__("" : "=r"(half) : "0"(half), "r"(native_s1), "r"(sign));
                native_s1 = half-sign;
                __asm__("" : "=r"(native_s1) : "0"(native_s1));
            }
            selected = native_s1;
            {
                register s32 fives __asm__("$2")=selected*5;
                __asm__("" : "=r"(fives) : "0"(fives));
                native_s1 = i-fives;
            }
            __asm__ ("" : "=r"(native_s1) : "0"(native_s1));
            func_80196378(0, selected*18-61, native_s1*18-44, 8, 16, texture_cursor, 96, 23, 8, 2);
            texture_cursor += 8;
        }
        func_80196378(0, 65, -8, 8, 16, 40, 96, 23, 8, 2);
        func_80196378(0, 65, 28, 8, 16, 48, 96, 23, 8, 2);
        /* The next two loops split the same signed quotient into a high
         * part and a sign correction. Keeping their RTL values distinct
         * reproduces the legacy compiler's frame and register lifetimes. */
        i = 40;
        texture_cursor = 56;
        for (; i < 45; i++) {
            {
                register s32 sign __asm__("$2")=i>>31;
                register s32 half __asm__("$3")=i/5+sign;
                {
                    s32 correction = ((s32)((u32)i & 0x80000000U) >> 31);
                    __asm__("" : "=r"(half) : "0"(half), "r"(native_s1), "r"(correction));
                    native_s1 = half-correction;
                }
                __asm__("" : "=r"(native_s1) : "0"(native_s1));
            }
            selected = native_s1;
            {
                register s32 fives __asm__("$2")=selected*5;
                __asm__("" : "=r"(fives) : "0"(fives));
                native_s1 = i-fives;
            }
            __asm__ ("" : "=r"(native_s1) : "0"(native_s1));
            func_80196378(0, selected*18-61, native_s1*18-44, 8, 16, texture_cursor, 96, 23, 8, 2);
            texture_cursor += 8;
        }
        func_80196378(0, 101, -44, 8, 16, 96, 96, 23, 8, 2);
        func_80196378(0, 101, -8, 8, 16, 136, 112, 23, 8, 2);
        func_80196378(0, 101, 28, 8, 16, 104, 96, 23, 8, 2);
        i = 50;
        texture_cursor = 144;
        for (; i < 59; i++) {
            {
                register s32 sign __asm__("$2")=i>>31;
                register s32 half __asm__("$3")=i/5+sign;
                {
                    s32 correction = ((s32)((u32)i & 0x80000000U) >> 31);
                    __asm__("" : "=r"(half) : "0"(half), "r"(native_s1), "r"(correction));
                    native_s1 = half-correction;
                }
                __asm__("" : "=r"(native_s1) : "0"(native_s1));
            }
            selected = native_s1;
            {
                register s32 fives __asm__("$2")=selected*5;
                __asm__("" : "=r"(fives) : "0"(fives));
                native_s1 = i-fives;
            }
            __asm__ ("" : "=r"(native_s1) : "0"(native_s1));
            func_80196378(0, selected*18-61, native_s1*18-44, 8, 16, texture_cursor, 112, 23, 8, 2);
            texture_cursor += 8;
        }
        func_80196378(0, 155, -44, 6, 16, 96, 16, 23, 8, 2);
        func_80196378(0, 155, -22, 8, 16, 112, 96, 23, 8, 2);
        func_80196378(0, 155, -4, 8, 16, 120, 96, 23, 8, 2);
        func_80196378(0, 151, 14, 16, 16, 32, 80, 22, 56, 2);
        func_80196378(0, 139, 28, 24, 16, 216, 112, 23, 98, 2);
    } else {
        {
            u8 ch = D_801D5984[0];
            register u32 textIndex __asm__("$19");
            __asm__("" : "=r"(native_s1) : "m"(*(const u32 *)((u32)&rect + 76U)), "r"(ch) : "$19");
            textIndex = 0;
            *(u8 *)native_s1 = ch;
            if (ch != 0) {
                s16 *positions = D_8018D824;
                do {
                    func_801C9A18(*(u8 *)native_s1, *positions, *(s8 *)PTR(D_8018D8AC, textIndex), 0);
                    {
                        u32 page = scratch[0x29D];
                        u8 *drawBuffer = PTR(D_800F1018, page*20);
                        func_800B3FB8(PTR(scratch, 0x15C), drawBuffer, 2);
                    }
                    textIndex++;
                    positions = (s16 *)PTR(positions, 2);
                    ch = *PTR(D_801D5984, textIndex);
                    *(u8 *)native_s1 = ch;
                }
                while (ch != 0);
            }
        }
        {
            register s32 modeArg __asm__("$4")=0;
            register s32 xArg __asm__("$5")=152;
            register s32 yArg __asm__("$6")=8;
            register s32 widthArg __asm__("$7")=16;
            __asm__ volatile ("" : "=r"(modeArg), "=r"(xArg), "=r"(yArg), "=r"(widthArg)
            : "0"(modeArg), "1"(xArg), "2"(yArg), "3"(widthArg));
            native_s1 = 16;
            func_80196378(modeArg, xArg, yArg, widthArg, native_s1, 32, 80, 22, 56, 2);
        }
        func_80196378(0, 139, 28, 24, native_s1, 232, 64, 23, 98, 2);
    }
    {
        s32 bar_layer;
        native_s1 = 17;
        bar_layer = 4;
        func_80196800(0, -112, -95, 162, native_s1, 32, 32, 32, bar_layer);
        func_80196800(0, -115, -97, 162, native_s1, 0, 0, 0, bar_layer);
    }
    {
        register u32 loadedWidth __asm__("$2")=D_800AD638;
        register u32 shiftedWidth __asm__("$3");
        u32 yRaw;
        __asm__ volatile ("" : "=r"(loadedWidth) : "0"(loadedWidth));
        shiftedWidth = loadedWidth*16;
        __asm__ volatile ("" : "=r"(shiftedWidth) : "0"(shiftedWidth) : "memory");
        yRaw = shiftedWidth-74;
        if (D_801D8B17 == 0) {
            register s32 modeArg __asm__("$4")=1;
            register s32 xArg __asm__("$5")=-163;
            register s32 yArg __asm__("$6");
            register s32 rightArg __asm__("$7");
            s32 bottom;
            yArg = (s16)yRaw;
            rightArg = -100;
            bottom = (s16)(shiftedWidth-58);
            __asm__ volatile ("" : : "r"(shiftedWidth), "r"(bottom));
            func_801C5ED8(modeArg, xArg, yArg, rightArg, bottom, 0);
        } else {
            register s32 alternateMode __asm__("$4")=0;
            if (D_801D8DFE != 0) {
                s32 x = D_801D8DEE, y = D_801D8DF0;
                s32 right = (s16)(x+D_801D8DEC);
                s32 bottom = (s16)(y+D_801D8DBE);
                func_801C5ED8(alternateMode, x, y, right, bottom, 0);
            }
        }
    }
    {
        register s32 rect_i __asm__("$19");
        s32 blue;
        __asm__ volatile ("" : : "r"(rectptr) : "memory");
        rect_i = 0;
        selected = 88;
        native_s1 = 20;
        blue = 252;
        rectptr->half[0] = -200;
        rectptr->half[1] = -120;
        rectptr->half[2] = 400;
        rectptr->half[3] = 120;
        rectptr->colors[1][0] = 88;
        rectptr->colors[0][0] = 88;
        rectptr->colors[1][1] = 20;
        rectptr->colors[0][1] = 20;
        rectptr->colors[1][2] = 252;
        rectptr->colors[0][2] = 252;
        rectptr->colors[3][2] = 0;
        rectptr->colors[2][2] = 0;
        rectptr->colors[3][1] = 0;
        rectptr->colors[2][1] = 0;
        rectptr->colors[3][0] = 0;
        rectptr->colors[2][0] = 0;
        for (; rect_i < 2; rect_i++) {
            register s32 rectMode __asm__("$4")=0;
            if (rect_i != 0) {
                func_80196A60(rectMode, (volatile u16 *)rectptr, 6);
            } else {
                rectptr->half[1] = 0;
                rectptr->colors[3][0] = selected;
                rectptr->colors[2][0] = selected;
                rectptr->colors[3][1] = native_s1;
                rectptr->colors[2][1] = native_s1;
                rectptr->colors[3][2] = blue;
                rectptr->colors[2][2] = blue;
                rectptr->colors[1][2] = 0;
                rectptr->colors[0][2] = 0;
                rectptr->colors[1][1] = 0;
                rectptr->colors[0][1] = 0;
                rectptr->colors[1][0] = 0;
                rectptr->colors[0][0] = 0;
                func_80196A60(rectMode, (volatile u16 *)rectptr, 6);
            }
        }
    }
    i = 0;
    func_801C96DC();
    {
        register s32 digitcursor __asm__("$21");
        register s32 glyphHeight __asm__("$30")=8;
        register s32 glyphPage __asm__("$23");
        register s32 glyphLayer __asm__("$22");
        func_801C86B4();
        glyphPage = 9;
        glyphLayer = 5;
        __asm__ volatile ("" : : "r"(glyphHeight), "r"(glyphPage), "r"(glyphLayer), "r"(i));
        digitcursor = 0;
        for (; i < 11; i++) {
            {
                u8 *base = D_800FF748;
                register s32 raw_selection __asm__("$2");
                u32 team;
                u32 row;
                raw_selection = D_801DA5D2;
                team = D_801DA330;
                selected = raw_selection+i;
                row = team*22;
                row += (u32)base;
                row += 0x8AEA;
                row += (u32)selected;
                {
                    u32 index = *((u8 *)row);
                    register s32 coefficient __asm__("$3");
                    register s32 digit __asm__("$17");
                    register s32 sign __asm__("$2");
                    register s32 half __asm__("$3");
                    signed long long product;
                    s32 high;
                    __asm__("" : : "r"(index) : "$3");
                    /* Signed division by ten using the product's high word. */
                    coefficient = 0x66660000;
                    __asm__("" : "=r"(coefficient) : "0"(coefficient), "r"(index));
                    digit = D_800F0420[index];
                    __asm__("" : "=r"(digit) : "0"(digit), "r"(coefficient));
                    coefficient |= 0x6667;
                    product = (signed long long)digit*coefficient;
                    sign = digit >> 31;
                    __asm__("" : "=h"(high) : "x"(product));
                    half = high >> 2;

                    quotient = half-sign;
                    native_s1 = digit;
                }
            }
            if (quotient != 0) {
                native_s0 = digitcursor+0xFFB8;
                func_80196378(0, 0xFF99, native_s0, 16, 8, 128, quotient*8+128, glyphPage, 29, glyphLayer);
                func_80196378(0, 0xFFA2, native_s0, 16, 8, 128, (native_s1-quotient*10)*8+128, glyphPage, 29, glyphLayer);
            } else {
                func_80196378(0, 0xFF9E, digitcursor+0xFFB8, 16, 8, 128, native_s1*8+128, glyphPage, 29, glyphLayer);
            }
            __asm__("" : : "r"(native_s1));
            {
                register s32 glyphMode __asm__("$4")=0;
                register s32 glyphX __asm__("$5")=0xFF9D;
                register s32 glyphY __asm__("$6")=0xFFBE;
                register s32 glyphWidth __asm__("$7");
                u32 team;
                u32 row;
                register u32 mappedIndex __asm__("$2");
                __asm__ volatile ("" : "=r"(glyphY) : "0"(glyphY), "r"(glyphMode), "r"(glyphX));
                glyphY = digitcursor+glyphY;
                glyphWidth = 16;
                __asm__ volatile ("" : : "r"(glyphWidth), "r"(glyphY));
                team = D_801DA330;
                __asm__ ("" : "=r"(digitcursor) : "0"(digitcursor), "r"(team), "r"(D_800FF748));
                digitcursor += 16;
                row = team*22;
                row += (u32)D_800FF748;
                row += 0x8AEA;
                row += (u32)selected;
                mappedIndex = *((u8 *)row);
                {
                    register s32 digit __asm__("$17")=D_800E78A8[mappedIndex];
                    func_80196378(glyphMode, glyphX, glyphY, glyphWidth, 8, digit*16, 32, glyphPage, 12, glyphLayer);
                    __asm__("" : : "r"(digit));
                }
            }
        }
    }
    i = (u8)func_8018E5B8(0x100, 4);
    tp = triangle_ptr;
    tp->colors[0][0] = i >> 2;
    tp->colors[0][1] = i;
    tp->colors[0][2] = i;
    if (D_801DA5D2 != 0) {
        tp->half[0] = -168;
        tp->half[1] = -73;
        tp->half[2] = -172;
        tp->half[3] = -65;
        tp->half[4] = -164;
        tp->half[5] = -65;
        func_80196C98(0, (volatile u16 *)triangle_ptr, 1);
    }
    if (D_801DA5D2 != 11) {
        tp = triangle_ptr;
        tp->half[0] = -168;
        tp->half[1] = 103;
        tp->half[2] = -172;
        tp->half[3] = 95;
        tp->half[4] = -164;
        tp->half[5] = 95;
        func_80196C98(0, (volatile u16 *)triangle_ptr, 1);
    }
}
