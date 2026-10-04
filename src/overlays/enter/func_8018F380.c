#include "common.h"

extern u8 D_800FF748[], D_80108667;
extern u16 D_80191864[];
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32), func_8018F88C(void);

/* Callback selection from byte flags and scratch state; original meanings and
 * helper prototypes remain uncertain. The mapped-index search is unbounded and
 * uses wrapping word arithmetic, followed by signed division rounding to zero.
 * The four measured register views retain callback/offset and cursor lifetimes;
 * removing any changes the retail register allocation. The empty memory
 * constraint keeps the triggered third callback separate from the untriggered
 * shared callback and emits no instructions. No frame reservation is used. */
void func_8018F380(void)
{
    u8 trigger = 0;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    register s32 offset __asm__("$16");
    register s32 code __asm__("$4");
    s32 mode;
    register u32 flags;
    if (func_8001E6B8(2) != 0) {
        if (*(u8 *)0x1F8002E1 == 2 && (D_80108667 & 15) == 0 && func_8001E6B8(2) != 0) {
            if (*(u8 *)0x1F8002E5 == 0) {
                offset = (u8)func_8001E6B8(2)*3;
                func_800AB620(offset+0xBF6);
                func_800AB620(offset+0xBF7);
                code = offset+0xBF8;
            } else {
                func_800AB620(0xC0B);
                func_800AB620(0xC0C);
                code = 0xC0D;
            }
            goto prelude_call;
        }
        if (scratch[0x2E5] == 0) {
            func_800AB620(0xBEA);
            func_800AB620(0xBEB);
            code = 0xBEC;
        } else if (func_8001E6B8(2) != 0) {
            func_800AB620(0xBFC);
            func_800AB620(0xBFD);
            code = 0xBFE;
        } else {
            func_800AB620(0xC08);
            func_800AB620(0xC09);
            code = 0xC0A;
        }
        trigger = 1;
        func_800AB620(code);
        __asm__("" : : : "memory");
        goto dispatch;
    }
    if (*(u8 *)0x1F8002E5 == 0) {
        if (*(u8 *)0x1F8002E4 == 0) {
            func_800AB620(0xBED);
            func_800AB620(0xBEE);
            code = 0xBEF;
        } else {
            offset = (u8)func_8001E6B8(2)*3;
            func_800AB620(offset+0xBF0);
            func_800AB620(offset+0xBF1);
            code = offset+0xBF2;
        }
    } else if (*(u8 *)0x1F8002E4 == 0) {
        offset = (u8)func_8001E6B8(2)*3;
        func_800AB620(offset+0xBFF);
        func_800AB620(offset+0xC00);
        code = offset+0xC01;
    } else {
        func_800AB620(0xC05);
        func_800AB620(0xC06);
        code = 0xC07;
    }
prelude_call:
    func_800AB620(code);
dispatch:
    mode = scratch[0x2E1];
    switch (mode) {
    case 0:
        code = 0xC12;
        goto mode03;
    case 3:
        code = 0xC13;
mode03:
        func_800AB620(code);
        if ((u8)trigger != 0) func_8018F88C();
        return;
    case 2: {
        u32 raw = base[0x8F1F];
        if ((raw&64) == 0) {
            flags = raw & 15;
            if (flags == 0) {
                register u8 *row __asm__("$3")=(u8 *)((u32)base+base[0xABA0]*36);
                if (row[0x8F26] == 0) {
                    func_800AB620(0xC14);
                    code = 0xC15;
                    goto last_call;
                }
                func_800AB620(0xC16);
                {
                    register u32 i __asm__("$4");
                    register u32 mapped;
                    register u32 first = base[0xAB80];
                    mapped = base[0xABA0];
                    i = 1;
                    if (first != mapped) {
                        do { } while (((u8 *)((u32)base + i++))[0xAB80] != mapped);
                    }
                    i--;
                    {
                        register s32 rounded = (s32)i;
                        if ((s32)i < 0) rounded = (s32)(i + 3);
                        code = rounded >> 2;
                        func_800AB620(code + 0xC20);
                    }
                }
                row = (u8 *)((u32)base+base[0xABA0]*36);
                code = row[0x8F26]+0xC3C;
                goto last_call;
            }
            func_800AB620(D_80191864[flags]);
            code = (base[0x8F23]>>4)+0xC3B;
            goto last_call;
        }
        if ((base[0x8F22]>>4) == 3 && func_8001E6B8(2) != 0) {
            code = 0xC3A;
            if ((base[0x8F1F]&15) != 0) goto last_call;
            code = 0xC39;
            goto last_call;
        }
        flags = base[0x8F1F]&15;
        if (flags == 0) {
            func_800AB620((base[0x8F22]>>4)*2+0xC18);
            code = (base[0x8F22]>>4)*2+0xC19;
            goto last_call;
        }
        func_800AB620(D_80191864[flags]);
        switch (base[0x8F22]>>4) {
        case 0: code = 0xC34; break;
        case 1: code = 0xC35; break;
        case 2: code = 0xC37; break;
        case 3: code = 0xC38; break;
        default: return;
        }
        break;
    }
    case 1:
        func_800AB620(0xC3B);
        code = base[0x8F22]+0xC3C;
        break;
    default: return;
    }
last_call:
    func_800AB620(code);
}
