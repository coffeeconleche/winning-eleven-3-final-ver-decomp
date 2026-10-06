#include "common.h"

extern u8 D_800FF748[];
extern u8 *D_8011D5F8[];
extern s32 D_801DA058, D_801DA05C, D_801DA060, D_801DA064;
extern u16 D_8010A5A4;

/* Caller-word ABI views retain the supplied bits before helper narrowing.
 * Full helper prototypes and descriptor meanings are not claimed. */
extern void func_8001DF74(s32, s32), func_800B4958(s32, s32);
extern void func_800171DC(void), func_800171FC(s32);
extern void func_800171C4(s32), func_80017178(s32);
extern void func_801C4DE8(void), func_80199E8C(void);
extern s32 func_8018E720(s32, s32), func_80199FDC(void), func_8019A0AC(void);
extern s32 func_8006F07C(s32), func_8006F0DC(s32, s32);
extern s32 func_8018E994(s16 *, s32, s32), func_8018E5EC(s32, s32, s32);
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32);
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32, s32);
extern s32 func_8006FA60(s32, s32), func_8006FA84(s32, s32);
extern s32 func_8006FB90(s32, s32, s32), func_8006FBCC(s32, s32, s32);
extern void func_8006FCFC(s32), func_800AB620(s32), func_8019A62C(s32);
extern s32 func_8006EC80(s32);
extern void func_8018EC60(s32, u8 *), func_8018E4AC(s32, s32, s32);
extern u8 *func_8001D004(s32);

void func_80199010(void) {
    /* Dispatch captures this byte once; the other scratch bytes are reread. */
    s32 state = *(u8 *)0x1F80029B;
    s32 complete = 1;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;

    switch (state) {
    case 0:
        func_8001DF74(384, 240);
        func_800B4958(*(s16 *)(base + 0xAC18), *(s16 *)(base + 0xAC1A));
        scratch[0x2A2] = 0;
        func_800171DC();
        break;
    case 1:
        func_801C4DE8();
        func_80199E8C();
        func_8018E720(0, 0);
        *(u16 *)(scratch + 0x294) = 0;
        func_800171DC();
        break;
    case 2:
        if (func_8006F07C(64)) func_800171DC();
        break;
    case 3:
        /* Bitwise accumulation always executes every callback. */
        complete &= func_8018E994((s16 *)(base + 0x5E08), 4096, 256);
        complete &= func_8018E994((s16 *)(base + 0x5E30), 4096, 256);
        complete &= func_8018E720(1, 0);
        complete &= func_80199FDC();
        if (complete) func_800171DC();
        break;
    case 4:
        func_801942E0(0, D_8011D5F8[scratch[0x2E1]], -162, 69, 327,
                       0, 1, 0, 0, 3, 2, 1);
        func_80193FB4(3, 0x3016, 0, 0, scratch[0x2E1] * 20 - 5,
                       24, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(4, 0x3015, 0, 0, scratch[0x2E1] * 20 - 5,
                       24, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
        func_8006FA60(scratch[0x2E1] + 5, 31);
        D_801DA064 = 0;
        D_801DA060 = 0;
        D_801DA05C = 0;
        D_801DA058 = 0;
        func_800171DC();
        break;
    case 5: {
        u16 timer = *(u16 *)(scratch + 0x294);
        u16 input;

        if (timer > 6144) func_800171FC(10);
        else *(u16 *)(scratch + 0x294) = timer + 1;
        D_801DA05C = (s32)((u32)D_801DA05C + 1);
        if (D_801DA05C == 3) {
            s32 next = (s32)((u32)D_801DA058 + 1) & 7;
            D_801DA05C = 0;
            D_801DA058 = next;
        }
        /* Preserve word wrapping, signed shifts, and independent post-call
         * counter reads. These are not cached as one animation snapshot. */
        func_8006FB90(4, 0, (((D_801DA058 >> 2) & 1) * 24) | 128);
        func_8006FB90(4, 1, ((((s32)(7 - (u32)D_801DA058) >> 2) & 1) * 24) | 128);
        func_8006FBCC(4, 0, (D_801DA058 & 3) * 24);
        func_8006FBCC(4, 1, ((7 - (u32)D_801DA058) & 3) * 24);
        func_8006FCFC(54);
        input = func_8006EC80(0);
        D_8010A5A4 = input;
        if (input) {
            *(u16 *)(scratch + 0x294) = 0;
            func_8019A62C(input);
        }
        /* The global halfword is reread after the callback above. */
        if (D_8010A5A4 == 4096 || D_8010A5A4 == 16384) {
            s32 next;
            func_8006FA60(scratch[0x2E1] + 5, 30);
            func_800AB620(0x50D);
            next = func_8018E5EC(scratch[0x2E1], 0, 6);
            scratch[0x2E1] = next;
            func_8006FA60((u8)next + 5, 31);
            *(u16 *)(base + 0x5E4A) = scratch[0x2E1] * 20 - 5;
            *(u16 *)(base + 0x5E72) = scratch[0x2E1] * 20 - 5;
            func_8018EC60(0, D_8011D5F8[scratch[0x2E1]]);
        } else if (D_8010A5A4 == 32) {
            func_800AB620(0x528);
            func_8006FA84(3, 0);
            func_8006FA84(4, 0);
            func_800171DC();
        }
        break;
    }
    case 6:
        complete &= func_8018E994((s16 *)(base + 0x5E08), 0, 256);
        complete &= func_8018E994((s16 *)(base + 0x5E30), 0, 256);
        complete &= func_8019A0AC();
        if ((u32)scratch[0x2E1] - 5 < 2) complete &= func_8018E720(2, 0);
        if (complete) {
            *(u8 **)(base + 0x5DF4) = func_8001D004(scratch[0x2E1] + 0x3005);
            func_800171DC();
        }
        break;
    case 7:
        switch (scratch[0x2E1]) {
        case 0: case 3: case 4: func_800171C4(2); break;
        case 1: func_800171C4(3); break;
        case 2: func_800171C4(4); break;
        case 5: scratch[0x2E2] = 0; func_800171C4(5); break;
        case 6: func_800171C4(6); break;
        }
        func_8018E4AC(5, 19, 0);
        func_800171FC(0);
        base[0xABDA] = 0;
        break;
    case 10:
        if (func_8006F0DC(16, 1)) {
            func_800AB620(10);
            func_800171DC();
        }
        break;
    case 11:
        if (func_8006F07C(64)) func_80017178(2);
        break;
    }
}
