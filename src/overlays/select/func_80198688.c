#include "common.h"

extern u8 D_800C8568[];
extern u8 D_801D1BF8[], D_801D1BF9[];
extern u8 D_8010C328[], D_800E78A8[], D_800F0420[];
extern u8 D_80134A90[], D_80134328[], D_801346DC[];

/* Call-site views; complete original helper APIs are unknown. */
extern void func_80131000(void);
extern void func_800AD648(void *, void *, u32);
extern void func_800AD658(void *, u32);
extern void func_800AE534(s32);
extern void func_800AE6B8(void *, u32, u32, u32);
extern void func_800AE7E0(void *, void *);
extern void func_800AE840(void *, void *);

typedef struct {
    s16 y, x, w, h;
} Rect;

/* Copy the selected tables and rasterize their eight-byte strings into
 * centered, packed four-bit rows. Six scoped bindings and three transparent
 * captures retain the measured allocation; none emits replacement logic.
 * The 0x8A8 frame is natural, with no reserved or artificial stack extent. */
void func_80198688(void) {
    u8 work[0x820];
    Rect rect;
    s32 i, count;
    u8 *strbase;
    s32 found, frame;
    u8 *scratch = (u8 *)0x1F800000;

    func_80131000();
    found = 0;
    for (i = 0; i < 2; i++) {
        u8 *selection = (u8 *)((u32)scratch + i);
        func_800AD648(D_80134A90 + selection[0x2DD] * 264,
            D_8010C328 + i * 264, 264);
        func_800AD648(D_80134328 + selection[0x2DD] * 22,
            D_800E78A8 + i * 22, 22);
        func_800AD648(D_801346DC + selection[0x2DD] * 22,
            D_800F0420 + i * 22, 22);
        if (selection[0x2DD] == 0x23) found = i + 1;
    }
    if ((*(u32 *)(scratch + 0x2DC) & 0xFFFF00) == 0x232300) return;
    switch (found) {
    case 0:
        rect.y = 0x1C0;
        rect.x = 0;
        rect.w = 0x40;
        rect.h = 0xB0;
        func_800AE6B8(&rect, 0, 0, 0);
        frame = 0;
        count = 2;
        break;
    case 1:
        rect.y = 0x1E0;
        rect.x = 0;
        rect.w = 0x20;
        rect.h = 0xB0;
        func_800AE6B8(&rect, 0, 0, 0);
        frame = 1;
        count = 2;
        break;
    case 2:
        rect.y = 0x1C0;
        rect.x = 0;
        rect.w = 0x20;
        rect.h = 0xB0;
        func_800AE6B8(&rect, 0, 0, 0);
        frame = 0;
        count = 1;
        break;
    case 3:
        return;
    }
    i = frame;
    if (i < count) {
        u8 *P = work;
        do {
            s32 line, n, width, kk, chr;
            s32 row;
            for (line = 0; line < 22; line++) {
                u8 *str;
                u8 c;
                /* Space preserves kk; unsupported high bytes preserve these
                 * coordinates and width. No default initialization is observed. */
                s32 ky, kx, kw;
                n = 0;
                str = D_800C8568 + ((u8 *)((u32)scratch + i))[0x2DD] * 176 + line * 8;
                strbase = str;
                width = 0;
                /* The failed bound test also increments n, which is used below. */
                while ((c = *str) != 0 && n++ < 8) {
                    if ((u8)c >= 0x80) {
                        if ((u8)(c + 0x7A) < 0x1A) width += 10;
                        else width += 8;
                        str++;
                    } else {
                        width += D_801D1BF9[(c - 0x20) << 1];
                        str++;
                    }
                }
                for (row = 0; row < 16; row++) {
                    s32 rowOff;
                    s32 col;
                    func_800AD658(work + 0x800, 0x20);
                    col = 0;
                    str = strbase;
                    chr = 0;
                    if (chr < n) {
                        rowOff = row << 6;
                        do {
                            u8 ch = *str;
                            if (ch == 0x20) {
                                ky = 0x1F8;
                                kw = D_801D1BF9[0];
                                kx = 0x110;
                            } else if (ch >= 0x80) {
                                kk = 0;
                                if ((u8)(ch + 0x7A) < 0xC) {
                                    kk = (ch - 0x86) * 10 + 0x80;
                                    ky = (kk >> 2) + 0x1C0;
                                    kx = row + 0x160;
                                    kw = 10;
                                } else if ((u8)(ch + 0x6E) < 0xD) {
                                    kk = (ch - 0x92) * 10;
                                    ky = (kk >> 2) + 0x1C0;
                                    kx = row + 0x170;
                                    kw = 10;
                                } else if ((u8)(ch + 0x5A) < 0xA) {
                                    ky = ch * 2 + 0x96;
                                    kx = row + 0x170;
                                    kw = 8;
                                } else if ((u8)(ch + 0x4F) < 0x1F) {
                                    ky = ch * 2 + 0x5E;
                                    kx = row + 0x150;
                                    kw = 8;
                                } else if ((u8)(ch + 0x30) < 0xE) {
                                    ky = ch * 2 + 0x20;
                                    kx = row + 0x160;
                                    kw = 8;
                                } else if (ch == 0xB0) {
                                    ky = 0x1D8;
                                    kx = row + 0x110;
                                    kw = 6;
                                } else if (ch == 0x9F) {
                                    ky = 0x1F6;
                                    kx = row + 0x140;
                                    kw = 10;
                                }
                            } else {
                                kk = D_801D1BF8[(ch - 0x20) << 1];
                                ky = (kk >> 2) + 0x1C0;
                                if (ch >= 0x61) kx = row + 0x130;
                                else if (ch >= 0x41) kx = row + 0x120;
                                else kx = row + 0x110;
                                kw = D_801D1BF9[(*str - 0x20) << 1];
                            }
                            rect.y = ky;
                            rect.x = kx;
                            rect.w = 0x10;
                            rect.h = 1;
                            func_800AE840(&rect, work + 0x800);
                            func_800AE534(0);
                            kk &= 3;
                            {
                                register s32 b __asm__("$6") = 0;
                                if (b < kw) {
                                    u8 *src = P;
                                    u8 *dst = (u8 *)(rowOff + (u32)src);
                                    do {
                                        dst[col++] = (*(u16 *)(src + 0x800) >>
                                            (12 - ((3 - kk) << 2))) & 0xF;
                                        kk = (kk + 1) & 3;
                                        if (kk == 0) src += 2;
                                    } while (++b < kw);
                                }
                            }
                            str++;
                        } while (++chr < n);
                    }
                }
                func_800AD658(work + 0x400, 0x400);
                {
                    u8 *p = P;
                    kk = (0x40 - width) / 2;
                    for (row = 0; row < 16; row++) {
                        for (chr = 0; chr < width; chr++) {
                            u8 *dest = p + 0x400;
                            dest[chr + kk] = p[chr];
                        }
                        p += 0x40;
                    }
                }
                for (row = 0; row < 16; row++) {
                    s32 nb;
                    s32 mask;
                    register s32 rowOff __asm__("$11");
                    register u8 *pack __asm__("$8");
                    chr = 0;
                    mask = 15;
                    rowOff = row << 6;
                    __asm__("" : "=r"(mask) : "0"(mask));
                    pack = P;
                    do {
                        register s32 qoffset __asm__("$9");
                        u8 *pixels;
                        register u8 *wordptr __asm__("$7");
                        u8 *rowstart;
                        nb = 0;
                        wordptr = pack;
                        rowstart = (u8 *)(rowOff + (u32)P);
                        qoffset = chr << 2;
                        pixels = rowstart + 0x400;
                        __asm__("" : "=r"(pixels) : "0"(pixels));
                        do {
                            register s32 shift __asm__("$5") = 3 - nb;
                            s32 index = qoffset + nb;
                            nb++;
                            shift = 12 - (shift << 2);
                            *(u16 *)(wordptr + 0x800) =
                                (*(u16 *)(wordptr + 0x800) & ~(mask << shift)) |
                                (pixels[index] << shift);
                        } while (nb < 4);
                        pack += 2;
                    } while (++chr < 16);
                    {
                        s32 scaled;
                        s32 index = i;
                        s32 page;
                        __asm__("" : "=r"(line) : "0"(line));
                        rect.w = 0x10;
                        rect.h = 1;
                        scaled = index * 32;
                        page = line / 11 * 16 + 0x1C0;
                        rect.y = scaled + page;
                        rect.x = (u32)(line % 11 * 16) + (u32)row;
                    }
                    func_800AE7E0(&rect, work + 0x800);
                    func_800AE534(0);
                }
            }
        } while (count > ++i);
    }
}
