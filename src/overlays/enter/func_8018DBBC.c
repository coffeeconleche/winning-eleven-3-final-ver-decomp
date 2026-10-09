#include "common.h"

extern u8 D_800FF748[], D_8010C1D8[], D_800FFF03[];
extern s32 func_8001E694(u32, s32), func_8001E5A4(u32, s32);
extern void func_800477A0(void *, u32), func_8001FA1C(void);
extern void func_8018E490(u32);

/* Offset access views; complete scratch/control/row layouts are unknown. */
#define W(o) (*(s32 *)(scratch + (o)))
#define H(o) (*(u16 *)(scratch + (o)))
#define B(o) (scratch[(o)])
#define C (*(u16 *)(control + 0x3A))
#define SETUP u8 i = 0; s32 one = 1; u8 *row = D_800FFF03
#define MARK(x,y) do { \
    do { \
        if ((u16)(*(u16 *)(row - 0x3BF) + (x)) > 2 * (x) || \
            (u16)(*(u16 *)(row - 0x3BD) + (y)) > 2 * (y)) *row = 0; \
        else *row = one; \
        i++; row += 1000; \
    } while (i < 22); \
} while (0)
#define MARK_X(x) do { \
    do { \
        if ((u16)(*(u16 *)(row - 0x3BF) + (x)) > 2 * (x)) *row = 0; \
        else *row = one; \
        i++; row += 1000; \
    } while (i < 22); \
} while (0)

void func_8018DBBC(u32 selector)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *base = D_800FF748;
    u8 *control = D_8010C1D8;

    switch ((u8)selector) {
    case 0: break;
    case 16:
        if (W(0x1F4) >= -767) {
            s32 old = W(0x1F4);
            W(0x1F4) = old - 2;
            if (W(0x290) & 1) W(0x1F4) = old - 3;
        }
        if (W(0x200) < -608) W(0x200) += 3;
        if (W(0x1F8) >= -9471) W(0x1F8) -= 8;
        func_800477A0(*(void **)(scratch + 0x2F4), 2);
        B(0x1E8) = 0;
        break;
    case 17:
        if (W(0x1F4) >= -511) W(0x1F4) -= 4;
        if (W(0x200) < -240) W(0x200) += 3;
        B(0x1E8) = 1;
        func_800477A0(*(void **)(scratch + 0x2F4), 2);
        break;
    case 18: case 19: {
        /* Retain the saved accumulator through both signed averaging paths. */
        register s32 result __asm__("$16");
        u32 counter = C;
        {
            s32 old = W(0x204);
            s32 height;
            s32 left;
            u32 narrow;
            s32 target;

            height = *(s16 *)(base + 0x59DE);
            counter++;
            left = old * 3 + height;
            narrow = (u16)counter;
            target = narrow * 3 - 512;
            C = counter;
            W(0x204) = (left - target) / 4;
        }
        switch (W(0x290) % 2) {
        case 0:
            if ((u8)selector == 18) {
                B(0x2E7)--;
                result = func_8001E694(B(0x2E7), (s16)H(0x2EA));
                result += func_8001E694((u8)(B(0x2E7) + 1), (s16)H(0x2EA));
                result /= 2;
                W(0x1F0) = W(0x1FC) + result;
                W(0x1F4) = -(s16)H(0x2EC);
                result = func_8001E5A4(B(0x2E7), (s16)H(0x2EA));
                result += func_8001E5A4((u8)(B(0x2E7) + 1), (s16)H(0x2EA));
            } else {
                B(0x2E7)++;
                result = func_8001E694(B(0x2E7), (s16)H(0x2EA));
                result += func_8001E694((u8)(B(0x2E7) - 1), (s16)H(0x2EA));
                result /= 2;
                W(0x1F0) = W(0x1FC) + result;
                W(0x1F4) = -(s16)H(0x2EC);
                result = func_8001E5A4(B(0x2E7), (s16)H(0x2EA));
                result += func_8001E5A4((u8)(B(0x2E7) - 1), (s16)H(0x2EA));
            }
            result /= 2;
            W(0x1F8) = W(0x204) + result;
            break;
        case 1:
            result = func_8001E694(B(0x2E7), (s16)H(0x2EA));
            W(0x1F0) = W(0x1FC) + result;
            W(0x1F4) = -(s16)H(0x2EC);
            result = func_8001E5A4(B(0x2E7), (s16)H(0x2EA));
            W(0x1F8) = W(0x204) + result;
            break;
        }
        func_800477A0(*(void **)(scratch + 0x2F4), 2);
        switch ((u8)B(0x2E3)) {
        case 0: case 1: case 4: case 5: goto enabled;
        case 2: case 3: goto disabled;
        }
        break;
    }
    case 20: case 21: {
        s32 time;
        C = H(0x294);
        if (C > 200) C = 1500;
        if (C < 100) {
            u16 tenth = C / 10U;
            s32 numerator = (800 - C) * W(0x204) + (*(s16 *)(base + 0x59DE) + tenth) * C;
            W(0x204) = numerator / 800;
        }
        time = 1500;
        if (C != time) { W(0x200) -= 3; W(0x1F4) += 2; }
        {
            s32 x;
            s32 z;
            u32 second;
            s32 factor = time - C;
            s32 position = W(0x1F0);

            /* Identity of the actual halfword access retains its second capture
             * before the two coordinate stores; no memory clobber or write. */
            __asm__ volatile ("" : "=m"(C) : "m"(C));
            x = factor * position;
            second = C;
            z = (time - (s32)second) * W(0x1F8) - (s32)second * 10240;
            W(0x1F0) = x / 1500;
            W(0x1F8) = z / 1500;
        }
        if (C == 60) func_8001FA1C();
        func_8018E490(12);
        B(0x1E8) = 1;
        if (C == time) B(0x1E8) = 0;
        break;
    }
    case 32: case 33: {
        if (W(0x290) & 1) W(0x1F0)++;
        {
            SETUP;
            W(0x1FC) += 7;
            MARK(344,192);
            func_8018E490(0);
            goto enabled;
        }
    }
    case 34: {
        SETUP;
        B(0x1E8) = 1;
        W(0x1F0) += 3; W(0x1FC) += 6;
        MARK(344,192);
        goto marked;
    }
    case 35: {
        SETUP;
        B(0x1E8) = 1;
        W(0x1F0) += 5; W(0x1FC) += 7;
        MARK(384,232);
        goto marked;
    }
    case 36: {
        SETUP;
        B(0x1E8) = 1;
        W(0x1F0) += 5; W(0x1FC) += 6;
        MARK(344,192);
marked:
        func_8018E490(0);
        break;
    }
    case 37: {
        SETUP;
        W(0x1F0) += 5; W(0x1FC) += 5;
        MARK_X(272);
        func_8018E490(12);
        break;
    }
    case 38: {
        SETUP;
        W(0x1FC) += 10; W(0x1F0) += 2;
        MARK(344,192);
        func_8018E490(0);
enabled:
        B(0x1E8) = 1;
        break;
    }
    case 48: case 49: {
        if (W(0x1F4) < -1792) W(0x1F4) += 20;
        {
            SETUP;
            MARK_X(272);
            func_8018E490(12);
disabled:
            B(0x1E8) = 0;
            break;
        }
    }
    }
}
