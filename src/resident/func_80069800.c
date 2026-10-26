#include "common.h"

extern s16 func_8005A76C(s32, s32, s16);
extern s32 func_80067E7C(u8 *);
extern s32 func_8001E6B8(s32);
extern void func_800A3450(u8 *);

#define B(o) record[o]
#define U(o) scratch[(o)/2]
#define S(o) (*(s16 *)((u8 *)scratch + (o)))
#define SB(o) (((u8 *)((u32)scratch + (u32)(o)))[0])
#define CURRENT (*(u8 **)((u8 *)scratch + 0x2F4))
#define BALL(o) (*(s16 *)(CURRENT + (o)))

/* Flat guest views require valid mapped/aligned records and scratch accesses
 * at the actual raw byte indices. Persistent F8/FC, the current-record
 * pointer and the record halfword fields keep their values across helper
 * callbacks; the selector byte is re-read after every call. func_8001E6B8
 * returns a signed remainder, so both products and the shifted 0x3DE update
 * may be negative; every halfword store wraps. The two register bindings are
 * placement aids for ordinary initialized locals (the scratch status byte and
 * the first midpoint halfword); they introduce no value of their own, and
 * removing them only changes register allocation, not the computed logic.
 */
void func_80069800(u8 *record)
{
    s16 direction = -1;
    u16 *scratch = (u16 *)0x1F800000;
    s32 selector;
    s32 weight;
    s32 status;
    s32 value;
    s32 newF8;
    s32 factor;

    if (B(0x399) == 0) direction = 1;
    func_800A3450(record);
    selector = *(u8 *)0x1F80030B;
    switch (selector) {
    case 0: {
        register s32 first __asm__("$2");

        first = S(0x310 + 2 * B(0x399));
        newF8 = (first + S(0x30C + 2 * B(0x399))) / 2;
    }
storeF8:
        U(0xF8) = newF8;
        break;
    case 1:
    case 2:
    case 3:
        U(0xFC) = func_8005A76C((s16)U(0xFC), BALL(6), 1);
        *(s16 *)(record + 0x3DE) = 0;
        *(s16 *)(record + 0x3DC) = 0;
        break;
    case 4: {
        register s32 mode __asm__("$2");

        U(0xFC) = S(0xFC) / 3;
        if (func_80067E7C(record) == 0) {
            U(0xF8) = direction * 11784;
        } else {
            if ((u8)(B(0x3DA) % 3) == 0) {
                mode = SB(0x2FF + B(0x398));
                if (mode == 0) {
                    value = func_8001E6B8(4);
                    factor = direction * 256;
                    *(s16 *)(record + 0x3DC) = value * factor;
                } else {
                    if (mode >= 0) {
                        if (mode < 3) {
                            value = func_8001E6B8(4);
                            factor = direction * 336;
                            *(s16 *)(record + 0x3DC) = value * factor;
                        }
                    }
                }
                *(s16 *)(record + 0x3DE) = func_8001E6B8(9) * 256 - 0x400;
            }
            U(0xF8) = U(0xF8) + *(u16 *)(record + 0x3DC);
        }
        U(0xFC) = U(0xFC) + *(u16 *)(record + 0x3DE);
        U(0xF8) = func_8005A76C((s16)U(0xF8), BALL(2) + 0x800, 1);
        value = (s16)U(0xF8);
        if (__builtin_abs(value) >= 0x2E09) {
            newF8 = value < 0 ? -0x2E08 : 0x2E08;
            goto storeF8;
        }
        break;
    }
    case 5:
        U(0xFC) = S(0xFC) / 3;
        break;
    }
    weight = 0;
    switch (SB(0x30B)) {
    case 0:
    case 1:
        break;
    case 2:
        weight = 2;
        break;
    case 3:
        weight = 4;
        break;
    case 4:
    case 5:
        weight = 8;
        break;
    }
    status = SB(0x2FD + B(0x398));
    if (status < 0x10) {
        if (status >= 0xB) {
            U(0xF8) = func_8005A76C((s16)U(0xF8), S(0x30C + 2 * B(0x399)), weight);
        }
    }
}
