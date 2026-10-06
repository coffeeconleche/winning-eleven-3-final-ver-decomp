#include "common.h"

/* Byte/halfword access views; the original descriptor types are unknown. */
extern u8 D_800FF748[],D_8010A322,D_8011CA90[],D_8011CA91[];
extern u8 D_801D8A8A,D_801D8A8B,D_801D8A8C,D_801D8A8D,D_801D8A8E,D_801D8A8F;
extern u16 D_801D8A82,D_801D8A84,D_801D8A86,D_801D8A88,D_801DA5D4,D_800AD638,D_801DA5D0;
extern s16 D_801DA5D2,D_801DA5D6,D_8010A5A4;
extern u8 D_801DAD84,D_801D8A51,D_801DA2F0,D_801DAE50,D_801D9048,D_801D92F7;
extern u8 D_801D8D80,D_801D8D81,D_801D8D82,D_801D8D83,D_801D8D84,D_801D8D85;
extern u16 D_801D8D78,D_801D8D7A,D_801D8D7C,D_801D8D7E;
extern u8 *D_8011D758;
/* Caller ABI views: E538 ignores the supplied zero word, and B38E0 ignores
 * its first word. Retain the observed argument setup without claiming these
 * are the original declarations. Descriptor callbacks receive these full
 * caller words before their own byte/halfword narrowing. */
