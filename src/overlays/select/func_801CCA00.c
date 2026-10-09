#include "common.h"
/* Byte/halfword access view of the known 20-byte packet prefix. */
typedef struct { u16 half[4]; u8 bytes[12]; } Fields20;
extern u8 D_800FF748[], D_801D429A, D_801D8D70, D_801D8B0D, D_801D8A34, D_801D8FB8, D_801D92F7, D_801D92BF, D_801DA055;
extern u8 D_801D8A30;
extern u8 D_801D8A31 __asm__("D_801D8A30+1");
extern u8 D_801D8A32 __asm__("D_801D8A30+2");
extern u8 D_801D8A33 __asm__("D_801D8A30+3");
extern u16 D_8010A5A4;
extern u8 *D_801D5870;
extern void *D_801D5844[];
extern Fields20 D_801D8D90;
/* Caller ABI word views; helpers narrow their own descriptor fields. */
extern u32 func_8006EE60(u32);
extern void func_800AB620(s32), func_801C3A6C(void), func_801C3EBC(u8);
extern s32 func_801CE010(u32, u32);
extern void func_801C4FE0(u32,u32,s32,s32,s32,s32,s32,s32,u32,u32,u32,u32,u32,u32,u32,u32,u32,u32);
extern void func_801942E0(u32,void*,s32,s32,s32,s32,s32,s32,s32,s32,s32,s32);
extern void func_801941E0(u32,u32,Fields20*,u32,u32,u32);
extern s32 func_801C52E4(u32,s32,s32,u8*,s32,s32);
void func_801CCA00(void) {
    u32 input=func_8006EE60(0);
    register u8 *base __asm__("$16")=D_800FF748;
    u8 *scratch=(u8*)0x1F800000;
    Fields20 *record=&D_801D8D90;
    s32 mode=scratch[0x29B];
    register s32 next __asm__("$2"), value, count __asm__("$3");
    s32 button;
    D_8010A5A4=input;
    switch(mode) {
    case 0:
        D_801D429A=128;
        scratch[0x2A2]=131;
        D_801D8A30=0;
        D_801D8A31=4;
        D_801D8B0D=0;
        next=scratch[0x29B];
        count=base[0x8F13];
        next++;
        D_801D8D70=count;
        D_801D8A34=count;
        scratch[0x29B]=next;
        break;
    case 1:
        func_801C4FE0(3,0,0,0,208,52,-120,-28,32,32,96,32,32,96,D_801D8A30,D_801D8A31,0,1);
        count=D_801D8A30;
        value=D_801D429A;
        count++;
        value-=8;
        D_801D8A30=count;
        D_801D429A=value;
        func_801C3EBC((u8)value);
        if(D_801D429A<=64) scratch[0x29B]++;
        break;
    case 2: {
        register u8 **pointer __asm__("$18");
        s32 three;
        s32 one;
        register s32 index __asm__("$4")=0, x __asm__("$6")=-156, y __asm__("$7");
        s32 width;
        u8 *capture;
        pointer=&D_801D5870;
        __asm__("" : : "r"(index), "r"(x), "r"(pointer));
        y=62; width=312;
        three=3;
        __asm__("" : : "r"(y), "r"(width), "r"(three));
        capture=*pointer;
        __asm__("" : : "r"(capture), "r"(index), "r"(x), "r"(y), "r"(width));
        one=1;
        __asm__("" : "=r"(one) : "0"(one));
        D_801D92F7=0;
        func_801942E0(index,capture,x,y,width,0,0,0,0,three,0,one);
        index=1; x=-128; y=-17;
        capture=*pointer;
        func_801942E0(index,capture,x,y,256,three,0,5,0,12,one,one);
        record->half[2]=208;
        record->half[3]=52;
        record->bytes[0]=32;
        record->bytes[1]=32;
        record->half[1]=0;
        record->half[0]=0;
        record->bytes[2]=96;
        func_801941E0(1,0,record,0,three,one);
        next=scratch[0x29B];
        D_801D8B0D=1;
        scratch[0x29B]=next+1;
        break;
    }
    case 3:
        button=D_8010A5A4;
        switch(button) {
        case 0x4000:
            if(D_801D8D70!=2) func_800AB620(0x50D);
            D_801D8D70=2;
            break;
        case 0x1000:
            if(D_801D8D70==2) {
                func_800AB620(0x50D);
                D_801D8D70=base[0x8F13];
            }
            break;
        case 0x8000:
            if(D_801D8D70==2) break;
            if(D_801D8D70!=0) break;
            D_801D8D70=1;
            func_800AB620(0x50D);
            base[0x8F13]=D_801D8D70;
            break;
        case 0x2000:
            if(D_801D8D70==2) break;
            if(D_801D8D70!=1) break;
            D_801D8D70=0;
            func_800AB620(0x50D);
            base[0x8F13]=D_801D8D70;
            break;
        case 0x20:
            if(D_801D8D70==2) {
                func_800AB620(0x528);
                count=*(u8*)0x8F13;
                D_801D8FB8=0;
                D_801D8B0D=0;
                scratch[0x29B]=10;
                D_801D8A34=count;
            } else {
                func_800AB620(0x528);
                scratch[0x29B]++;
            }
            break;
        case 0x40:
            func_800AB620(0x529);
            next=scratch[0x29B];
            count=D_801D8A34;
            next++;
            base[0x8F13]=count;
            scratch[0x29B]=next;
            break;
        }
        break;
    case 4:
        func_801C4FE0(3,0,0,0,(D_801D8A30=4,208),52,-120,-28,32,32,96,32,32,96,4,D_801D8A31,(D_801D8FB8=0,D_801D92BF=0,D_801D8B0D=0,0),1);
        scratch[0x29B]++;
        break;
    case 5:
        func_801C4FE0(3,0,0,0,208,52,-120,-28,32,32,96,32,32,96,D_801D8A30,D_801D8A31,0,1);
        if(D_801D8A30!=0) D_801D8A30--;
        value=D_801D429A;
        value+=8;
        D_801D429A=value;
        func_801C3EBC((u8)value);
        if(D_801D429A>=128) {
            next=scratch[0x29B];
            D_801D92F7=0;
            scratch[0x29B]=next+1;
        }
        break;
    case 6:
        scratch[0x2A2]=0;
        func_801C3A6C();
        scratch[0x29B]=3;
        scratch[0x29A]=16;
        break;
    case 10:
        scratch[0x29B]++;
    case 11:
        D_801DA055=0;
        count=scratch[0x29B];
        value=base[0x8F14];
        count++;
        base[0x8F14]=value|8;
        scratch[0x29B]=count;
    case 12: {
        u8 result=func_801CE010(1,255);
        switch(result) {
        case 0:
            break;
        case 1:
            D_801DA055=0;
            next=scratch[0x29B];
            D_801D8A33=21;
            scratch[0x29B]=next+1;
            break;
        case 2:
            D_801D8A33=20;
            D_801DA055=0;
            scratch[0x29B]=14;
            break;
        default:
            scratch[0x29B]=4;
            break;
        }
        break;
    }
    case 13:
        if((u8)func_801C52E4(1,208,52,D_801D5844[D_801D8A33],-8,0)) {
            next=scratch[0x29B];
            D_801D8A32=0;
            scratch[0x29B]=next+1;
        }
        break;
    case 14:
        D_801D8A32++;
        if(D_801D8A33==20) D_801D8A32=0;
        input=D_8010A5A4;
        if(input&0xFFF) {
            func_800AB620(input==0x20?0x528:0x529);
            D_801D8A32=100;
        }
        if(D_801D8A32>=100) scratch[0x29B]=4;
        break;
    case 15:
        if((u8)func_801C52E4(1,208,52,D_801D5870,-17,5)) {
            D_801D8B0D=1;
            count=base[0x8F13];
            scratch[0x29B]=3;
            base[0x8F13]=count;
            D_801D8D70=count;
        }
        break;
    }
}
