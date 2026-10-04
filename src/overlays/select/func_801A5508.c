#include "common.h"

extern u8 D_800FF748[];
extern u16 D_80105798;
/* Word-width caller ABI views preserve the supplied words. The callees
 * narrow their descriptor fields; their original full prototypes are unknown. */
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_80196FE8(s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_80197200(s32, s32, s32, s32, s32, s32);

/* Draw 32 entries using the observed two layouts. Record meanings are unknown;
 * keep the mapped record byte reread after the first drawing callback. */
void func_801A5508(void) {
    s32 origin = D_80105798;
    s32 i = 0;
    s32 one = 1;
    /* Preserve the measured base/cursor allocation and loop setup order. */
    register u8 *base __asm__("$20") = D_800FF748;
    u8 *row = base;
    do {
        s32 x, y;
        u32 mode = base[0x8F1F];
        u32 code = row[0x8F25];
        if ((mode & 15) == 0) {
            s32 quotient = i / 16;
            s32 column = i % 16;
            s32 pixels = column * 21;
            s32 offset = (column / 4) * 2 - 169;
            x = origin + (pixels + offset);
            y = quotient * 32 - 57;
        } else {
            s32 quotient = i / 8;
            s32 column;
            /* These scoped arithmetic/argument bindings retain the measured
             * temporary lifetimes rather than destructively updating the saved
             * coordinates. Raw words remain available to the blank-entry call. */
            register s32 pixels __asm__("$2");
            register s32 originOffset __asm__("$3");
            register s32 yPixels __asm__("$2");
            register s32 xWord __asm__("$5"), yWord __asm__("$6");
            column = i - quotient * 8;
            pixels = column * 21;
            originOffset = origin + 5;
            xWord = pixels + originOffset;
            x = xWord;
            yPixels = quotient * 26;
            yWord = yPixels - 52;
            y = yWord;
            if (i >= base[0x8F20] && i < 16) {
                func_80196800(0, (s16)xWord, (s16)yWord, 16, 10, 64, 0, 0, one);
                goto next;
            }
        }
        {
            register s32 rawX __asm__("$16") = x;
            register s32 rawY __asm__("$17") = y;
            u8 *entry;
            u8 *selected;
            /* Empty inputs emit no instructions; keep saved coordinates live
             * while the mapping address and byte-flag comparison are formed. */
            __asm__ volatile ("" : : "r"(rawX), "r"(rawY));
            entry = base + i + 0xAB80;
            selected = base + *entry * 36;
            if ((selected[0x8F24] & 0xC0) != 0xC0) {
                register u32 drawCode __asm__("$4") = code;
                register u32 zero __asm__("$5") = 0;
                register s32 drawX __asm__("$6");
                /* Preserve argument setup before narrowing, with the x
                 * argument supplied before the y-coordinate narrowing. */
                __asm__ volatile ("" : : "r"(drawCode), "r"(zero));
                rawX = (s16)rawX;
                drawX = rawX;
                __asm__ volatile ("" : : "r"(drawX));
                rawY = (s16)rawY;
                func_80196FE8(drawCode, zero, drawX, rawY, 0, 0, one, one);
                /* The callback may change either the mapping or record byte. */
                selected = base + *entry * 36;
                {
                    u32 packed = selected[0x8F24];
                    func_80197200(packed & 0xC0, (packed & 0x3F) + 1, rawX - 1, rawY - 12, 0, one);
                }
            }
        }
next:
        i++;
        row += 36;
    } while (i < 32);
}
