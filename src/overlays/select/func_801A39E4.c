#include "common.h"

/* Measured scalar/ABI views; full object layouts and helper APIs are unknown. */
extern u8 D_800FF748[];
extern u16 D_8010A5A4;
extern u32 D_801DA060, D_801DA064;
extern s32 func_8006EE60(u32);
extern s32 func_801A3EE8(u16, u8), func_801A3D3C(s32, u8);
extern void func_801A3588(void), func_800501DC(u32);
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

/* Keep the callback-dependent retry paths and their separate memory reads.
 * Six scoped bindings and two empty identities preserve observed captures;
 * they emit no instructions or extra accesses. The 48-byte frame is natural. */
s32 func_801A39E4(u8 side, u8 input, s32 argument2) {
    register s32 skip __asm__("$16") = argument2;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 before;
    s32 changed;
    if ((u8)(side & input) >= 2) return 0;
    D_8010A5A4 = func_8006EE60((u8)input);
    {
        register u32 classification __asm__("$2") = category(((u8 *)0x1F8002DD)[(u8)side]);

        before = (u8)classification;
    }
    if (!skip) {
        register u32 after __asm__("$16");
        register u32 initialMode __asm__("$2")=scratch[0x2E1];
        __asm__("" : "=r"(initialMode) : "0"(initialMode));
        if ((u8)initialMode == 3)
            changed = func_801A3EE8(D_8010A5A4, (u8)side);
        else changed = func_801A3D3C(D_8010A5A4, (u8)side);
        {
        register u32 mode __asm__("$2")=scratch[0x2E1];

        if ((u8)mode != 3) {
            if ((u8)mode == 0) {
                u8 *selection = scratch + (u8)side;
                for (;;) {
                    s32 inverse = ~base[0xABE2];
                    if ((inverse & 1) && selection[0x2DD] == 43) {}
                    else if (((inverse >> 1) & 1)) {
                        u32 value = selection[0x2DD];
                        if (value == 40) goto retry0;
                        if (value == 41) goto retry0;
                        goto test2;
                    }
                    else {
                    test2:
                        if (!(((inverse >> 2) & 1) && selection[0x2DD] == 42)) break;
                    }
                    retry0:
                    changed = func_801A3D3C(D_8010A5A4, (u8)side);
                }
            } else {
                u8 *selection = scratch + (u8)side;
                for (;;) {
                    u32 value = selection[0x2DD];
                    u32 comparison;

                    comparison = 43;

                    if (value != comparison) {
                        s32 inverse = ~base[0xABE2];
                        if ((inverse >> 1) & 1) {
                            comparison = 40;

                            if (value == comparison) goto retry1;
                            comparison = 41;

                            if (value == comparison) goto retry1;
                        }
                        if (!((inverse >> 2) & 1)) break;
                        comparison = 42;

                        if (value != comparison) break;
                    }
                    retry1:
                    changed = func_801A3D3C(D_8010A5A4, (u8)side);
                }
            }
        }
        }
        {
        s32 changedValue=1;

        if (changed == changedValue) {
            func_801A3588();
            if ((u8)side == 0) goto clear0;
            if ((u8)side == changed) goto clear1;
            goto cleared;
clear0: D_801DA060=0;goto cleared;
clear1: D_801DA064=0;
cleared:;
        }
        }
        {
            u32 selection=(scratch+(u8)side)[0x2DD];
            register u32 classification __asm__("$2");

            classification = category(selection);
            __asm__("" : "=r"(classification) : "0"(classification));
            after = (u8)classification;
        }

        if (after == 6) func_800501DC((u8)side);
        else (base + (u8)side)[0xAC20] = 0;
        if (before != after) func_801A2CA0(base[0x5F2C], base[0x5F54]);
    }
    return D_8010A5A4 & 0xFFF;
}
