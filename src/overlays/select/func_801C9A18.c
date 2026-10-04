#include "common.h"

/* Byte - table and halfword access views only; original field meanings, table
 * extents, and source types are unknown. Offsets are PSX 32-bit addresses.
 * The scratch aliases preserve observed absolute accesses rather than claiming
 * storage ownership or adding symbols/data. */
extern u8 D_800FF748[];
extern u8 D_801D1CB8[], D_801D1CB9[], D_801D1CBA[];
extern u8 D_801D1BF8[], D_801D1BF9[];
extern u16 D_801078E6, D_801078E4, D_8010770E, D_8010770C;
extern u16 scratch168 __asm__("0x1F800168");
extern u16 scratch164 __asm__("0x1F800164");
extern u16 scratch166 __asm__("0x1F800166");
extern u16 scratch16C __asm__("0x1F80016C");
extern u16 scratch16E __asm__("0x1F80016E");
extern u8 scratch16A __asm__("0x1F80016A");
extern u8 scratch16B __asm__("0x1F80016B");
extern u32 scratch15C __asm__("0x1F80015C");

#define SH(offset, value) (*(u16 *)(scratch + (offset)) = (value))
#define SB(offset, value) (*(u8 *)(scratch + (offset)) = (value))
#define SW(offset, value) (*(u32 *)(scratch + (offset)) = (value))
#define WRITE_BYTES_170_172() do { SB(0x170, 128); SB(0x171, 128); SB(0x172, 128); } while (0)

/* Measured declarations retain short arithmetic/capture lifetimes.
 * They contain no emitted assembly; no frame reservation is needed. */
