/* Refresh the SELECT team list's glyph, long-name and short-name rows.
  * PS1 address views and compiler captures retain the audited native behavior;
  * see analysis.md for API contracts, arithmetic proof and omission evidence. */
#include "common.h"
extern u8 D_800FF748[], D_800C8568[];
extern u8 D_801D86F2;
extern u8 D_801D8B20[],D_801D8B21[],D_801D8B22[],D_801D8B23[],D_801D8B24[],D_801D8B26[],D_801D8B27[];
extern u8 D_801D9623[],D_801D97B8[];
extern u8 *D_801D1E78[];
/* Full-word machine call views: native masks/clean returns are proved in
 * analysis.md. Existing provisional C helper types still need unification. */
extern u8 *func_8001D004(u32);
extern u8 *func_801A9540(u8 *,s32,u8,s32,s32);
extern u8 *func_801B0368(u8 *,s32);
extern u32 func_801B4FA8(u32);

void func_801AF480(u32 input)
{
    register u32 firstRow __asm__("$18")=input;
    register u8 *base=D_800FF748;
    u8 *out;
    s32 i;
    register u8 *clearRow;
    register s32 rowOffset;
    /* Refresh the nine eleven-record glyph rows. */
    for(i=0;i<9;i++) {
        u8 *glyph=func_8001D004(i+0x30B5);
        register s32 j=10;
        register u8 *clear __asm__("$3")=glyph+120;
        s32 index;
        do {
            clear[10]=91;
            j--;
            clear-=12;
        } while(j>=0);
        index=i+(u8)firstRow;
        if(index<32) {
            s32 offset=index*10;
            if(D_801D8B20[offset]!=255) {
                u32 value;
                {
                    register s32 style __asm__("$2")=14;
                    glyph=func_801A9540(glyph,D_801D8B22[offset],2,176,style);
                }
                if(D_801D86F2==0) value=D_801D8B23[offset];
                else value=D_801D8B26[offset];
                glyph=func_801B0368(glyph,value);
                if(D_801D86F2==0) {
                    {
                        register s32 index=i+(u8)firstRow;
                        register s32 fivefold __asm__("$16");
                        fivefold=index*5;
                        __asm__("" : : "r"(fivefold));
                        offset=fivefold*2;
                    }
                    glyph=func_801B0368(glyph,*(u16 *)(D_801D8B24+offset));
                    func_801B0368(glyph,D_801D8B27[offset]);
                }
            }
        }
    }
    {
        register u8 space=32;
        u8 separator;
        register u8 command;
        i=0;
        separator=11;
        command=9;
        rowOffset=0;
        clearRow=D_801D9623;
        /* Build the nine class/name control strings, 45 bytes per row. */
        for(;i<9;rowOffset+=45,i++,clearRow+=45) {
            register s32 j=44;
            register u8 *clear __asm__("$3")=clearRow+44;
            s32 index;

            do {
                 *clear=0;
                j--;
                clear--;
            } while(j>=0);
            {
                register u8 *rows __asm__("$9")=D_801D9623;
                index=i+(u8)firstRow;
                out=(u8 *)(rowOffset+(u32)rows);
            }
            if(index<32) {
                u32 id=D_801D8B20[index*10];
                if(id!=255) {
                    register u32 team=func_801B4FA8(id);
                    register u8 *record;
                    register u32 encoded;
                    register s32 number __asm__("$3");
                    register s32 next __asm__("$6");
                    register u32 digit __asm__("$2");
                    register u8 *mapping __asm__("$4");
                    u8 *name;
                    u32 byte;
                    {
                        u8 *lookup=base;
                        u32 mapped;
                        register u32 address __asm__("$2");
                        lookup+=team;
                        mapped=lookup[0xAB80];
                        address=mapped*36;
                        address=(u32)base+address;
                        encoded=*(u8 *)(address+0x8F24U);
                    }
                    if((encoded&0xC0)==0x40) digit=0xCA;
                    else {
                        number=encoded&63;
                        next=number+1;
                        if(next<10) {
                             *out++=0xC6;
                             *out++=space;
                            digit=number+49;
                        } else {
#if defined(_PSYQ) && defined(__mips__) && defined(__GNUC__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_DIVISION)
                            {
                                /* GCC 2 register-pair scalarization. The initialized full
                                 * product remains in HI/LO; this guarded projection must
                                 * consume MFHI, without a memory spill. It is not a
                                 * portable little-endian union layout. The ordinary
                                 * signed /10 and %10 reference is below. */
                                union { long long full; struct { s32 high; } words; } product;
                                register s32 high __asm__("$9");
                                register s32 quotient __asm__("$3");
                                register s32 sign;
                                register s32 multiplier __asm__("$2")=0x66666667;
                                product.full=(long long)next*multiplier;
                                multiplier=0xC6;
                                 *out++=multiplier;
                                sign=next>>31;
                                high=product.words.high;
                                __asm__("" : : "r"(high));
                                quotient=(high>>2)-sign;
                                 *out++=quotient+48;
                                digit=next-quotient*10+48;
                            }
#else
                             *out++=0xC6;
                             *out++=next/10+48;
                            digit=next%10+48;
#endif
                        }
                    }
                     *out++=digit;
                     *out++=space;
                     *out++=separator;
                     *out++=255;
                     *out++=command;
                     *out++=109;
                    {
                        register u32 code __asm__("$2")=30;
                        mapping=base+team;
                         *out++=code;
                    }
                    mapping+=0xAB80;
                    record=base+*mapping*36;
                     *out++=record[0x8F25];
                     *out++=space;
                     *out++=separator;
                     *out++=1;
                     *out++=command;
                     *out=130;
                    record=base+*mapping*36;
                    name=D_801D1E78[record[0x8F25]];
                    __asm__("");
                    out++;
                    do {
                        byte=*name++;
                         *out++=byte;
                    } while(byte!=0);
                }
            }
        }
        {
            register s32 thirdOffset;
            register u8 *thirdBase;
            register u8 *thirdRow __asm__("$5");
            i=0;
            thirdOffset=0;
            thirdBase=D_801D97B8;
            thirdRow=thirdBase;
            /* Refresh the short names, preserving the native maximum of eight bytes. */
            for(;i<9;thirdOffset+=45,i++,thirdRow+=45) {
                register s32 j=44;
                register u8 *clear __asm__("$3")=thirdRow+44;

                s32 index;
                do {
                     *clear=0;
                    j--;
                    clear--;
                } while(j>=0);
                index=i+(u8)firstRow;
                out=(u8 *)(thirdOffset+(u32)thirdBase);
                if(index<32) {
                    register s32 fivefold=index*5;
                    register u32 field;
                    register u32 id;
                    register s32 empty;
                    field=fivefold*2;
                    id=D_801D8B20[field];
                    __asm__("" : : "r"(id));
                    empty=255;
                    if(id!=empty) {
                        register s32 count=1;
                        register s32 special=35;
                        if(id==special) {
                            out[0]=29;
                            out[1]=D_801D8B21[field];
                        } else {
                            register u32 width __asm__("$2")=id*11;
                            register u8 *source;
                            u32 byte;
                            __asm__("");
                            field=D_801D8B21[field];
                            width*=16;
                            source=D_800C8568;
                            field*=8;
                            field=(u32)source+field;
                            source=(u8 *)(width+field);
                        copyName:
                            byte=*source++;
                             *out++=byte;
                            if(byte!=0) {
                                /* Compare the old count, then increment as in the delay slot. */
                                s32 old=count;
                                count++;
                                if(old<8) goto copyName;
                            }
                        }
                    }
                }
            }
        }
    }
}
