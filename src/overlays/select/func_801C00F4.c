#include "common.h"

/* Byte/halfword access views; the complete record types and state meanings
 * are unknown. The unsigned remainder paths deliberately retain the original
 * zero-divisor trap, rather than adding a guard. */
extern u8 D_800FF748[],D_8010A322,D_801DA2F0,D_801D8B18;
extern u8 D_801DA06B,D_801DA069,D_801DA06A,D_801DA068;
extern u16 D_801DA5D0,D_801DA5D2,D_801DA5D4,D_801DA5D6;
extern volatile u8 D_801DAE50;
extern u8 *D_801234E0[];
/* A98F0 receives the observed full selector word (including -1) before its
 * own byte narrowing. These caller ABI views do not establish original APIs. */
extern void func_801A98F0(u8 *,s32),func_800171FC(u32),func_801AA7C4(u8),func_801A9C54(void);
extern void func_801C1D94(void),func_801C2064(void),func_801C2A3C(void),func_801C1CD4(u32);
extern s32 func_8006F07C(u32),func_801AB6E8(s32),func_801C16DC(u32),func_8006F0DC(u32,u32),func_801AE294(u32);
extern void func_800AB620(s32),func_801C20A8(void),func_801C3150(void);
void func_801C00F4(void) {
    u32 state=D_8010A322;
    u8 *base=D_800FF748;
    u32 next;
    switch(state) {
    case 0: {
        u32 index=base[0x8F20];
        D_801DA2F0=0;D_801D8B18=0;
        func_801A98F0(D_801234E0[index],base[0x8F22]-1);
        base[0xABDA]++;
        break;
    }
    case 1: {
        u32 mode=*(u8 *)0x1F8002E2;
        u32 four=4;
        /* Preserve the captured word before the original byte narrowing.
         * This identity emits no instructions; removing it eliminates the
         * measured andi and changes the capture/compare allocation. */
        __asm__("" : "=r"(mode) : "0"(mode));
        if((u8)mode==four) base[0xABDA]++;
        else { func_800171FC(2);base[0xABDA]=0; }
        break;
    }
    case 2: {
        /* Measured row-address allocation, scoped after the two callbacks.
         * Removing the binding exchanges the address and byte-value registers
         * in both unchecked row updates. */
        register u8 *row __asm__("$2");
        func_801AA7C4(0);func_801A9C54();
        row=base;row+=base[0xABA0]*36;row[0x8F26]++;
        row=base;row+=base[0xABA1]*36;row[0x8F26]++;
        base[0xABDA]++;
        break;
    }
    case 3: {
        u32 divisor=(u32)base[0x8F20]>>1;
        u32 current=base[0x8F22];
        if(current%divisor==0) base[0xABDA]=10;
        else {
            u32 rounds=base[0x8F23];
            base[0x8F22]=current+1;base[0xABDA]=0;base[0x8F23]=rounds+1;
        }
        break;
    }
    case 10:
        func_801C1D94();D_801DA2F0=0;D_801DA06B=0;D_801DA069=0;D_801DA06A=0;D_801DA068=0;
        D_801DA5D0=0;D_801DA5D2=0;D_801DA5D4=4;D_801DA5D6=4;
        func_801C2064();func_801C2A3C();base[0xABDA]++;
        break;
    case 11:
        if(func_8006F07C(16)) base[0xABDA]++;
        break;
    case 12: {
        s32 count=base[0x8F20];
        s32 total=count*(count-1)/2;
        s32 selector;
        *(u8 *)&D_801DAE50=2;
        if(base[0x8F22]==total) selector=96;
        else { func_801C1CD4((u32)base[0x8F23]>>4);selector=97; }
        /* Only this returned-byte write uses the ordered access view. The
         * following plain-byte read must reload the stored choice. This is
         * matching evidence, not a claim of hardware volatility. Removing
         * the write qualifier reuses the helper result and shortens the code. */
        D_801DAE50=func_801AB6E8(selector);
        {
            u32 choice=*(u8 *)&D_801DAE50;
            if(choice==2) { func_801AB6E8(-1);base[0xABD8]=0;base[0xABDA]++; }
        }
        break;
    }
    case 13:
        if(func_801C16DC(0)==2) { func_800AB620(0x528);base[0xABDA]++; }
        func_801C2A3C();
        break;
    case 14:
        if(func_8006F0DC(64,0)) {
            next=20;
            goto store20;
        }
        break;
    case 20:
        D_801DA5D2=0;func_801C1D94();func_801C20A8();func_801C3150();base[0xABDA]++;
        break;
    case 21:
        if(func_8006F07C(16)) base[0xABDA]++;
        break;
    case 22:
        {
            s32 result=func_801C16DC(1);
            s32 sound;
            if(result==1) goto sound529;
            if(result!=2) goto redraw22;
            sound=0x528;goto play22;
sound529:  sound=0x529;
play22:    func_800AB620(sound);base[0xABDA]++;
        }
redraw22:
        func_801C3150();
        break;
    case 23:
        if(func_8006F0DC(64,0)) {
            u32 choice=*(u8 *)&D_801DAE50;
            if(choice==1) goto one23;
            if(choice!=2) break;
            goto set30;
one23:     base[0xABDA]++;
        }
        break;
    case 24:
        func_801C1D94();D_801DA2F0=0;func_801C2064();func_801C2A3C();base[0xABDA]++;
        break;
    case 25:
        if(func_8006F07C(16)) base[0xABDA]=13;
        break;
    case 30: {
        u32 old=base[0xABDA];
        D_801DA2F0=0;base[0xABD8]=0;base[0xABDA]=old+1;
        break;
    }
    case 31:
        {
            s32 result=func_801AE294(0);
            if(result==1) goto set20;
            if(result!=2) break;
            base[0xABDA]++;break;
set20:     next=20;
store20:   base[0xABDA]=next;
        }
        break;
    case 32:
        base[0xABD8]=0;base[0xABDA]++;
        break;
    case 33:
        {
            s32 result=func_801AE294(1);
            if(result==1) goto set30;
            if(result!=2) break;
            base[0xABDA]=40;break;
set30:     base[0xABDA]=30;
        }
        break;
    case 40: {
        s32 count=base[0x8F20];
        s32 total=count*(count-1)/2;
        u32 current=base[0x8F22];
        if(current==total) { func_800171FC(4);base[0xABDA]=50; }
        else {
            u32 next;
            if(current%((u32)count>>1)==0) next=(base[0x8F23]&0xF0)+17;
            else next=base[0x8F23]+1;
            base[0x8F23]=next;
            {
                u32 state=base[0xABDA];
                u32 current=base[0x8F22];
                base[0xABDA]=state+1;base[0x8F22]=current+1;
            }
        }
        break;
    }
    case 41:
        if(func_8006F0DC(16,0)) base[0xABDA]=0;
        break;
    }
}