extern void func_8018E538(u32),func_801B30FC(void),func_801B5560(u32),func_801AB290(s32),func_800AB620(s32);
extern s32 func_801B1B0C(u32),func_801AE294(u32),func_8006F0DC(u32,u32),func_8006F07C(u32);
extern u8 func_801B3D20(u8);
extern u32 func_801B38E0(u32,s16);
extern u16 func_801B04B4(u8);
extern s32 func_801B29CC(u8,u8),func_801AC9D8(u8,u8);
extern void func_801942E0(s32,u8 *,s32,s32,s32,s32,s32,s32,s32,s32,s32,s32);
extern void func_801940EC(u32,u32,void *,u32,u32,u32);
void func_801B1224(void) {
    u32 state=D_8010A322;
    u8 *base=D_800FF748;
    u8 *scratch=(u8 *)0x1F800000;
    switch(state) {
    case 0: {
        u8 flags;
        u32 setup;
        u32 third;
        third=95; D_801D8A8A=third;
        third=255; D_801D8A8B=third;
        third=96;
        setup=4;
        /* The empty identity keeps the captured 96 and shared four setup in
         * their measured order. It emits no instructions; its removal moves
         * the four setup past the byte store and halfword-one setup. */
        __asm__("" : "=r"(third) : "0"(third), "r"(setup));
        D_801D8A8D=third;
        D_801DA5D4=1;
        flags=D_801D8A8E;
        D_801D8A82=0; D_801D8A84=0; D_801D8A86=0; D_801D8A88=0;
        D_801D8A8F=0; D_801D8A8C=0; D_801DAD84=setup; D_801D8A51=0;
        D_800AD638=0; D_801DA5D0=0; D_801DA5D2=0; D_801DA5D6=9;
        D_801D8A8E=(flags&0x61)|0x21;
        func_8018E538(0); scratch[0x2A2]=setup; base[0xABDA]=40;
        break;
    }
    case 10:
        func_8018E538(0); scratch[0x2A2]=4; base[0xABD8]=0; base[0xABDA]++;
        break;
    case 11:
        if(func_801B1B0C(1)==2) { D_801DA2F0=1; goto set20; }
        break;
    case 20:
        base[0xABD8]=0; base[0xABDA]++;
        break;
    case 21:
        if(func_801AE294(0)) {
            u32 choice=D_801DAE50;
            if(choice==1) goto set10;
            if(choice!=2) break;
            goto set30;
set10:     base[0xABDA]=10;
        }
        break;
    case 30:
        base[0xABD8]=0; base[0xABDA]++;
        break;
    case 31:
        if(func_801AE294(1)) {
            u32 choice=D_801DAE50;
            if(choice==1) goto set20;
            if(choice==2) goto increment;
            break;
set20:     base[0xABDA]=20;
        }
        break;
    case 32:
        if(func_8006F0DC(64,0)) base[0xABDA]=40;
        break;
    case 40: {
        u8 *row;
        func_8018E538(0); scratch[0x2A2]=4;
        row=base;
        row+=base[0xABA0]*36;
        D_801DA5D0=row[0x8F27];
        D_801DA5D2=func_801B3D20(base[0x8F22]);
        func_801B30FC(); func_801B38E0(1,D_801DA5D2);
        D_801DAD84=4; D_801D8A51=0; base[0xABD8]=0; base[0xABDA]++;
        break;
    }
    case 41:
        if(func_8006F07C(16)) {
            u16 *descriptor=&D_801D8D78;
            func_801942E0(7,D_8011D758,16,32,200,1,1,0,0,3,1,0);
            *descriptor=8; D_801D8D7A=24; D_801D8D7C=144; D_801D8D7E=64;
            D_801D8D80=192; D_801D8D81=192;
            D_801D8D82=160; D_801D8D83=160; D_801D8D84=160; D_801D8D85=160;
            func_801940EC(3,0x60000000,descriptor,1,1,0);
            D_801D8A8F=1; D_801DA2F0=1; func_801B5560(0); base[0xABDA]++;
        }
        break;
    case 42:
        if(D_801DAD84==4 && base[0x8F22]!=0) { D_801D9048=1; D_801D92F7=1; }
        else { D_801D9048=0; D_801D92F7=0; }
        func_801B38E0(2,D_801DA5D2);
        D_8010A5A4=func_801B04B4(0);
        if(func_801B29CC(0,base[0x8F22]==0)) {
            u32 choice=D_801DAE50;
            D_801DA2F0=0; D_801D8A8F=0; D_801D9048=0; D_801D92F7=0;
            if(choice==1) goto one42;
            if(choice!=2) break;
            base[0xABDA]=50;
            break;
one42:     if(base[0x8F22]) { func_800AB620(0x529); goto increment; }
        }
        break;
    case 43:
        if(func_8006F0DC(64,0)) {
set30:     base[0xABDA]=30;
        }
        break;
    case 50:
        base[0xABD8]=0; base[0xABDA]++;
        break;
    case 51: {
        /* These two measured bindings retain the raw encoded byte and the
         * second adjusted argument, including their separate branch paths.
         * The function-local no-cse-skip-blocks setting also preserves the
         * second mode-byte read. Neither change adds memory accesses. */
        register u32 value __asm__("$3");
        u32 first;
        register u32 second __asm__("$5");
        s32 result;
        value=D_8011CA90[base[0x8F22]*2];
        first=value-65;
        if(value>=97) first=value-71;
        value=D_8011CA91[base[0x8F22]*2];
        if(value>=97) second=value-71; else second=value-65;
        result=func_801AC9D8((u8)first,(u8)second);
        if(result==1) goto one51;
        if(result!=2) break;
        base[0xABDA]=60;
        break;
one51: {
            u8 mode=base[0x8F15];
            D_801D8A8F=1; D_801DA2F0=1;
            if(mode) { u8 old=scratch[0x2DE]; u8 other=scratch[0x2DD]; scratch[0x2DD]=old; scratch[0x2DE]=other; }
            base[0xABDA]=40;
            break;
        }
        break;
    }
    case 60:
        if(func_8006F0DC(16,0)) {
            if(base[0x8F15]) { u8 old=scratch[0x2DE]; u8 other=scratch[0x2DD]; scratch[0x2DD]=old; scratch[0x2DE]=other; }
increment: base[0xABDA]++;
        }
        break;
    case 61:
        func_801AB290(0);
        break;
    }
}
