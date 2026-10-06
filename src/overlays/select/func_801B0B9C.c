#include "common.h"
extern u8 D_800FF748[], D_8010A322, D_801D8DFB, D_801D8DFC;
extern u8 D_801DA2F0, D_801DA06B, D_801DA069, D_801DA06A, D_801DA068;
extern u8 D_8011CA90[];
extern u16 D_800AD638, D_801DA5D0, D_801DA5D2, D_801DA5D4, D_801DA5D6;
/* Caller word views preserve raw callback results until observed byte
 * narrowing; these are not recovered complete original prototypes. */
extern void func_801A98F0(u8 *, u32), func_800171FC(s32), func_801A9C54(void);
extern void func_800171C4(u32), func_8018E538(u32), func_800AB620(s32);
extern void func_801A8CD0(void), func_801B30FC(void);
extern s32 func_801B190C(void), func_801B1B0C(u32), func_801AE294(u32), func_801ACE2C(u32), func_80019B64(u32);
extern u32 func_801B3D20(u32);
void func_801B0B9C(void) {
    /* The selector load precedes the frame setup. Five measured bindings
     * and seven empty value/control uses preserve captures and distinct
     * dispatch continuations. Three bindings and four uses were removed
     * cumulatively; the remaining bindings were tested again jointly.
     * The natural 32-byte frame has no reserved local storage. */
    s32 mode = D_8010A322;
    register u8 *base __asm__("$17")=D_800FF748;
    register u8 *scratch = (u8*)0x1F800000;
    register s32 next __asm__("$2"), result __asm__("$3"), index;
    register u8 *record __asm__("$2");
    u8 *flags;
    u16 *cursor;
    /* jtbl_8018A634 owns exactly 103 entries: 21 active states and 82
     * no-op exits. The following zero word is alignment, not a state. */
    switch (mode) {
    case 0:
        D_801D8DFB = 0;
        next = base[0xABDA];
        D_801D8DFC = 1; D_801DA2F0 = 1;
        next++;
        goto set;
    case 1: {
        register s32 one __asm__("$2")=1;
        result = base[0x8F23];
        if (result == one) next = 20; else next = 10;
        goto set;
    }
    case 10:
        /* Separate byte fields; the clear and captured selector both occur
         * before the callback. The comma expression retains argument setup. */
        func_801A98F0(D_8011CA90,(base[0x8F15]=0,base[0x8F22]));
        next = base[0xABDA];
        __asm__ volatile("" : : "r"(next));
        next++;
        goto set;
    case 11:
        func_800171FC((u8)scratch[0x2E2]==4 ? 2 : 3);
        base[0xABDA]=0; base[0x8F23]=1;
        break;
    case 20:
        func_801A9C54();
        record = base+base[0xABA0]*36;
        record[0x8F26]++;
        record = base+base[0xABA1]*36;
        record[0x8F26]++;
        next = base[0xABDA];
        next++;
        goto set;
    case 21:
        if((u8)scratch[0x2E2]==4) { next = 80; goto set; }
        cursor = &D_801DA5D0;
        D_800AD638 = 0;
        D_801DA06B = 0; D_801DA069 = 0; D_801DA06A = 0; D_801DA068 = 0;
        *cursor = 0; D_801DA5D2 = 0; D_801DA5D4 = 1;
        index = base[0x8F22]; D_801DA5D6 = 9;
        flags = base+index+0xAB50;
        *flags|=2;
        goto submit;
    case 30:
        next = base[0xABDA]; base[0xABD8]=0;
        __asm__ volatile("" : : "r"(next));
        next++;
        goto set;
    case 31:
        result = func_801B190C();
        if(result == 2) { next = 40; goto set; }
        break;
    case 40:
        next = base[0xABDA]; base[0xABD8]=0;
        __asm__ volatile("" : : "r"(next));
        next++;
        goto set;
    case 41:
        result = func_801B1B0C(0);
        switch(result) {
        case 1: goto thirty;
        case 2: next = 50; goto set;
        }
        break;
    case 50:
        next = base[0xABDA]; base[0xABD8]=0;
        __asm__ volatile("" : : "r"(next));
        next++;
        goto set;
    case 51:
        result = func_801AE294(0);
        if(result == 1) goto back40;
        if(result != 2) goto done;
        next = 60;
        goto set;
back40:
        __asm__ volatile("" : :);
        next = 40;
        goto set;
    case 60:
        next = base[0xABDA]; base[0xABD8]=0;
        next++;
        goto set;
    case 61:
        result = func_801AE294(1);
        if(result == 1) goto back50;
        if(result != 2) goto done;
        next = 70;
        goto set;
back50:
        __asm__ volatile("" : :);
        next = 50;
        goto set;
    case 70:
        result = base[0xABDA];
        D_801D8DFC = 1; base[0xABD8]=0;
        base[0xABDA]=result+1;
        break;
    case 71:
        result = func_801ACE2C((D_801D8DFB != 0)*2);
        switch(result) {
        case 1: next = 60; goto set;
        case 2: __asm__ volatile("" : :); next = 80; goto set;
        case 3:
            scratch[0x29F]=0;
            func_800171C4(255);
            break;
        }
        break;
    case 80:
        next = base[0x8F22]+1;
        base[0x8F22]=next;
        if((u8)next>=48) { next = 90; goto set; }
        base[0xABDA]=0; base[0x8F23]=0;
        break;
    case 90:
        func_800171FC(10);
        base[0xABDA]=0;
        break;
    case 100:
        func_8018E538(0);
        next = base[0xABDA];
        scratch[0x330]=0; scratch[0x29F]=0;
        next++;
        goto set;
    case 101:
        if(!func_80019B64(202)) break;
        scratch[0x330]=1;
        next = base[0xABDA];
        *(u16 *)(base + 0xABD6) = 255;
        next++;
        goto set;
    case 102:
        func_800AB620(0x205);
        func_801A8CD0();
        next = 1;
        cursor = &D_801DA5D0;
        D_801DA2F0 = next;
        *cursor = 0; D_801DA5D4 = 1;
        D_800AD638 = 0;
        D_801DA06B = 0; D_801DA069 = 0; D_801DA06A = 0; D_801DA068 = 0;
        D_801DA5D2 = 0; D_801DA5D6 = 9;
submit: {
        /* Refresh indices after the callback. The two 36-byte record
         * counters are byte-wrapping; the submitted result narrows to a byte
         * before the halfword store. No table bounds guards are invented. */
        register u32 selected;
        func_801B30FC();
        index = base[0xABA0];
        selected = base[0x8F22];
        record = base+index*36;
        *cursor = record[0x8F27];
        D_801DA5D2 = (u8)func_801B3D20(selected);
        goto thirty;
    }
    }
done:
    return;
thirty:
    next = 30;
set:
    base[0xABDA]=next;
}
