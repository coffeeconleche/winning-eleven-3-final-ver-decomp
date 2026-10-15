#include "common.h"

extern u8 D_800CAA70[];
extern u8 D_800CAA71, D_800CAA72, D_800CAA73, D_800CAA74, D_800CAA75;
extern u8 D_800E6E18;
extern u8 D_8010C1D8[];
extern u8 D_8010C1DE;

s32 func_8009A278(u8 mode) {
    u8 *state = D_8010C1D8;
    u8 *scratchp = (u8 *)0x1F800000;
    s32 i, row, item;
    u8 *p, *out;
    u8 *inc, *dec, *clear, *fill;
    s32 a, b, c, d, e, a_case1;
    u8 v, w;

    switch (mode) {
    case 0:
        if (D_8010C1DE == 2) {
            a = D_800CAA70[0] & 0xFF;
            if (a != 32) {
                D_800CAA70[0]++;
            } else {
                b = D_800CAA71 & 0xFF;
                if (b != a) {
                    D_800CAA71++;
                } else {
                    c = D_800CAA72 & 0xFF;
                    if (c != b) {
                        D_800CAA72++;
                    } else {
                        d = D_800CAA73 & 0xFF;
                        if (d != c) {
                            D_800CAA73++;
                        } else {
                            e = D_800CAA74 & 0xFF;
                            if (e != d) {
                                D_800CAA74++;
                            } else if (D_800CAA75 != e) {
                                D_800CAA75++;
                            }
                        }
                    }
                }
            }
        } else {
            if (D_800CAA70[0]) { D_800CAA70[0]--; break; }
            if (D_800CAA71) { D_800CAA71--; break; }
            if (D_800CAA72) { D_800CAA72--; break; }
            if (D_800CAA73) { D_800CAA73--; break; }
            if (D_800CAA74) { D_800CAA74--; break; }
            if (D_800CAA75) { D_800CAA75--; break; }
        }
        break;
    case 1:
        if (D_8010C1DE == 2) {
            a_case1 = D_800CAA70[0] & 0xFF;
            if (a_case1 != 32) {
                D_800CAA70[0]++;
                D_800E6E18 = 0;
                v = D_800CAA72 + 1;
                w = D_800CAA74 + 1;
                goto even;
            }
            v = ++D_800E6E18;
            if (v >= 128 && D_800CAA71 != a_case1) {
                D_800CAA71++;
                v = D_800CAA73 + 1;
                w = D_800CAA75 + 1;
                goto odd;
            }
        } else if (D_800CAA70[0]) {
            D_800CAA70[0]--;
            D_800E6E18 = 0;
            v = D_800CAA72 - 1;
            w = D_800CAA74 - 1;
even:
            D_800CAA72 = v;
            D_800CAA74 = w;
        } else {
            v = ++D_800E6E18;
            if (v >= 128 && D_800CAA71) {
                D_800CAA71--;
                v = D_800CAA73 - 1;
                w = D_800CAA75 - 1;
odd:
                D_800CAA73 = v;
                D_800CAA75 = w;
            }
        }
        break;
    case 2:
        if (D_8010C1DE == mode) {
            p = D_800CAA70;
            if (*p != 32) {
                inc = p;
                do {
                    ++*inc;
                    ++inc;
                } while ((s32)inc < (s32)(p + 6));
            }
        } else {
            dec = D_800CAA70;
            if (*dec) {
                do {
                    --*dec;
                    ++dec;
                } while ((s32)dec < (s32)(D_800CAA70 + 6));
            }
        }
        break;
    }

    for (i = 0; i < 2; i++) {
        for (row = 23; row < 27; row += 2) {
            for (item = 2; item < 8; item++) {
                out = (u8 *)(*(u32 *)(scratchp + 0x190) +
                    i * 0x3AC0 + row * 0x190 + item * 0x28);
                out[0xC] = 0x7F;
                out[0xD] = D_800CAA70[(item - 2) % 6] + 0xA0;
                out[0x14] = 0x7F;
                out[0x15] = D_800CAA70[(item - 2) % 6] + 0xBF;
                out[0x1C] = 0;
                out[0x1D] = D_800CAA70[(item - 2) % 6] + 0xA0;
                out[0x24] = 0;
                out[0x25] = D_800CAA70[(item - 2) % 6] + 0xBF;
            }
            for (item = 12; item < 18; item++) {
                out = (u8 *)(*(u32 *)(scratchp + 0x190) +
                    i * 0x3AC0 + row * 0x190 + item * 0x28);
                out[0xC] = 0x7F;
                out[0xD] = D_800CAA70[(item - 12) % 6] + 0xA0;
                out[0x14] = 0x7F;
                out[0x15] = D_800CAA70[(item - 12) % 6] + 0xBF;
                out[0x1C] = 0;
                out[0x1D] = D_800CAA70[(item - 12) % 6] + 0xA0;
                out[0x24] = 0;
                out[0x25] = D_800CAA70[(item - 12) % 6] + 0xBF;
            }
        }
    }
    if (!D_800CAA70[0] && !D_800CAA75) {
        state[6] = 0;
        for (i = 5, clear = D_800CAA70 + 5; i >= 0; i--, clear--) {
            *clear = 0;
        }
        return 1;
    }
    if (D_800CAA70[0] == 32) {
        if (D_800CAA75 == D_800CAA70[0]) {
            s32 fillvalue;
            state[6] = 1;
            fillvalue = 32;
            for (i = 5, fill = D_800CAA70 + 5; i >= 0; i--, fill--) {
                *fill = fillvalue;
            }
            return 1;
        }
        return 0;
    }
    return 0;
}
