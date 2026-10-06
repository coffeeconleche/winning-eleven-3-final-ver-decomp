#include "common.h"
extern u8 D_800FF748[],D_8010A2E8,D_8010A2E9,D_8010866A;
extern void func_801AA524(u8,u32,u8,u8,u8),func_801AA40C(u8,u8);
/* Byte/halfword record views; record names and caller-range invariants remain
 * unknown. Score callbacks may alias these records: keep the ordered rereads.
 *
 * Twelve measured bindings and six empty value identities remain. Six bindings
 * were removed cumulatively from the exact candidate and survivors rechecked;
 * removing a survivor changes 1..260 instruction positions. The four halfword
 * identities each change three positions; the two triplet identities change
 * 170/140. These are actual captured values, with no clobbers or instructions.
 * The natural 56-byte frame requires no reservation.
 */
void func_801A9C54(void) {
    register u32 first __asm__("$20")=D_8010A2E8;
    register s32 offset __asm__("$17")=0;
    register u8 *base=D_800FF748;
    register u8 *scratch=(u8*)0x1F800000;
    register u32 second __asm__("$19")=D_8010A2E9;
    register u32 narrowed;
    register u8 *left __asm__("$5"), *right __asm__("$4"), *row, *map, *source;
    register s32 i, rows, position, team __asm__("$10");
    register u8 *sourceBase;
    u32 a,b;
    register u32 value __asm__("$2"), mapped __asm__("$3");
    register u32 count;
    register u32 sentinel, mapOffset, sourceOffset;
    if(scratch[0x2E1]==1) { value=D_8010866A; offset=(value>=15)*16; }
    a=*(u8*)0x1F8002D1; b=*(u8*)0x1F8002D2;
    if(a==b) {
        register u8 *drawLeft, *drawRight;
        narrowed=(u8)first;
        drawLeft=base+narrowed*36;
        drawRight=base+(u8)second*36;
        drawLeft[0x8F2B]++;
        drawRight[0x8F2B]++;
        drawLeft[0x8F28]++;
        drawRight[0x8F28]++;
        func_801AA524((u8)(first+offset),(u8)second,3,*(u8*)0x1F8002D3,*(u8*)0x1F8002D4);
        func_801AA524((u8)(second+offset),narrowed,3,*(u8*)0x1F8002D7,*(u8*)0x1F8002D8);
    } else if(a>b) {
        register u8 *winning, *losing;
        register u32 wins __asm__("$4");
        register u32 loserOffset;
        narrowed=(u8)first;
        winning=base+narrowed*36;
        wins=winning[0x8F29]+1;
        count=winning[0x8F28]+3;
        winning[0x8F28]=count;
        loserOffset=(u8)second*36;
        winning[0x8F29]=wins;
        losing=base+loserOffset;
        losing[0x8F2A]++;
        winning[0x8F35]++;
        if(losing[0x8F35]!=0) losing[0x8F35]--;
        func_801AA524((u8)(first+offset),(u8)second,1,*(u8*)0x1F8002D3,*(u8*)0x1F8002D4);
        func_801AA524((u8)(second+offset),narrowed,2,*(u8*)0x1F8002D7,*(u8*)0x1F8002D8);
    } else {
        register u8 *winning, *losing;
        register u32 wins __asm__("$4");
        register u32 loserOffset;
        narrowed=(u8)first;
        winning=base+(u8)second*36;
        wins=winning[0x8F29]+1;
        count=winning[0x8F28]+3;
        winning[0x8F28]=count;
        loserOffset=narrowed*36;
        winning[0x8F29]=wins;
        losing=base+loserOffset;
        losing[0x8F2A]++;
        winning[0x8F35]++;
        if(losing[0x8F35]!=0) losing[0x8F35]--;
        func_801AA524((u8)(first+offset),(u8)second,2,*(u8*)0x1F8002D3,*(u8*)0x1F8002D4);
        func_801AA524((u8)(second+offset),narrowed,1,*(u8*)0x1F8002D7,*(u8*)0x1F8002D8);
    }
    /* Unlike the callback arguments above, these indices retain their captured
     * words. The integer-to-pointer view below is a PS1 address offset. */
    left=base+first*36;
    right=(u8*)(second*36);
    /* Four byte/halfword read pairs use local observed-order views, not a
     * hardware-volatility claim. Removing each pair changes 4/4/6/7 positions;
     * removing all eight views jointly changes 263. The nonvolatile stores
     * retain halfword wrapping and possible record overlap. */

    value=((volatile u8*)scratch)[0x2D1];

    mapped=*(volatile u16*)(left+0x8F2C); __asm__("" : "=r"(mapped): "0"(mapped)); right=base+(u32)right; value+=mapped;
    *(u16*)(left+0x8F2C)=value;
    value=((volatile u8*)scratch)[0x2D2];

    mapped=*(volatile u16*)(right+0x8F2C); __asm__("" : "=r"(mapped): "0"(mapped)); value+=mapped;
    *(u16*)(right+0x8F2C)=value;
    value=((volatile u8*)scratch)[0x2D2];

    mapped=*(volatile u16*)(left+0x8F2E); __asm__("" : "=r"(mapped): "0"(mapped));
    team=first;
    value+=mapped;
    *(u16*)(left+0x8F2E)=value;
    value=((volatile u8*)scratch)[0x2D1];

    mapped=*(volatile u16*)(right+0x8F2E); __asm__("" : "=r"(mapped): "0"(mapped)); sentinel=255; value+=mapped;
    *(u16*)(right+0x8F2E)=value;
    mapped=base[0x8EC8]; value=*(u16*)(left+0x8F30); mapOffset=0xAB80; value+=mapped;
    *(u16*)(left+0x8F30)=value;
    mapped=base[0x8EC9]; value=*(u16*)(right+0x8F30); sourceOffset=0x88D1; value+=mapped;
    *(u16*)(right+0x8F30)=value;
    value=left[0x8F32]; mapped=base[0x8ECC]; sourceBase=base; value+=mapped; left[0x8F32]=value;
    value=right[0x8F32]; mapped=base[0x8ECD]; rows=0; value+=mapped; right[0x8F32]=value;
outer:
    i=0; value=(u32)team+(u32)base; map=(u8*)value+mapOffset; position=rows;
triplets: {
    register u8 *mappedRecord, *itemRecord;
    register u32 scaled __asm__("$4");
    row=base+position;
    if(row[0x88FF]==sentinel) goto totals;
    offset=row[0x88FD];
    __asm__("" : "=r"(offset) : "0"(offset));
    /* A missing first entry skips the whole triplet, including its second. */
    if(offset==sentinel) goto nextTriplet;
    scaled=offset*6;
    mapped=*map;
    mappedRecord=base+mapped*36;
    mapped=mappedRecord[0x8F25];
    itemRecord=base+(scaled+mapped*132);
    mapped=itemRecord[0x93A4];
    if(mapped<255) { value=mapped+1; itemRecord[0x93A4]=value; }
    offset=row[0x88FE];
    __asm__("" : "=r"(offset) : "0"(offset));
    if(offset==sentinel) goto nextTriplet;
    scaled=offset*6;
    mapped=*map;
    mappedRecord=base+mapped*36;
    mapped=mappedRecord[0x8F25];
    itemRecord=base+(scaled+mapped*132);
    mapped=itemRecord[0x93A5];
    if(mapped<255) { value=mapped+1; itemRecord[0x93A5]=value; }
nextTriplet:
    i++; position+=3;
    if(i<32) goto triplets;
}
totals: {
    register s32 stride;
    register u32 amount;
    register u8 *playerRecord __asm__("$2");
    i=0; value=(u32)team+(u32)base; map=(u8*)value+mapOffset; source=sourceBase+sourceOffset; stride=0;
players:
    mapped=*map;

    amount=*source;
    source++;

    playerRecord=base+mapped*36;
    mapped=playerRecord[0x8F25];

    i++;
    playerRecord=base+(stride+mapped*132);
    *(u16*)(playerRecord+0x93A6)+=amount;
    stride+=6;
    if(i<22) goto players;
}
    sourceBase+=22;
    rows+=96;
    team=second;
    if(rows<192) goto outer;
    func_801AA40C(0,scratch[0x2DD]);
    func_801AA40C(1,scratch[0x2DE]);
    {
    register u8 *tailRight;
    register u32 raw;
    left=base+first*36;
    value=left[0x8F33];
    mapped=base[0x8ED0];
    value+=mapped;
    tailRight=base+second*36;
    left[0x8F33]=value;
    value=tailRight[0x8F33]; raw=base[0x8ED1]; value+=raw; tailRight[0x8F33]=value;
    value=left[0x8F34]; raw=base[0x8ECE]; value+=raw; left[0x8F34]=value;
    value=tailRight[0x8F34]; raw=base[0x8ECF]; value+=raw; tailRight[0x8F34]=value;
    }
}
