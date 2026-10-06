#include "common.h"
/* Byte/halfword access view of the known 20-byte packet prefix. */
typedef struct { u16 half[4]; u8 bytes[12]; } Fields20;
extern u8 D_800FF748[], D_801D429A, D_801D8B16, D_801D8A21, D_801D8A22, D_801D8DBC, D_801D8A20, D_801D92F7, D_801D8FB8, D_801D92BF;
extern u16 D_8010A5A4;
/* Local observed-order view of the final captured byte, not a hardware
 * volatility claim. Removing this view changes 14 instruction positions;
 * replacing it with another binding still reverses the three capture words. */
extern volatile u8 capturedSelection __asm__("D_801D8A20");
extern void *D_801D586C;
extern Fields20 D_801D8D90;
/* Caller ABI word views; helpers narrow their own descriptor fields. */
extern u32 func_8006EE60(u32);
extern void func_800AB620(s32), func_801C3A6C(void), func_801C3EBC(u8);
extern void func_801C4FE0(u32,u32,s32,s32,s32,s32,s32,s32,u32,u32,u32,u32,u32,u32,u32,u32,u32,u32);
extern void func_801942E0(u32,void*,s32,s32,s32,s32,s32,s32,s32,s32,s32,s32);
extern void func_801941E0(u32,u32,Fields20*,u32,u32,u32);
void func_801CB570(void) {
    u32 input=func_8006EE60(0);
    /* Eight measured bindings and five empty value uses retain the original
     * captures and call setup. Six other bindings and two uses were removed
     * cumulatively; survivors were tested again after removing a scratch
     * volatile view. The natural 96-byte frame needs no reservation. */
    register u8 *base __asm__("$16")=D_800FF748;
    register u8 *scratch __asm__("$19")=(u8*)0x1F800000;
    register Fields20 *record=&D_801D8D90;
    s32 mode=scratch[0x29B];
    register s32 next __asm__("$2"), value, count __asm__("$3");
    s32 button;
    D_8010A5A4=input;
    /* All seven entries at jtbl_8018D9D4 dispatch inside this function. */
    switch(mode) {
    case 0:
        scratch[0x2A2]=134;
        D_801D429A=128;
        D_801D8B16=0;
        D_801D8A21=0;
        D_801D8A22=4;
        next=scratch[0x29B];
        __asm__("" : : "r"(next));
        count=scratch[0x338];
        next++;
        D_801D8DBC=count;
        D_801D8A20=count;
        scratch[0x29B]=next;
        break;
    case 1:
        func_801C4FE0(3,0,0,0,256,34,-120,24,32,32,96,32,32,96,D_801D8A21,D_801D8A22,0,1);
        count=D_801D8A21;
        value=D_801D429A;
        count++;
        value-=8;
        D_801D8A21=count;
        D_801D429A=value;
        func_801C3EBC((u8)value);
        if(D_801D429A<=64) scratch[0x29B]++;
        break;
    case 2: {
        register void **pointer __asm__("$17");
        register s32 three;
        register s32 one;
        register s32 index __asm__("$4")=0, x __asm__("$6")=-156, y __asm__("$7");
        register s32 width;
        register void *capture;
        pointer=&D_801D586C;
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
        index=1; x=-114; y=-8;
        capture=*pointer;
        func_801942E0(index,capture,x,y,256,0,0,0,0,12,one,one);
        record->half[2]=256;
        record->half[3]=34;
        record->bytes[0]=32;
        record->bytes[1]=32;
        record->half[1]=0;
        record->half[0]=0;
        record->bytes[2]=96;
        func_801941E0(1,0,record,0,three,one);
        next=scratch[0x29B];
        D_801D8B16=1;
        scratch[0x29B]=next+1;
        break;
    }
    case 3:
        button=D_8010A5A4;
        switch(button) {
        case 0x8000:
            if(D_801D8DBC!=1) func_800AB620(0x50D);
            D_801D8DBC=1;
            scratch[0x338]=1;
            break;
        case 0x2000:
            if(D_801D8DBC!=0) func_800AB620(0x50D);
            D_801D8DBC=0;
            scratch[0x338]=0;
            break;
        case 0x20:
            func_800AB620(0x528);
            scratch[0x29B]++;
            break;
        case 0x40:
            func_800AB620(0x529);
            next=scratch[0x29B];
            count=D_801D8A20;
            next++;
            scratch[0x338]=count;
            scratch[0x29B]=next;
            break;
        }
        break;
    case 4: {
        /* These existing byte updates are evaluated before submission. The
         * comma expressions retain their measured call-setup positions; the
         * arguments otherwise access distinct byte objects. */
        func_801C4FE0(3,0,0,0,(D_801D8A21=4,256),34,-120,24,32,32,96,32,32,96,4,D_801D8A22,(D_801D8FB8=0,D_801D92BF=0,D_801D8B16=0,0),1);
        scratch[0x29B]++;
        break;
    }
    case 5:
        func_801C4FE0(3,0,0,0,256,34,-120,24,32,64,32,32,32,32,D_801D8A21,D_801D8A22,0,1);
        if(D_801D8A21!=0) D_801D8A21--;
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
        count=scratch[0x338];
        value=capturedSelection;
        scratch[0x2A2]=0;
        if(value!=count) base[0x8F14]|=1;
        func_801C3A6C();
        scratch[0x29B]=3;
        scratch[0x29A]=16;
        break;
    }
}
