#include "common.h"
/*
 * Match: GCC 2.7.2 -quiet -O2 -G0, 2,464 bytes; natural 56-byte frame.
 * One empty actual-value input retains the paired case-37 word setup; it emits
 * no instruction or extra access. Three removal trials eliminated its binding;
 * the remaining input alone changes ten words when removed. No volatile views,
 * clobbers, frame reservations or instruction patches are used.
 *
 * Owns 49/6/6 dispatch words at jtbl_80189374/8018943C/80189454. The zero
 * padding at 80189438 is not owned. Unsupported outer/subselector values are
 * quiet except case 34's flag store, which precedes the nested default exit.
 * Scratch/object meanings and complete helper types remain unknown. Halfword
 * source coordinates are signed; the second capture is widened before +256.
 * Callback order and repeated calls remain explicit rather than synthesized
 * from a data table. Helpers can alter shared state; no snapshots span calls.
 */
extern u8 D_8010C1D8[],D_800FF748[];
extern s16 D_80193C8C,D_80193C8A;
/* Observed word call view; complete helper API is unknown. */
extern void func_8001D470(u32,u32,s32,s32,u32,u32,u32,u32,u32);
extern void func_8001FA1C(void);
#define W(off) (*(s32 *)(scratch+(off)))
#define H(off) (*(s16 *)(scratch+(off)))
#define SUBMIT(index,key,x,shade) func_8001D470(index,key,x,0,shade,4096,4096,4096,0)
void func_8018D21C(u8 input) {
    u8 *scratch=(u8 *)0x1f800000;
    u8 *settings=D_8010C1D8,*base=D_800FF748;
    switch(input) {
    case 0:
        W(0x1f8)=-0x3900;W(0x1f4)=-0x800;
        W(0x1f0)=0;W(0x1fc)=0;W(0x204)=0;W(0x200)=-0x200;
        break;
    case 1:
        W(0x1f4)=-0x1a0;W(0x1f8)=-0x2730;W(0x200)=-0x5c0;
        W(0x1f0)=0;W(0x1fc)=0;W(0x204)=-0x20;
        break;
    case 2:
        W(0x1f0)=-0x2bd0;W(0x1f4)=-0xbd0;W(0x1f8)=-0x3ae0;
        W(0x1fc)=-0x1a0;W(0x200)=-0xab0;W(0x204)=-0x1ec0;
        break;
    case 3:
        W(0x1f0)=0x2bd0;W(0x1f4)=-0xbd0;W(0x1f8)=-0x3ae0;
        W(0x1fc)=0x1a0;W(0x200)=-0xab0;W(0x204)=-0x1ec0;
        break;
    case 4:
        W(0x1f8)=-0x16a0;W(0x200)=-0x2c0;
        W(0x1f0)=0;W(0x1f4)=0;W(0x1fc)=0;W(0x204)=-0x1ff0;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);break;
    case 5:
        W(0x1f0)=-0x16c0;W(0x1f4)=-0x3c0;W(0x1f8)=-0x240;
        W(0x1fc)=0x1320;W(0x200)=-0xb20;W(0x204)=-0x2870;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);break;
    case 6:
        W(0x1f0)=0x16c0;W(0x1f4)=-0x3c0;W(0x1f8)=-0x240;
        W(0x1fc)=-0x1320;W(0x200)=-0xb20;W(0x204)=-0x2870;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);break;
    case 16:
        W(0x1f4)=-0x1a0;W(0x1f8)=-0x2280;W(0x200)=-0x290;
        W(0x1f0)=0;W(0x1fc)=0;W(0x204)=-0x1080;
        SUBMIT(13,1,0,0);SUBMIT(14,1,0,128);
        SUBMIT(8,7,-0x3320,0);SUBMIT(9,7,0x3320,128);func_8001FA1C();break;
    case 17:
        W(0x1f4)=-0xa0;W(0x1f8)=-0x1400;W(0x200)=-0x200;
        W(0x1f0)=0;W(0x1fc)=0;W(0x204)=-0x2400;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);
        SUBMIT(13,1,0,0);SUBMIT(14,1,0,128);
        SUBMIT(8,7,-0x3320,0);SUBMIT(9,7,0x3320,128);break;
    case 18:
        *(s16 *)(settings+0x3a)=0;W(0x200)=-0x180;
        H(0x2ec)=0x600;scratch[0x2e7]=0x70;H(0x2ea)=0xe00;scratch[0x1e8]=1;
        W(0x1fc)=*(s16 *)(base+0x59da);W(0x204)=*(s16 *)(base+0x59de)+256;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);
        SUBMIT(13,1,0,0);SUBMIT(14,1,0,128);
        SUBMIT(15,2,0,0);SUBMIT(12,4,0,0);
        SUBMIT(8,7,-0x3320,0);SUBMIT(9,7,0x3320,128);break;
    case 19:
        *(s16 *)(settings+0x3a)=0;W(0x200)=-0x180;
        H(0x2ec)=0x600;scratch[0x2e7]=0x10;H(0x2ea)=0xe00;scratch[0x1e8]=1;
        W(0x1fc)=*(s16 *)(base+0x59da);W(0x204)=*(s16 *)(base+0x59de)+256;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);
        SUBMIT(13,1,0,0);SUBMIT(14,1,0,128);
        SUBMIT(15,2,0,0);SUBMIT(12,4,0,0);
        SUBMIT(8,7,-0x3320,0);SUBMIT(9,7,0x3320,128);break;
    case 20:
        *(s16 *)(settings+0x3a)=0;W(0x200)=-0x180;W(0x1f0)=0x1200;
        W(0x1f4)=-0x700;W(0x1f8)=-0x1800;scratch[0x1e8]=0;
        W(0x1fc)=*(s16 *)(base+0x59da);W(0x204)=*(s16 *)(base+0x59de)+256;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);
        SUBMIT(13,1,0,0);SUBMIT(14,1,0,128);
        SUBMIT(8,7,-0x3320,0);SUBMIT(9,7,0x3320,128);break;
    case 21:
        *(s16 *)(settings+0x3a)=0;W(0x200)=-0x180;W(0x1f0)=-0x1200;
        W(0x1f4)=-0x700;W(0x1f8)=-0x1800;scratch[0x1e8]=0;
        W(0x1fc)=*(s16 *)(base+0x59da);W(0x204)=*(s16 *)(base+0x59de)+256;
        SUBMIT(10,8,0,0);SUBMIT(11,8,0,128);
        SUBMIT(13,1,0,0);SUBMIT(14,1,0,128);
        SUBMIT(8,7,-0x3320,0);SUBMIT(9,7,0x3320,128);break;
    case 32:
        W(0x1f0)=-0x149;W(0x1f4)=-0x500;W(0x1f8)=-0x2400;
        W(0x1fc)=-0x900;W(0x204)=-0x800;W(0x200)=-0x1c0;break;
    case 33:
        switch(scratch[0x2e3]) {
        case 0:case 1:case 4:case 5:
            W(0x1f0)=-0x149;W(0x1f4)=-0x580;W(0x1f8)=-0x2000;
            W(0x1fc)=-0x900;W(0x200)=-0x100;W(0x204)=-0xb80;break;
        case 2:case 3:
            W(0x1f0)=-0x149;W(0x1f4)=-0x300;W(0x1f8)=-0x2040;
            W(0x1fc)=-0x900;W(0x200)=-0xe0;W(0x204)=-0x800;break;
        }
        break;
    case 34: {
        u8 submode=scratch[0x2e3];
        scratch[0x1e8]=1;
        switch(submode) {
        case 0:case 1:case 4:case 5:
            W(0x1f0)=-0x480;W(0x1f4)=-0x200;W(0x1f8)=-0x1930;
            W(0x1fc)=-0x900;W(0x200)=-0x100;W(0x204)=-0x800;break;
        case 2:case 3:
            W(0x1f0)=-0x480;W(0x1f4)=-0x200;W(0x1f8)=-0x1900;
            W(0x1fc)=-0x900;W(0x200)=0;W(0x204)=-0x800;break;
        }
        break;
    }
    case 35:
        scratch[0x1e8]=1;W(0x1f0)=-0x780;W(0x1f4)=-0x1e0;W(0x1f8)=-0x1440;
        W(0x1fc)=-0xa80;W(0x200)=-0x100;W(0x204)=-0x800;break;
    case 36:
        W(0x1f0)=-0x780;W(0x1f4)=-0xa0;W(0x1f8)=-0x1610;
        W(0x1fc)=-0x900;W(0x200)=-0x310;W(0x204)=-0x800;break;
    case 37: {
        register s32 paired=-0x900;
        __asm__ volatile("" : : "r"(paired));
        W(0x1f4)=-0x500;W(0x1f8)=-0x2a00;W(0x200)=-0x400;
        W(0x1f0)=paired;W(0x1fc)=paired;W(0x204)=-0x800;break;
    }
    case 38:
        D_80193C8C=-0x1700;W(0x1f0)=-0x333;W(0x1f4)=-0x1f0;
        W(0x1f8)=-0x1b00;W(0x1fc)=-0x1000;W(0x200)=-0x110;
        D_80193C8A=0;W(0x204)=-0x9f0;break;
    case 48:
        W(0x1f4)=-0x1000;W(0x1f8)=-0x2a00;W(0x200)=-0x100;
        W(0x1f0)=0;W(0x1fc)=0;W(0x204)=-0x800;break;
    }
}