void func_801C9A18(u32 character, u32 x, u32 y, u32 selector)
{
    register u32 captured __asm__("$10") = character;
    u8 *base = D_800FF748;
    /* All range checks narrow after addition, preserving byte wrap. */
    u32 special = (u8)(character + 128);
    u8 *scratch = (u8 *)0x1F800000;
    if (special < 5) {
        s32 off;
        u32 half;
        u32 address;
        u32 first;
        register u32 second __asm__("$3");
        captured = (u8)captured;
        off = (captured - 128) * 3;
        scratch16A = D_801D1CB8[off];
        scratch16B = D_801D1CB9[off];
        half = D_801D1CBA[off];
        scratch166 = 16;
        scratch164 = half;
        if (special < 4) {
            scratch168 = 28;
            character &= 127;
            if (captured == 131) {
                first = D_801078E6;
                second = D_801078E4;
                goto directLookup;
            }
            address = (character + 125) * 4;
            goto tableLookup;
        }
        else {
            scratch168 = 23;
            if (!selector) goto fallbackLookup;
            address = selector * 4;
        }
    tableLookup:
        {
            u8 *p = (u8 *)(address + (u32)base);
            scratch16C = *(u16 *)(p + 0x7FA6);
            scratch16E = *(u16 *)(p + 0x7FA4);
        }
        goto colorsFirst;
    fallbackLookup:
        first = D_8010770E;
        second = D_8010770C;
    directLookup:
        scratch16C = first;
        scratch16E = second;
    colorsFirst:
        WRITE_BYTES_170_172();
        SW(0x15C, 0);
        SH(0x160, x);
        goto finish;
    }
    else if ((u8)(character + 122) < 26) {
        register u32 code __asm__("$3");
        register u32 off __asm__("$3");
        u32 page;
        scratch168 = 23;
        scratch164 = 10;
        scratch15C = 0;
        scratch166 = 16;
        {
            u8 *p;
            u32 f;
            u32 second;
            if (!selector) goto fallback0;
            p = (u8 *)(selector * 4 + (u32)base);
            scratch16C = *(u16 *)(p + 0x7FA6);
            scratch16E = *(u16 *)(p + 0x7FA4);
            goto done0;
        fallback0:
            f = D_8010770E;
            second = D_8010770C;
            scratch16C = f;
            scratch16E = second;
        done0:
           ;
        }
        {
            register u32 color __asm__("$2") = 128;
            code = (u8)captured;
            SB(0x170, color);
            SB(0x171, color);
            SB(0x172, color);
        }
        SH(0x160, x);
        SH(0x162, y);
        if (code < 146) {
            {
                u32 adj = code - 134;
                off = adj * 10 - 128;
            }
            page = 96;
        }
        else if (code == 159) {
            SB(0x16A, 216);
            SB(0x16B, 64);
            return;
        }
        else {
            {
                u32 adj = code - 146;
                off = adj * 10;
            }
            page = 112;
        }
        SB(0x16A, off);
        SB(0x16B, page);
        return;
    }
    else if ((u8)(character + 90) < 10) {
        scratch168 = 23;
        scratch164 = 8;
        scratch15C = 0;
        scratch166 = 16;
        {
            u8 *p;
            u32 f;
            u32 second;
            if (!selector) goto fallback1;
            p = (u8 *)(selector * 4 + (u32)base);
            scratch16C = *(u16 *)(p + 0x7FA6);
            scratch16E = *(u16 *)(p + 0x7FA4);
            goto done1;
        fallback1:
            f = D_8010770E;
            second = D_8010770C;
            scratch16C = f;
            scratch16E = second;
        done1:
           ;
        }
        WRITE_BYTES_170_172();
        {
            u32 byte = (u8)captured;
            byte = byte * 8 - 1448;
            SB(0x16A, byte);
        }
        SH(0x160, x);
        SH(0x162, y);
        SB(0x16B, 112);
        return;
    }
    else {
        u32 code;
        code = (u8)captured;
        if (code == 176) {
            scratch168 = 23;
            scratch164 = 6;
            scratch15C = 0;
            scratch166 = 16;
            {
                u8 *p;
                u32 f;
                u32 second;
                if (!selector) goto fallback2;
                p = (u8 *)(selector * 4 + (u32)base);
                scratch16C = *(u16 *)(p + 0x7FA6);
                scratch16E = *(u16 *)(p + 0x7FA4);
                goto done2;
            fallback2:
                f = D_8010770E;
                second = D_8010770C;
                scratch16C = f;
                scratch16E = second;
            done2:
               ;
            }
            WRITE_BYTES_170_172();
            SH(0x160, x + 1);
            SB(0x16A, 96);
            SH(0x162, y);
            SB(0x16B, 16);
            return;
        }
        else if ((u8)(character + 80) < 48) {
            u32 off;
            scratch168 = 23;
            scratch164 = 8;
            scratch15C = 0;
            scratch166 = 16;
            {
                u8 *p;
                u32 f;
                u32 second;
                if (!selector) goto fallback3;
                p = (u8 *)(selector * 4 + (u32)base);
                scratch16C = *(u16 *)(p + 0x7FA6);
                scratch16E = *(u16 *)(p + 0x7FA4);
                goto done3;
            fallback3:
                f = D_8010770E;
                second = D_8010770C;
                scratch16C = f;
                scratch16E = second;
            done3:
               ;
            }
            {
                u32 color = 128;
                off = captured + 79;
                SB(0x170, color);
                SB(0x171, color);
                SB(0x172, color);
            }
            SH(0x160, x);
            SH(0x162, y);
            if ((u8)off < 31) {
                SB(0x16A, off * 8);
                SB(0x16B, 80);
            }
            else {
                register u32 byte __asm__("$2") = (captured + 48) * 8;
                SB(0x16A, byte);
                SB(0x16B, 96);
            }
            return;
        }
        else {
            u32 off = (code - 32) * 2, half;
            scratch16A = D_801D1BF8[off];
            if (code < 65) scratch16B = 16;
            else if (code < 97) scratch16B = 32;
            else scratch16B = 48;
            {
                u32 pairOffset = (u8)captured - 32;
                half = D_801D1BF9[pairOffset * 2];
            }
            SH(0x166, 16);
            SH(0x168, 23);
            SH(0x164, half);
            if (selector) {
                u8 *p = (u8 *)((u32)base + selector * 4);
                u32 first = *(u16 *)(p + 0x7FA6);
                SH(0x16C, first);
                SH(0x16E, *(u16 *)(p + 0x7FA4));
            }
            else {
                u16 f = *(u16 *)(base + 0x7FC6), s = *(u16 *)(base + 0x7FC4);
                SH(0x16C, f);
                SH(0x16E, s);
            }
            {
                register u32 color __asm__("$2") = 128;
                register u32 tailCode __asm__("$3") = (u8)captured;
                SB(0x170, color);
                SB(0x171, color);
                SB(0x172, color);
                SW(0x15C, 0);
                SH(0x160, x);
                if (tailCode == 94) {
                    SH(0x162, y - 2);
                    return;
                }
            }
        }
    }
finish:
    SH(0x162, y);
}
