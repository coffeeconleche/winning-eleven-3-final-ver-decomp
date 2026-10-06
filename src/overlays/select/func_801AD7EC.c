#include "common.h"
extern u8 D_800FF748[],D_8010A320,D_801DA2F0,D_801D86C0[];
extern u8 *D_801D1D18[];
extern u32 D_801DA058;
extern s16 D_801D8D78,D_801D8D7A,D_801D8D7C,D_801D8D7E;
extern u8 D_801D8D80,D_801D8D81,D_801D8D82;
extern u32 func_8006F0DC(u32,u32),func_80019B64(u32),func_8006F07C(u32);
extern void func_80096050(void),func_8005C49C(void),func_800501DC(u32),func_8018E538(u32);
/* This caller consumes the ABI return word; the helper already narrows its
 * own result. Do not insert a second return-value ANDI at the call sites. */
extern u32 func_8018E5B8(u16,s32);
extern s32 func_8018EA8C(s32,u8);
extern void func_801ADF5C(u8),func_80017178(u32),func_800171C4(u32),func_800171FC(u32),func_8004FC54(u32);
extern void func_80193FB4(u32,u32,u32,s32,s32,s32,u32,s32,s32,u32,u32,u32,u32,u32,u32,u32,u32);
extern void func_801942E0(u32,void*,s32,s32,s32,s32,s32,s32,s32,s32,s32,s32);
extern void func_801940EC(u32,u32,void*,u32,u32,u32);
/* All eleven words at jtbl_8018A448 stay within this function; slot nine
 * reaches the shared zero-result exit. The stage selector is a byte.
 *
 * Eleven measured bindings and nine actual-value identities remain after
 * cumulatively removing thirteen bindings and eleven empty sites (including
 * the frame site). Survivors were retested together: binding removal changes
 * 2..471 instruction positions, identity removal 2..349. Only the first
 * argument capture needs an explicit volatile qualifier: dropping it changes
 * five words. There are no game-memory volatile views, clobbers, or flag aids.
 */
