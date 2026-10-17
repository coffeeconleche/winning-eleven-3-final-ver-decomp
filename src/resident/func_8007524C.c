#include "types.h"

/* Partial native descriptor view: observed 18-byte stride, not an ownership
 * or bounds claim. The byte-array views below likewise retain mapped PS1
 * addresses, alignment and aliasing rather than defining new storage. */
typedef struct {
    u8 unknown[12];
    u16 first, last, unknown10;
} Descriptor7524C;
extern Descriptor7524C D_800EF840[], *D_800F1068;
extern u8 D_800FF748[], D_800EF788[], *D_800F0FEC;
extern u8 *func_8001D004(u32);
extern s32 func_8006FAF4(u32,u32,u32);
extern s32 func_8006FBCC(u32,u32,u32);
extern s32 func_8006FB90(u32,u32,u32);
extern s32 func_8006FB30(u32,u32,u32,u32);

/* The observed caller contract supplies one low-byte selector and ignores
 * the result. Native descriptor bounds and roster selectors are not clamped.
 * Keep reloads after helper calls and byte stores: the mapped views can alias.
 * Retained fixed registers are measured matching aids. No empty assembly,
 * extra compiler flags, memory clobbers or fabricated storage are needed. */
void func_8007524C(s32 argument)
{
    u8 *base = D_800FF748;
    u32 normalized = argument & 255;
    u32 side;
    u16 counter;
    register s32 specialX __asm__("$21");
    s32 normalX;
    u32 triple;
    u32 bankBase;
    u8 *out;
    Descriptor7524C *descriptor = &D_800EF840[normalized];

    counter = descriptor->first;
    D_800F1068 = descriptor;
    if (counter <= descriptor->last) {
        u32 product;
        side = normalized;
        product = side * 75;
        specialX = product - 46;
        normalX = product - 41;
        triple = side * 3;
        bankBase = side << 7;
        /* An explicit back-edge keeps decimal reciprocals local to each
         * iteration; an ordinary C loop makes this compiler spill a live
         * coordinate while hoisting its division constant. */
loop_rows:
        out = func_8001D004(side + 0x79);
#define ROW12 (out + (counter - D_800F1068->first) * 12)
        if (counter >= 11u) {
            ROW12[10] = 0x5B;
        } else {
            ROW12[10] = 0x16;
            switch (counter) {
            case 9:
                ROW12[3] = 0x40;
                ROW12[4] = 0x40;
                ROW12[1] = 0x10;
                *(s16 *)(ROW12 + 6) = specialX;
                break;
            case 10:
                ROW12[3] = 0xE8;
                ROW12[4] = 0;
                ROW12[1] = 0x10;
                *(s16 *)(ROW12 + 6) = specialX;
                break;
            default:
                {
                    register u8 *glyph __asm__("$3") = (u8 *)((u32)((counter - D_800F1068->first) * 12) + (u32)out);
                    glyph[3] = (counter + 1) * 8;
                }
                ROW12[4] = 0x70;
                ROW12[1] = 8;
                *(s16 *)(ROW12 + 6) = normalX;
                break;
            }
        }
        if (counter >= 11u) {
            func_8006FAF4(side + 30, counter - D_800F1068->first, 91);
        } else {
            func_8006FAF4(side + 30, counter - D_800F1068->first, 120);
        }
        {
            u8 *row = (u8 *)((triple * 4 - side) * 2U + (u32)base);
            u32 mappingOffset = 0x8E9C;
            u32 rosterOffset = 0xABAA;
            u8 *roster = row + rosterOffset;
            u32 current = counter;
            u32 first = *(roster + current);
            u32 mapped = *(row + mappingOffset + first - 1);
            u8 *attributeBase = D_800EF788;
            register u8 *metadata __asm__("$3") = mapped * 4 + attributeBase;
            D_800F0FEC = (u8 *)((u32)((triple * 4 - side) * 8) + (u32)metadata);
        }
        out = func_8001D004(side + 0x73);
#define ROW24 (out + (counter - D_800F1068->first) * 24)
        if ((u8)(D_800F0FEC[0] / 10u)) {
            ROW24[10] = 0x1D;
            {
                register u8 *glyph __asm__("$3") = (u8 *)((u32)((counter - D_800F1068->first) * 24) + (u32)out);
                glyph[4] = (u8)(D_800F0FEC[0] / 10u) * 8 - 128;
            }
            {
                register u32 ones __asm__("$5") = D_800F0FEC[0];
                register u8 *glyph __asm__("$4") = (u8 *)((u32)((counter - D_800F1068->first) * 24) + (u32)out);
                glyph[16] = (u8)(ones % 10u) * 8 - 128;
            }
            *(s16 *)(ROW24 + 18) = triple * 60 - 94;
        } else {
            ROW24[10] = 0x5B;
            {
                register u32 ones __asm__("$5") = D_800F0FEC[0];
                register u8 *glyph __asm__("$4") = (u8 *)((u32)((counter - D_800F1068->first) * 24) + (u32)out);
                glyph[16] = (u8)(ones % 10u) * 8 - 128;
            }
            *(s16 *)(ROW24 + 18) = triple * 60 - 98;
        }
        {
            u32 colorKey = side + 12;
            u32 middleIndex = counter;
            func_8006FBCC(colorKey, middleIndex - D_800F1068->first, D_800F0FEC[2] * 16 + 48);
            func_8006FAF4(colorKey, middleIndex - D_800F1068->first, D_800F0FEC[2] + 107);
            {
                u8 *row = (u8 *)((triple * 4 - side) * 2U + (u32)base);
                u32 mappingOffset = 0x8E9C;
                u32 rosterOffset = 0xABAA;
                u32 first = *(row + rosterOffset + middleIndex);
                u32 value = *(row + mappingOffset + first - 1);
                u32 selector = side + 16;
                Descriptor7524C *header;
                u32 bank;
                u32 lower;
                if (value < 11u) {
                    header = D_800F1068;
                    bank = side << 7;
                } else {
                    bank = bankBase + 64;
                    header = D_800F1068;
                    value -= 11;
                }
                lower = header->first;
                func_8006FB30(selector, middleIndex - lower, bank, value * 16);
            }
        }
        if (counter >= 11u) {
            func_8006FAF4(side + 16, counter - D_800F1068->first, 105);
        } else {
            func_8006FAF4(side + 16, counter - D_800F1068->first, 8);
        }
        {
            register u8 *row __asm__("$3") = (u8 *)((triple * 4 - side) * 2U + (u32)base);
            register u32 statusOffset __asm__("$5") = 0x88A5;
            register u32 mappingOffset __asm__("$4") = 0x8E9C;
            u32 rosterOffset = 0xABAA;
            u8 *roster = row + rosterOffset;
            u32 current;
            u32 first;
            u32 mapped;
            current = counter;
            first = *(roster + current);
            mapped = *(row + mappingOffset + first - 1);
            if (*(row + statusOffset + mapped) >= 2u) {
                func_8006FAF4(side + 16, counter - D_800F1068->first, 106);
            }
        }
        func_8006FB90(side + 14, counter - D_800F1068->first, D_800F0FEC[1] * 16);
        counter++;
        if (counter <= D_800F1068->last) goto loop_rows;
    }
}
