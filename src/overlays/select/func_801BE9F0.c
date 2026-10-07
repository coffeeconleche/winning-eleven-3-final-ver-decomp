#include "common.h"

/*
 * Match: GCC 2.7.2 -quiet -O2 -G0; 1,796 bytes, natural 144-byte frame.
 * Draws one two-pass polyline per row (16 rows) through the packed
 * per-column nibbles read by func_801BD2F8, highlighting the cursor row.
 * Only D_801DA2F8 values 0 and 1 draw rows; 0 draws the cursor row only.
 *
 * Measured source choices: the 0xAB50 row bytes are indexed from a local
 * copy of the D_800FF748 base; the narrow layout's column limit is a
 * per-branch conditional comparison; the wide layout adds its constant
 * before the half-column term. Callee views use word arguments; the drawing
 * helpers narrow their own fields. Record meaning, valid ranges and complete
 * original prototypes remain unknown.
 */
extern u8 D_800FF748[];
extern u8 D_80108667, D_8010866A, D_801DA2F8;
extern u16 D_800AD638;
extern void func_801BFB58(void);
extern u16 func_8018E5B8(u16, s32);
extern u32 func_801BD2F8(u32, u32);
extern void func_8019645C(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801964F8(s32, s32, s32, s32, s32, s32, s32, s32, s32);
/* The first call supplies ten words, the second nine; the observed callee
 * consumes nine. This preserves that extra word, not a recovered variadic API. */
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32, ...);

void func_801BE9F0(void) {
    s32 i, j;
    u8 r, b, g;
    u8 *base = D_800FF748;
    s16 a, c;

    func_801BFB58();
    if ((D_80108667 >> 6) & 1) {
        func_801964F8(0x40000000, 58, -161, 0, 354, 48, 96, 128, 4);
    }
    func_801964F8(0x40000000, -52, 15, 224, 0, 48, 96, 128, 4);
    func_801964F8(0x40000000, -52, 16, 224, 0, 48, 96, 128, 4);
    switch (D_801DA2F8) {
    case 0:
    case 1:
        for (i = 0; i < 16; i++) {
            if (i == D_800AD638) {
                g = 0xC0;
                b = func_8018E5B8(0x80, 3);
                r = b;
            } else {
                if (D_801DA2F8 == 0)
                    continue;
                r = 0;
                b = 24;
                g = 24;
            }
            if ((D_80108667 >> 6) & 1) {
                if (D_8010866A != 0) {
                    a = func_801BD2F8(base[i + 0xAB50], 0);
                    c = func_801BD2F8(base[i + 0xAB50], 1);
                    func_8019645C(0, -52, a * 22 - 151, -46, c * 22 - 151, r, g, b, 2);
                    func_8019645C(0, -51, a * 22 - 151, -45, c * 22 - 151, r, g, b, 2);
                }
                for (j = 2; D_8010866A < 15 ? j < D_8010866A + 1 : j < 15; j++) {
                    a = func_801BD2F8(base[i + 0xAB50], j - 1);
                    c = func_801BD2F8(base[i + 0xAB50], j);
                    func_8019645C(0, (j - 1) * 8 - 54, a * 22 - 151,
                                  j * 8 - 54, c * 22 - 151, r, g, b, 2);
                    func_8019645C(0, (j - 1) * 8 - 53, a * 22 - 151,
                                  j * 8 - 53, c * 22 - 151, r, g, b, 2);
                }
                if (D_8010866A >= 15) {
                    for (j = 15; j <= D_8010866A; j++) {
                        a = func_801BD2F8(base[i + 0xAB50], j - 1);
                        c = func_801BD2F8(base[i + 0xAB50], j);
                        func_8019645C(0, (j - 1) * 7 - 47 + ((j - 1) >> 1), a * 22 - 151,
                                      j * 7 - 47 + (j >> 1), c * 22 - 151, r, g, b, 2);
                        func_8019645C(0, (j - 1) * 7 - 46 + ((j - 1) >> 1), a * 22 - 151,
                                      j * 7 - 46 + (j >> 1), c * 22 - 151, r, g, b, 2);
                    }
                }
            } else {
                for (j = 1; j <= D_8010866A; j++) {
                    a = func_801BD2F8(base[i + 0xAB50], j - 1);
                    c = func_801BD2F8(base[i + 0xAB50], j);
                    func_8019645C(0, (j - 1) * 16 - 52, a * 22 - 151,
                                  j * 16 - 52, c * 22 - 151, r, g, b, 2);
                    func_8019645C(0, (j - 1) * 16 - 51, a * 22 - 151,
                                  j * 16 - 51, c * 22 - 151, r, g, b, 2);
                }
            }
        }
    }
    func_80196800(0x50000000, -156, D_800AD638 * 22 - 160,
                  80, 20, 160, 48, 0, 1, 4);
    func_80196800(0x70000000, -52, D_800AD638 * 22 - 160,
                  224, 20, 255, 170, 255, 2);
}
