#include "common.h"
/*
 * Match: GCC 2.7.2 -quiet -O2 -G0, 1,720 bytes; natural 120-byte frame.
 * The original +0x48 stack halfword is an actual narrowed input capture, not
 * padding: negate as an unsigned word, store its low half, and reread it at
 * each of the observed setup points. Access views need no volatile qualifier.
 *
 * Fourteen initial submissions, three four-iteration loops (the first submits
 * twice per iteration), then one final record submission preserve 31 dynamic
 * helper calls. Records advance by 45 bytes; doubled unsigned halfword offsets
 * and subtraction wrap as words before the helpers consume narrower fields.
 * Complete record meanings and helper prototypes remain unknown. The word call
 * views intentionally preserve negative argument words rather than inventing
 * early caller narrowing. Return values are ignored and this function returns 0.
 *
 * Eighteen scoped bindings and four empty actual-value/identity sites retain
 * allocation, captures and constant setup without instructions, extra accesses
 * or clobbers.
 * Joint removal matters: removing the first loop's three argument bindings and
 * both argument fences together matches, although bindings alone do not. No
 * synthetic reservations, symbol/table additions or output patches are used.
 * Minimization measured 77 baseline single removals, four grouped variants,
 * then 67 reduced-source singles and all 231 remaining pairs. No final pair
 * removal matched. The final source has no volatile access qualifiers.
 */
extern void func_80193FB4(u32,u32,u32,s32,s32,u32,u32,u32,u32,u32,u32,u32,u32,u32,u32,u32,u32);
extern void func_801942E0(u32,u8*,s32,s32,u32,u32,u32,u32,u32,u32,u32,u32);
extern u8 D_801D94E8[];
s32 func_801B45CC(u32 input) {
    register s32 count __asm__("$23")=0;
    register u32 negated __asm__("$4")=0-input;
    u16 negative;
    *(u16 *)&negative=(u16)negated;
    {
    register u32 x;
    func_80193FB4(2,0x30ac,0,-228,-8,29,0,4096,4096,0,0,128,128,128,0,1,1);
    func_80193FB4(3,0x30a1,0x50000000,21,11,12,0,4096,4096,0,0,128,128,128,0,1,1);
    func_80193FB4(4,0x30a1,0x60000000,24,13,12,0,4096,4096,0,0,128,128,128,0,4,1);
    func_80193FB4(5,0x30a2,0,0,0,12,0,4096,4096,0,0,128,128,128,0,4,1);
    func_80193FB4(6,0x30aa,0,0,0,12,0,4096,4096,0,0,128,128,128,0,4,1);
    func_80193FB4(7,0x30a3,0x70000000,0,0,12,0,4096,4096,0,0,255,255,255,0,5,1);
    func_80193FB4(8,0x30a3,0x40000000,3,3,12,0,4096,4096,0,0,0,0,0,0,5,1);
    x=*(u16 *)&negative;
    func_80193FB4(9,0x30a4,0x60000000,x,0,12,0,4096,4096,0,0,128,128,128,0,3,1);
    func_80193FB4(10,0x30a5,0x60000000,x,0,12,0,4096,4096,0,0,128,128,128,0,3,1);
    func_80193FB4(11,0x30a6,0x60000000,x,0,12,0,4096,4096,0,0,128,128,128,0,3,1);
    func_80193FB4(12,0x30a7,0x60000000,x,0,12,0,4096,4096,0,0,128,128,128,0,3,1);
    func_80193FB4(13,0x30a8,0,0,0,12,0,4096,4096,0,0,128,128,128,0,3,1);
    func_80193FB4(14,0x30a9,0,0,0,28,0,4096,4096,0,0,128,128,128,0,3,1);
    func_80193FB4(15,0x30ab,0,0,0,12,0,4096,4096,0,0,128,128,128,0,3,1);
    {
    register s32 i __asm__("$16")=0;
    register u32 xx __asm__("$21")=x<<1;
    register s32 y2,y;
    register u32 scale __asm__("$20")=4096, shade __asm__("$17")=128;
    register u32 fixedFive __asm__("$30")=5,one __asm__("$22")=1;
    u32 five;
    __asm__ volatile("" : "=r"(scale),"=r"(shade),"=r"(fixedFive),"=r"(one) : "0"(scale),"1"(shade),"2"(fixedFive),"3"(one));
    five=fixedFive;
    y2=96;y=0;
    do {
        register u32 index=16+i,key=0x30a0;
        register u32 word=0x60000000,coord=xx;
        func_80193FB4(index,key,word,coord,y,12,0,scale,scale,0,0,shade,shade,shade,0,five,one);
        index=20+i;key=0x30a0;word=0x60000000;coord=xx;
        func_80193FB4(index,key,word,coord,y2,12,0,scale,scale,0,0,shade,shade,shade,0,five,one);
        y2+=17;i++;y+=17;
    } while(i<4);
    }
    }
    {
    register s32 i=0;
    register u32 captured=*(u16 *)&negative;
    register u32 one;
    register u32 x;
    register s32 y __asm__("$18");
    s32 offset;
    __asm__ volatile("" : : "r"(captured));
    one=1;y=-56;x=captured<<1;offset=count*45;
    do {
        register u8 *record __asm__("$5")=D_801D94E8;
        __asm__ volatile("" : "=r"(record) : "0"(record));
        record=(u8 *)((u32)offset+(u32)record);
        offset+=45;
        count++;
        {
        register u32 index __asm__("$4")=10+i,coord=x-106;
        register s32 height=y;
        register u32 size;
        size=200;
        func_801942E0(index,record,coord,height,size,one,0,0,0,2,4,one);
        }
        i++;y+=17;
    } while(i<4);
    }
    {
    register s32 i=0;
    register u32 captured=*(u16 *)&negative;
    register u32 one;
    register u32 x;
    register s32 y;
    register u8 *base __asm__("$21");
    register u32 two __asm__("$20"),four __asm__("$19");
    s32 offset;
    __asm__ volatile("" : : "r"(captured));
    one=1;y=40;x=captured<<1;offset=count*45;
    do {
        u8 *record;
        base=D_801D94E8;
        record=(u8 *)((u32)base+offset);
        offset+=45;
        count++;
        {
        register u32 index __asm__("$4")=20+i,coord __asm__("$6")=x-106;
        register s32 height __asm__("$7")=y;
        register u32 size __asm__("$2");
        size=200;two=2;four=4;
        func_801942E0(index,record,coord,height,size,one,0,0,0,two,four,one);
        }
        i++;y+=17;
    } while(i<4);
    func_801942E0(25,(u8 *)((u32)base+count*45),33,23,256,1,0,0,0,two,four,1);
    }
    return 0;
}