s32 func_801AD7EC(void) {
    /* Retail reserves 176 bytes: 72 outgoing argument bytes, 32 saved-register
     * bytes, and 72 bytes never accessed as locals. GCC naturally keeps eight
     * unused bytes; this plain unused array retains the remaining 64 without
     * an empty memory constraint. Removing it changes only the 18 frame words
     * (adjustments/saves/restores). Original local purpose/type are unknown. */
    u8 reserve[64];
    u32 mode=D_8010A320;
    register u8 *base=D_800FF748;
    register u8 *scratch=(u8*)0x1F800000;
    register s32 i;
    register u32 value __asm__("$2"), other;
    u8 *p;
    switch(mode) {
    case 0:
        if(!func_8006F0DC(16,0)) goto finish;
        D_801DA2F0=0;
        scratch[0x29F]=0;
        func_8018E538(0);
        /* The DF and C1 symbols are respectively buffer+31 and buffer+1.
         * Clear the measured 32-byte span. The final cursor decrement uses
         * an integer-address view instead of constructing a before-base C
         * array pointer. No extra string-copy length guard is introduced. */
        i=31;
        p=D_801D86C0+31;
        scratch[0x2A2]=0;
        D_801DA058=0;
clear:
        *p=0;
        i--;
        p=(u8*)((u32)p-1);
        if(i>=0) goto clear;
        value=D_801D1D18[scratch[0x2DD]][0];
        D_801D86C0[0]=value;
        i=0;
        while(value!=0) {
            p=D_801D1D18[scratch[0x2DD]];
            i++;
            value=p[i];
            D_801D86C0[i]=value;
        }
        /* Retain the source terminator read/store, then replace it with the
         * observed suffix and two final bytes; do not append an invented NUL. */
        D_801D86C0[i]=32;
        i++;
        D_801D86C0[i]=87;
        i++;
        D_801D86C0[i]=105;
        i++;
        D_801D86C0[i]=110;
        i++;
        D_801D86C0[i]=115;
        i++;
        D_801D86C0[i]=26;
        i++;
        D_801D86C0[i]=2;
        i++;
        D_801D86C0[i]=33;
        D_801D86C0[i+1]=33;
        value=base[0xABD8];
        __asm__("" : "=r"(value):"0"(value));
        value++;
        goto storeState;
    case 1: {
        register s32 thirteen;
        register u32 alpha, scale, gray, flags __asm__("$20"), one;
        if(!func_80019B64(203)) return 0;
        scratch[0x1EC]=0;
        func_80096050();
        thirteen=13;
        func_8005C49C();
        *(u16*)(base+0xAC2C)=16;
        *(u16*)(base+0xAC28)=0;
        *(u16*)(base+0xAC30)=0;
        *(s16*)(base+0xAC34)=-32;
        base[0xAC21]=0;
        base[0xAC20]=0;
        func_800501DC(0);
        {
            register u32 arg0=1, arg1 __asm__("$5")=0x30D2, arg2 __asm__("$6")=0x51000000, arg3 __asm__("$7")=0;
            __asm__ volatile("" : "=r"(arg0):"0"(arg0),"r"(arg1),"r"(arg2),"r"(arg3));
            alpha=255;
            __asm__("" : "=r"(alpha):"0"(alpha));
            scale=4096;
            __asm__("" : "=r"(scale):"0"(scale));
            gray=128;
            __asm__("" : "=r"(gray):"0"(gray));
            flags=2;
            one=1;
            func_80193FB4(arg0,arg1,arg2,arg3,0,thirteen,alpha,scale,scale,0,0,gray,gray,gray,0,flags,one);
        }
        func_80193FB4(2,0x30D3,0x01000000,0,0,thirteen,alpha,scale,scale,0,0,gray,gray,gray,0,flags,one);
        {
            register u32 arg0=55, arg1 __asm__("$5")=0x30D4, arg2 __asm__("$6")=0x01000000, arg3 __asm__("$7")=0, height __asm__("$2");
            __asm__("" : "=r"(arg0):"0"(arg0),"r"(arg1),"r"(arg2),"r"(arg3));
            height=14;
            flags=6;
            func_80193FB4(arg0,arg1,arg2,arg3,0,height,alpha,scale,scale,0,0,gray,gray,gray,0,flags,one);
        }
        func_80193FB4(56,0x30D5,0x01000000,0,0,15,alpha,scale,scale,0,0,gray,gray,gray,0,flags,one);
        func_801942E0(0,D_801D86C0,-100,64,200,3,one,0,0,one,0,one);
        {
            register u32 arg0=0, arg1 __asm__("$5")=0x40000000, arg3;
            register s16 *packet __asm__("$6");
            __asm__("" : "=r"(arg0):"0"(arg0),"r"(arg1));
            packet=&D_801D8D78;
            arg3=0;
            __asm__("" : "=r"(arg3):"0"(arg3),"r"(packet));
            *packet=-100;
            D_801D8D7A=62;
            D_801D8D7C=200;
            D_801D8D7E=20;
            D_801D8D80=0;
            D_801D8D81=0;
            D_801D8D82=64;
            func_801940EC(arg0,arg1,packet,arg3,one,one);
        }
        goto advanceState;
    }
    case 2:
        i=0;
particles:
        func_801ADF5C((u8)i);
        i++;
        if(i<64) goto particles;
        value=base[0xABD8];
        base[0xAC20]=1;
        value++;
        goto storeState;
    case 3:
        other=func_8018E5B8(128,0);
        base[0x5DFE]=other;
        base[0x5DFF]=other;
        base[0x5E00]=other;
        if(!func_8006F07C(16)) goto finish;
        value=base[0xABD8];
        scratch[0x2A2]=64;
        goto incrementState;
    case 4:
        other=func_8018E5B8(128,0);
        base[0x5DFE]=other;
        base[0x5DFF]=other;
        base[0x5E00]=other;
        value=func_8018EA8C(1,1);
        other=base[0xABD8];
        other+=value;
        base[0xABD8]=other;
        return 0;
    case 5:
        func_80193FB4(0,4,0x50000000,0,0,6,0,0x7000,0x7000,0,0,0,0,0,0,0,1);
        goto advanceState;
    case 6:
        /* Compare old+2 while retaining the old byte for the separate add. */
        other=base[0x5DD6];
        value=(s32)(other+2)<255;
        __asm__("" : "=r"(other):"0"(other),"r"(value));
        other+=2;
        if(value) {
            base[0x5DD6]=other;
            base[0x5DD7]=other;
            base[0x5DD8]=other;
            goto finish;
        }
        other=base[0xABD8];
        value=255;
        base[0x5DD6]=value;
        base[0x5DD7]=value;
        base[0x5DD8]=value;
        other++;
        base[0xABD8]=other;
        return 0;
    case 7:
        if(base[0x8F1F]&15) {
            value=10;
            goto chooseState;
        }
advanceState:
        value=base[0xABD8];
incrementState:
        value++;
storeState:
        base[0xABD8]=value;
        return 0;
    case 8:
        /* The pre-increment test is signed; the word increment wraps. */
        value=D_801DA058;
        other=value+1;
        D_801DA058=other;
        if((s32)value<255) return 0;
        value=10;
chooseState:
        base[0xABD8]=value;
        return 0;
    case 10:
        /* Mode 32 updates scratch DD; mode 34 updates ABA0 itself. */
        value=scratch[0x29A];
        other=(u8)value;
        if(other==34) goto selectedSecond;
        value=(s32)other<35;
        if(!value) goto stringCommon;
        if(other!=32) goto stringCommon;
        value=base[0x8F21];
        p=base+value;
        other=p[0xAB80];
        p=base+other*36;
        value=p[0x8F25];
        scratch[0x2DD]=value;
        goto stringCommon;
selectedSecond:
        value=base[0xABA0];
        p=base+value;
        other=p[0xAB80];
        p=base+other*36;
        value=p[0x8F25];
        base[0xABA0]=value;
stringCommon:
        func_80017178(6);
        func_800171C4(0);
        func_800171FC(0);
        scratch[0x2A2]=0;
        func_8004FC54(0);
        func_8018E538(0);
        base[0xABDA]=0;
        base[0xABD8]=0;
    }
finish:
    return 0;
}
