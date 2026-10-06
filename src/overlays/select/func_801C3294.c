#include "common.h"

extern u8 D_800FF748[];
extern u8 stateByte __asm__("0x1F80029B");
extern u8 D_801D8A50, D_801D4298, D_801D4299, D_801D429B, D_801D429C;
extern u16 D_8010A5A4;
extern u8 *D_801D5848[];
/* Ordered byte reload at the same scalar address, not an I/O classification. */
extern volatile u8 selectionRead __asm__("D_801D4298");

extern void func_801C49F0(u32), func_801C3A6C(void), func_800AB620(s32);
extern u8 func_801C405C(u32);
extern u32 func_8006EC80(u32);
extern void func_80192520(u32), func_801C3888(s32), func_8018E538(u32);
extern void func_8004FAC0(u32, u32);
/* Full-word call-site views: selected fields narrow inside the helpers.
 * These are not claims about their complete original prototypes. */
extern void func_801C4FE0(u32, u32, s32, s32, s32, s32, s32, s32,
                         u32, u32, u32, u32, u32, u32, u32, u32, u32, u32);
extern void func_801942E0(u32, u8 *, s32, s32, s32, u32,
                         u32, s32, u32, u32, u32, u32);

/* Displacement-only access view, never a local allocation or complete object.
 * Field meanings and the complete workspace layout remain unknown. */
typedef struct {
    u8 unknown0[0x5DC4];
    u8 flag5DC4;
    u8 unknown5DC5[0x4E11];
    u16 halfABD6;
    u8 byteABD8, byteABD9, byteABDA;
} WorkView;

void func_801C3294(void) {
    u32 state = stateByte;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 selected;
    u32 fade;

    switch (state) {
    case 0:
        D_801D8A50 = 1;
        func_801C49F0(1);
        selected = D_801D4298;
        scratch[0x2A2] = 0;
        if (selected != 0 && selected != 7) {
            if (selected == 8)
                ((WorkView *)base)->flag5DC4 = 0;
            selected = D_801D4298;
            /* Empty identities retain the measured full-word capture and
             * later byte narrowing; they emit no instructions or clobbers. */
            __asm__("" : "=r"(selected) : "0"(selected));
            scratch[0x29B] = 1;
            if (selected == 3 || selected == 4 || (u8)selected == 6)
                scratch[0x29B] = 2;
        } else {
            scratch[0x29B] += 2;
        }
        break;
    case 1:
        func_801C3A6C();
        scratch[0x29B]++;
        /* Fall through without rereading the switch entry. */
    case 2:
        selected = D_801D4298;
        if (selected != 0 && selected != 7) {
            if (!D_801D429B) {
                scratch[0x330] = 0;
                D_801D429B = 18;
            }
            func_801C4FE0(3, 0x60000000, 0, 0, 400, 253, -120,
                         D_801D4298 * 14 - 70, 255, 255, 255,
                         0, 0, 0, D_801D429B, 23, 0, 1);
            fade = D_801D429B;
            {
                u32 step = fade / 5u + 1;
                u32 remaining = fade - step;
                D_801D429B = remaining;
                /* Test the stored byte, including its wrapping semantics. */
                if (!(u8)remaining) {
                    func_801C4FE0(3, 0x60000000, 0, 0, 400, 253, -120,
                                 D_801D4298 * 14 - 70, 255, 255, 255,
                                 0, 0, 0, 0, 23, 0, 0);
                    state = scratch[0x29B];
                    scratch[0x2A2] = 128;
                    scratch[0x29B] = state + 1;
                }
            }
        } else if (func_801C405C(1)) {
            scratch[0x29B]++;
        }
        break;
    case 3:
    {
        u32 next;
        D_8010A5A4 = func_8006EC80(0);
        func_801C49F0(0);
        switch (D_8010A5A4) {
        case 0x4000:
            func_800AB620(0x50D);
            selected = D_801D4298;
            next = selected < 8 ? selected + 1 : selected - 8;
            goto writeSelection;
        case 0x1000:
            func_800AB620(0x50D);
            next = D_801D4298;
            if (next)
                next--;
            else
                next = 8;
        writeSelection:
            D_801D4298 = next;
            break;
        case 0x40:
            D_801D4298 = 0;
            /* Fall through after the byte store. */
        case 0x20:
            if (!D_801D4298)
                func_80192520(0);
            {
                u32 raw = D_801D4298;
                __asm__("" : "=r"(raw) : "0"(raw));
                if (raw == 3 || raw == 4 || (u8)raw == 6) {
                    /* Preserve the separate original byte reload, including
                     * its position before the scratch-state store. */
                    selected = selectionRead;
                    scratch[0x29B] = 0;
                    scratch[0x29A] = selected + 16;
                } else {
                    scratch[0x29B]++;
                }
            }
            ((WorkView *)base)->byteABDA = 0;
            func_800AB620(D_8010A5A4 == 0x40 ? 0x529 : 0x528);
            break;
        }
        if (D_8010A5A4) {
            func_801C3888((s8)D_801D4298);
            func_801942E0(0, D_801D5848[D_801D4298], -156, 62, 312,
                         0, 0, 0, 0, 3, 1, 1);
        }
        break;
    }
    case 4:
        selected = D_801D4298;
        if (selected == 0 || selected == 7) {
            if (func_801C405C(0))
                scratch[0x29B]++;
        } else {
            func_801C4FE0(3, 0x60000000, 0, 0, 400, 253, -120,
                         selected * 14 - 70, 255, 255, 255,
                         0, 0, 0, D_801D429C, 23, 0, 1);
            {
                u32 before = D_801D429C;
                u32 after = before + 1;
                after += before >> 2;
                D_801D429C = after;
                if ((u8)after >= 24) {
                    D_801D429C = 1;
                    func_8018E538(0);
                    state = scratch[0x29B];
                    scratch[0x2A2] = 0;
                    scratch[0x29B] = state + 1;
                }
            }
        }
        break;
    case 5:
        if (D_801D4298 == 8) {
            scratch[0x330] = 0;
            ((WorkView *)base)->halfABD6 = 0;
            func_8004FAC0(0, 0);
            ((WorkView *)base)->byteABD9 = 0;
        }
        {
            u32 current = D_801D4298;
            ((WorkView *)base)->byteABDA = 0;
            scratch[0x29B] = 0;
            if (!current) {
                D_801D4299 = 1;
                scratch[0x29A] = 0;
            } else {
                scratch[0x29A] = current + 16;
            }
        }
        break;
    }
}
