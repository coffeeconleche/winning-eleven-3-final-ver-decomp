#include "common.h"
extern u8 D_800FF748[], D_80123020[];
extern u8 D_800EF78B[];
extern u16 *D_80123044;
extern void func_8006FA60(u32,u32);
extern void func_8006FAF4(u32,u32,u32);
/* Word parameter access view: only the observed lookups are byte-narrowed.
* Original record meanings and complete helper APIs remain unknown.
* Five scoped bindings and four empty uses survived joint minimization;
* they retain real captures and allocation, with no memory clobber or spill.
* The 40-byte frame is natural, with no unused frame reservation. */
void func_80121670(u32 arg) {
    register u32 incoming __asm__("$6")=arg;
    u32 saved;
    u32 side;
    u8 *base;
    u8 *scratch;
    saved=incoming;
    side=(u8)saved;
    {
        u32 firstId=side+16;
        u32 firstCode=11;
        u32 other;
        D_80123044=(u16 *)(D_80123020+side*18);
        other=*(u8 *)0x1F8002E0;
        __asm__("" : "=r"(incoming) : "0"(incoming));
        other^=incoming;
        func_8006FA60(firstId,firstCode);
        other=(u8)other;
        func_8006FA60(other+28,24);
    }
    func_8006FAF4(7,0,139);
    base=D_800FF748;
    scratch=(u8 *)0x1F800000;
    {
        u16 *record=D_80123044;
        u32 current=record[5];
        u32 minimum=record[6];
        if (current>=minimum && record[7]>=current) {
            if (current>=11) func_8006FAF4(side+14,current-minimum,105);
            else func_8006FAF4(side+14,current-minimum,8);
            {
                register u32 selected __asm__("$16")=(u8)saved;
                u32 row=selected*22;
                u8 *mapping;
                {
                    u8 *rowBase=(u8 *)(row+(u32)base);
                    u32 attributeOffset=0x88A5;
                    u16 *record2;
                    u32 mapOffset;
                    u32 current2;
                    u32 mapped;
                    u8 *attributes;
                    record2=D_80123044;
                    mapOffset=0x8E9C;
                    current2=record2[5];
                    mapping=rowBase+mapOffset;
                    mapped=mapping[current2];
                    attributes=rowBase+attributeOffset;
                    if (attributes[mapped]>=2) {
                        func_8006FAF4(selected+14,current2-record2[6],106);
                    }
                }
                { u32 sideNext;
                    __asm__("" : "=r"(saved) : "0"(saved));
                    sideNext=(u8)saved;
                    if ((u32)(scratch[0x2E1]-1)<2) {
                        u16 *record3=D_80123044;
                        u32 current3=record3[5];
                        register u32 index __asm__("$2")=mapping[current3];
                        register u32 amount __asm__("$3");
                        u8 *entryAddress;
                        u32 other;
                        __asm__("" : : "r"(index), "r"(mapping));
                        amount=index*3;
                        entryAddress=(u8 *)((u32)scratch+selected);
                        other=entryAddress[0x2DD];
                        amount*=2;
                        amount+=other*132;
                        if (*(u8 *)((u32)base+amount+0x93A9)==1) {
                            func_8006FAF4(selected+14,current3-record3[6],106);
                        }
                        __asm__("" : "=r"(saved) : "0"(saved));
                        sideNext=(u8)saved;
                    }
                    {
                        u32 side4=sideNext;
                        u32 row4=side4*11;
                        u8 *rowBase4=(u8 *)(row4*2+(u32)base);
                        u16 *record4=D_80123044;
                        u32 offset4=0x8E9C;
                        u32 current4=record4[5];
                        u32 mapped4;
                        rowBase4+=offset4;
                        mapped4=rowBase4[current4];
                        row4*=8;
                        if (D_800EF78B[row4+mapped4*4]&16) {
                            func_8006FAF4(side4+14,current4-record4[6],106);
                        }
                    }
                }
            }
        }
    }
    {
        u32 index=0;
        register u32 selected __asm__("$16")=(u8)saved;
        u32 row=selected*11;
        u32 mappingOffset;
        u8 *mapping;
        u32 rowOffset;
        u32 callIndex;
        { u8 *rowBase=(u8 *)(row*2+(u32)base);
            mappingOffset=0x8E9C;
            mapping=rowBase+mappingOffset; }
        rowOffset=row*8;
        /* Explicit recovered back-edge avoids hoisting the resident flags address
        * out of either per-entry path. The table remains unchecked. */
        loop:
        {
            callIndex=(u16)index;
            if (callIndex<11) {
                if (D_800EF78B[rowOffset+mapping[callIndex]*4]&1) {
                    func_8006FAF4(selected+26,callIndex,23);
                } else {
                    func_8006FAF4(selected+26,callIndex,22);
                }
            } else {
                u32 flags=D_800EF78B[rowOffset+mapping[callIndex]*4];
                if (flags&1) {
                    if (flags&4) func_8006FAF4(selected+26,callIndex,23);
                    else func_8006FAF4(selected+26,callIndex,22);
                } else func_8006FAF4(selected+26,callIndex,23);
            }
            index++;
        }
        if ((u16)index<22) goto loop;
    }
}
