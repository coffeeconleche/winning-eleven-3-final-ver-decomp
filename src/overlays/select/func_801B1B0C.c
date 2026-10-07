#include "common.h"
extern u8 D_800FF748[], D_801DAD84, D_801DA2F0, D_801DAE50, D_801D8A8F;
extern s16 D_801DA5D0;
extern u32 D_801DA058;
extern u8 *D_801D8738;
extern u16 D_801D8A82, D_801D8A84, D_8010A5A4;
extern u8 *func_8001D004(u16);
extern void func_8006FCFC(u8),func_8018E538(u32),func_801B5560(u8),func_800AB620(s32);
extern s32 func_8006F07C(u8),func_8006F0DC(u8,u8),func_801B45CC(u32);
extern u32 func_8006EC80(u8);
extern u8 *func_801B3D9C(u8);
/* Matching GCC 2.7.2 -quiet -O2 -G0, 1,400 bytes.
 * Byte/halfword/pointer declarations are access views; full record meanings
 * and original prototypes remain unknown. E538 ignores the observed zero
 * caller word. EC80's return is viewed as a word before explicit halfword
 * narrowing; B3D9C returns the byte-buffer pointer obtained from B4C84.
 *
 * Countdown decrement and shift wrap as unsigned words, including arbitrary
 * incoming bit patterns. Signed halfword selector adjustments wrap only on
 * their final halfword store. Both position halves are captured before stores,
 * and the second half is written back unchanged, as in the original.
 *
 * Seven scoped bindings and six empty actual-value/memory sites retain the
 * measured captures, allocation, duplicate left paths and store chronology.
 * Joint minimization removed five bindings, seven empty sites and all volatile
 * qualifiers. Reduced-source singles, 78 remaining pairs and nine semantic
 * groups were measured; none of the final pairs matches after removal.
 * There are no emitted assembly instructions, clobbers or volatile RAM views.
 *
 * The unused 16-byte reserve reproduces the original 48-byte frame: removing
 * it changes only eight frame/save-offset words, with no body changes. Its
 * original purpose is unknown. The dispatch owns 21 words at jtbl_8018A94C;
 * the following zero word is outside the dispatch and remains untouched.
 */
s32 func_801B1B0C(u32 arg0) {
    u8 reserve[16];
    u8 *base=D_800FF748;
    if(D_801DAD84==4 && D_801DA2F0==1) {
        func_8001D004(0x30AC)[10]=54;
        func_8006FCFC(54);
    } else func_8001D004(0x30AC)[10]=91;
    switch(base[0xABD8]) {
    case 0: {
        u32 state=base[0xABD8];

        { u32 four=4;
            D_801DAD84=four; }
        D_801DAE50=0; D_801DA058=0;
        __asm__("" : "=r"(state):"0"(state), "m"(D_801DA058),"m"(D_801DAD84),"m"(D_801DAE50));
        base[0xABD8]=state+1;
        return 0;
    }
    case 1:
        func_8018E538(0);
        *(u8*)0x1F8002A2=5;
        D_801D8738=func_801B3D9C(*(u8*)&D_801DA5D0);
        func_801B45CC(0);
        { register u32 state __asm__("$2")=base[0xABD8];
            state++;

            base[0xABD8]=state;
        }
        return 0;
    case 2:
        if(func_8006F07C(16)) {
            D_801D8A8F=1; D_801DA2F0=1; base[0xABD8]=10;
        }
        return 0;
    case 10: {
        u32 input;
        s32 mode;
        s16 *selector;
        register s32 n __asm__("$3");
        s32 loaded;
        register s32 updated __asm__("$2");
        u16 *position;
        register u32 x __asm__("$3");
        register u32 y __asm__("$4");
        if(D_801DA5D0==0 && D_801DAD84==2) D_801DAD84=4;
        if(D_801DA5D0==7 && D_801DAD84==3) D_801DAD84=4;
        func_801B5560(1);
        if(D_801DA058==24) D_801D8738=func_801B3D9C(*(u8*)&D_801DA5D0);
        if(D_801DA058!=0) D_801DA058--;
        func_801B45CC((D_801DA058<<2)&0xFFFC);
        { u32 raw=func_8006EC80(0);
            input=(u16)raw;

            D_8010A5A4=raw;
        }
        if(input==0x8000) {
            func_800AB620(0x50D);
            mode=D_801DAD84;
            if(mode==3) goto mode_four;
            if(mode<4) {
                if(mode!=2) return 0;
            } else {
                if(mode==4) goto left_mode_four;
                return 0;
            }
            func_800AB620(0x50D);
            position=&D_801D8A82;
            x=*position;
            __asm__("" : "=r"(x):"0"(x));
            y=D_801D8A84;

            x-=16;
            goto store_position;
        left_mode_four:
            if(D_801DA5D0==0) {
                func_800AB620(0x50D);
                position=&D_801D8A82;
                x=*position; y=D_801D8A84;
                x-=16;
                goto store_position;
            }
            D_801DAD84=2;
            return 0;
        } else if(input==0x2000) {
            func_800AB620(0x50D);
            mode=D_801DAD84;
            if(mode==3) goto position_plus;
            if(mode<4) {
                if(mode==2) goto mode_four;
                return 0;
            }
            if(mode==4) goto right_mode_four;
            return 0;
        mode_four:
            D_801DAD84=4; return 0;
        right_mode_four:
            if(D_801DA5D0!=7) {
                D_801DAD84=3; return 0;
            }
        position_plus:
            func_800AB620(0x50D);
            position=&D_801D8A82;
            x=*position; y=D_801D8A84;
            x+=16;
        store_position:
            *position=x; D_801D8A84=y;
            /* The tied view denotes this real scalar, without an emitted
             * access. Its removal changes ten position-pointer words. */
            __asm__("" : "=m"(D_801D8A84):"0"(D_801D8A84));
            return 0;
        } else {
            if(input==0x40) {
                mode=D_801DAD84;
                switch(mode) {
                case 2:
                case 3:
                    func_800AB620(0x529);
                    D_801DAD84=4;
                    break;
                case 4:
                    if((u8)arg0==0) {
                        func_800AB620(0x529);
                        D_801DAE50=1; base[0xABD8]=20;
                    }
                    break;
                }
            }
            if(D_8010A5A4==0x20) {
                mode=D_801DAD84;
                switch(mode) {
                case 2:
                    selector=&D_801DA5D0;
                    loaded=*selector;
                    if(loaded==0) return 0;
                    n=loaded;
                    __asm__("" : "=r"(n):"0"(n));
                    updated=n-1;
                    goto updated_selector;
                case 3:
                    selector=&D_801DA5D0;
                    loaded=*selector; n=loaded;
                    __asm__("" : "=r"(n):"0"(n),"r"(loaded));
                    if(loaded>=7) return 0;
                    updated=n+1;
                updated_selector:

                    *selector=updated;
                    func_800AB620(0x50D); { register u32 amount __asm__("$2")=24;
                        D_801DA058=amount; } return 0;
                case 4:
                    func_800AB620(0x528);
                    { register u32 outcome __asm__("$2")=2;
                        D_801DAE50=outcome;
                        outcome=20;
                        D_801DA2F0=0; __asm__("" : : "m"(D_801DA2F0)); base[0xABD8]=outcome; } return 0;
                default: return 0;
                }
            }
            return 0;
        }
    }
    case 20:
        if(func_8006F0DC(64,0)) return D_801DAE50;
        return 0;
    default: return 0;
    }
}
