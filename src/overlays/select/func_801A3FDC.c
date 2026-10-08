#include "common.h"

extern u8 D_800FF748[];
extern u8 D_80108667;
extern u16 D_8010A5A4;
extern u8 D_801D8B17;
extern u8 D_801D8A70;
extern s16 D_801D8A82;
extern s16 D_801D8A84;
extern u32 D_801DA060;
extern s32 func_8006EE60(u32);
extern void func_800AB620(s32);
extern u8 func_801A4908(u8);
extern u8 func_801A4948(u8);
extern void func_800501DC(u32);
extern void func_801A3588(void);
extern u32 func_801A2CA0(u32, u8);

static inline u8 category(u32 value) {
    if (value < 22) return 0;
    if (value < 27) return 1;
    if (value < 30) return 2;
    if (value < 35) return 3;
    if (value < 39) return 4;
    if (value < 40) return 5;
    return 6;
}

s32 func_801A3FDC(void) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s32 size;
    u8 before;
    u8 after;

    D_8010A5A4 = func_8006EE60(0);
    size = 8;
    if ((D_80108667 & 15) == 0) {
        size = 16;
    }
    if (D_801D8B17 == 0) {
        before = category(D_801D8A70);
        switch (D_8010A5A4) {
        case 0x8000:
            func_800AB620(0x50D);
            if (D_801D8A70 % size != 0) {
                D_801D8A70 = D_801D8A70 - 1;
            } else {
                D_801D8A70 = D_801D8A70 + (size - 1);
                D_801D8A82 = 0x180;
            }
            break;
        case 0x2000:
            func_800AB620(0x50D);
            if (D_801D8A70 % size < size - 1) {
                D_801D8A70 = D_801D8A70 + 1;
            } else {
                D_801D8A70 = D_801D8A70 - (size - 1);
                D_801D8A82 = -0x180;
            }
            break;
        case 0x1000:
            func_800AB620(0x50D);
            if (D_801D8A70 < size) {
                s32 inverse;
                D_801D8B17 = 1;
                scratch[0x2DD] = func_801A4908(D_801D8A70) + 0x21;
                inverse = ~base[0xABE2];
                while ((((inverse >> 2) & 1) && scratch[0x2DD] == 0x2A) ||
                       (((inverse >> 1) & 1) && scratch[0x2DD] == 0x28) ||
                       (((inverse >> 1) & 1) && scratch[0x2DD] == 0x29) ||
                       scratch[0x2DD] == 0x2B) {
                    scratch[0x2DD] -= 11;
                }
                D_801D8A84 = 0x78;
            } else {
                D_801D8A70 = D_801D8A70 - size;
            }
            break;
        case 0x4000:
            func_800AB620(0x50D);
            if (D_801D8A70 < size) {
                D_801D8A70 = D_801D8A70 + size;
            } else {
                D_801D8B17 = 1;
                scratch[0x2DD] = func_801A4908((D_801D8A70 - size) & 0xFF);
            }
            break;
        }
        {
            u32 value = D_801D8A70;
            __asm__("" : "=r"(value) : "0"(value));
            after = category(value);
        }
    } else {
        before = category(scratch[0x2DD]);
        if (D_8010A5A4 & 0x8000) {
            func_800AB620(0x50D);
            {
                u8 value = scratch[0x2DD];
                if ((u8)(value % 11) == 0) {
                    scratch[0x2DD] = value + 10;
                    D_801D8A82 = 0x180;
                } else {
                    scratch[0x2DD] = value - 1;
                }
            }
            {
                s32 inverse = ~base[0xABE2];
                while ((((inverse >> 2) & 1) && scratch[0x2DD] == 0x2A) ||
                       (((inverse >> 1) & 1) && scratch[0x2DD] == 0x28) ||
                       (((inverse >> 1) & 1) && scratch[0x2DD] == 0x29) ||
                       scratch[0x2DD] == 0x2B) {
                    scratch[0x2DD] -= 1;
                }
            }
        }
        if (D_8010A5A4 & 0x2000) {
            func_800AB620(0x50D);
            {
                u8 value = scratch[0x2DD];
                if ((u8)(value % 11) == 10) {
                    scratch[0x2DD] = value - 10;
                    D_801D8A82 = -0x180;
                } else {
                    scratch[0x2DD] = value + 1;
                }
            }
            {
                for (;;) {
                    s32 inverse = ~base[0xABE2];
                    if ((((inverse >> 2) & 1) && scratch[0x2DD] == 0x2A) ||
                        (((inverse >> 1) & 1) && scratch[0x2DD] == 0x28) ||
                        (((inverse >> 1) & 1) && scratch[0x2DD] == 0x29) ||
                        scratch[0x2DD] == 0x2B) {
                        u8 value = scratch[0x2DD];
                        if ((u8)(value % 11) == 10) {
                            scratch[0x2DD] = value - 10;
                        } else {
                            scratch[0x2DD] = value + 1;
                        }
                        continue;
                    }
                    break;
                }
            }
        }
        if (D_8010A5A4 & 0x1000) {
            func_800AB620(0x50D);
            {
                if (scratch[0x2DD] < 11) {
                    D_801D8B17 = 0;
                    if ((base[0x8F1F] & 15) == 0) {
                        D_801D8A70 = func_801A4948(scratch[0x2DD]) + size;
                    } else {
                        u32 value = scratch[0x2DD] & 0xFF;
                        if (value < 5) {
                            D_801D8A70 = size;
                        } else {
                            D_801D8A70 = func_801A4948(value) + size;
                        }
                    }
                } else {
                    scratch[0x2DD] -= 11;
                }
            }
        }
        if (D_8010A5A4 & 0x4000) {
            func_800AB620(0x50D);
            {
                register u32 value __asm__("$3");
                value = scratch[0x2DD];
                if (value >= 0x21) {
                    D_801D8B17 = 0;
                    D_801D8A84 = -0x78;
                    if ((base[0x8F1F] & 15) == 0) {
                        D_801D8A70 = func_801A4948((scratch[0x2DD] - 0x21) & 0xFF);
                    } else {
                        if (scratch[0x2DD] < 0x26) {
                            D_801D8A70 = 0;
                        } else {
                            D_801D8A70 = func_801A4948((scratch[0x2DD] - 0x21) & 0xFF);
                        }
                    }
                } else {
                    u32 next = value + 11;
                    s32 inverse = ~base[0xABE2];
                    scratch[0x2DD] = next;
                    if ((((inverse >> 2) & 1) && (next & 0xFF) == 0x2A) ||
                        (((inverse >> 1) & 1) && (next & 0xFF) == 0x28) ||
                        (((inverse >> 1) & 1) && (next & 0xFF) == 0x29) ||
                        (next & 0xFF) == 0x2B) {
                        D_801D8B17 = 0;
                        D_801D8A70 = func_801A4948((scratch[0x2DD] - 0x21) & 0xFF);
                        D_801D8A84 = -0x78;
                        scratch[0x2DD] -= 11;
                    }
                }
            }
        }
        {
            u32 value = scratch[0x2DD] & 0xFF;
            __asm__("" : "=r"(value) : "0"(value));
            after = category(value);
        }
    }
    if (after == 6) {
        func_800501DC(0);
    } else {
        base[0xAC20] = 0;
    }
    if (before != after) {
        func_801A2CA0(base[0x5F2C], base[0x5F54]);
    }
    if (D_8010A5A4 & 0xF000) {
        func_801A3588();
        D_801DA060 = 0;
    }
    return D_8010A5A4 & 0xFFF;
}
