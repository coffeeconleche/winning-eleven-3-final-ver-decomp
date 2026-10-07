#include "common.h"
extern u16 D_800AD638,D_8010A5A4,D_801D8A82,D_801D8A84;
extern s16 D_801DA5D2,D_801DA5D6;
extern u8 D_801D8A51,D_801D94E8[],D_801DA2F0,D_801DAD84,D_801DAE50;
extern u8 *func_8001D004(u32);
extern void func_8006FCFC(u8),func_800AB620(s32),func_801AB910(s32,u32),func_801B5560(u8);
/* Observed caller word views, not complete original APIs. B38E0 ignores its
 * first word and consumes the second as a signed halfword; explicit narrowing
 * at each call retains the original argument setup. */
extern u32 func_801B38E0(u32,s32);

/* Snapshot the previous state before the current-state byte store. */
static __inline__ void rememberMode(u32 mode) {
 register u32 previous=D_801DAD84;
 register u32 next;

 next=mode;
 D_801DAD84=next;D_801D8A51=previous;
}

s32 func_801B29CC(u32 argument,u32 secondary)
{
    register u16 *xy __asm__("$2");
    register u32 newMode;
    register u32 y;
    register u32 x;
    register u32 xNext;
    register u32 yUnchanged;
    register s32 nextScroll __asm__("$5");
    /* Plain unused extent in the measured 48-byte frame. Its original type and
     * purpose are unknown; removal changes only eight frame-related words.
     * No instruction, empty constraint or memory access consumes this slot. */
    u8 unknownFrameSlot[16];
    D_801DAE50=0;
    if(D_801DAD84==4 && D_801DA2F0==1) {
        func_8001D004(0x30AC)[10]=0x36;
        func_8006FCFC(0x36);
    } else func_8001D004(0x30AC)[10]=91;
    func_801B5560((u8)argument);
    if(D_8010A5A4==0x1000) {
        func_800AB620(0x50D);
        switch(D_801DAD84) {
        case 4: case 5:
            func_800AB620(0x50D);
            xy=&D_801D8A82;y=D_801D8A84;x=*xy;y-=16;
store_y_return:
            /* Both coordinate halfwords are written, including the unchanged one. */
            *xy=x;D_801D8A84=y;
            return 0;
        case 3:
mode_two:newMode=2;
mode_store:D_801DAD84=newMode;return 0;
        case 0: case 1:
            if(D_800AD638!=0)D_800AD638--;
            else {
                register s16 *scroll=&D_801DA5D2;
                register s32 value=*scroll;
                nextScroll=value;

                if(value>0) {
                    nextScroll--;
                    *scroll=nextScroll;
                    goto refresh_scroll;
                } else rememberMode(4);
            }
            goto skip_blank;
        case 2: goto close_selection;
        default:return 0;
        }
    } else if(D_8010A5A4==0x4000) {
        func_800AB620(0x50D);
        switch(D_801DAD84) {
        case 3: case 5:
            func_800AB620(0x50D);
            xy=&D_801D8A82;y=D_801D8A84;x=*xy;y+=16;
            goto store_y_return;
        case 4:
            {register u32 restored=D_801D8A51;
            D_801DAD84=restored;
            if(restored<2) {
                if(D_801D94E8[(D_800AD638+D_801DA5D2)*45]==255)
                    func_801B29CC((u8)argument,(u8)secondary);
            }
            return 0;}
        case 0:case 1: {
            register u32 old __asm__("$5")=D_800AD638;
            if(old<8) {
                u16 next=old+1;
                D_800AD638=next;
                if(D_801DA5D2+(u16)next>=65) {
                    xy=&D_801D8A82;x=*xy;

                    y=D_801D8A84;D_800AD638=old;y+=16;
                    goto lower_pair;
                }
            } else {
                register s16 *scroll=&D_801DA5D2;
                register s32 value=*scroll;
                {register s32 count=D_801DA5D6;
                nextScroll=value;
                /* Actual scroll snapshot: retain its independent word lifetime. */
                __asm__("" : "=r"(value) : "0"(value));
                if(value+count<65) {
                    nextScroll++;
                    *scroll=nextScroll;
refresh_scroll:
                    func_801B38E0(0,(s16)nextScroll);
                    goto skip_blank;
                } else {
                    xy=&D_801D8A82;y=D_801D8A84;x=*xy;y+=16;
lower_pair:
                    *xy=x;D_801D8A84=y;
                }
                }
            }
skip_blank:
            /* Preserve the original unchecked recursion and halfword/byte rereads. */
            if(D_801D94E8[(D_800AD638+D_801DA5D2)*45]==255)
                func_801B29CC((u8)argument,(u8)secondary);
            return 0;
        }
        case 2:goto mode_three;
        default:return 0;
        }
    } else if(D_8010A5A4==0x8000) {
        func_800AB620(0x50D);
        switch(D_801DAD84) {
        case 0:case 5:
            func_800AB620(0x50D);
            xy=&D_801D8A82;xNext=*xy;yUnchanged=D_801D8A84;xNext-=16;
store_x_return:
            /* The matching C retains both ordinary stores without volatile views. */

            *xy=xNext;D_801D8A84=yUnchanged;
            return 0;
        case 4:
            {register u32 restored=D_801D8A51;
            D_801DAD84=restored;
            /* Preserve the original byte narrowing after the state store. */
            __asm__("" : "=r"(restored) : "0"(restored));
            if((u8)restored==2)D_801DAD84=1;
            {
                register u32 index=D_800AD638;
                register s32 sum __asm__("$2")=D_801DA5D2;
                sum=(s32)index+sum;
                goto horizontal_check;
        case 1:D_801DAD84=0;return 0;
        case 2:case 3:
                index=D_800AD638;sum=D_801DA5D2;
                {register u32 mode=1;D_801DAD84=mode;}
                sum=(s32)index+sum;
horizontal_check:
                sum*=45;
                if(D_801D94E8[sum]==255) {register u32 next=index+1;D_800AD638=next;}
                {register u32 reread=D_800AD638;
                if(reread>=9) {register u32 next=reread-2;D_800AD638=next;}}
                return 0;
            }
            }
        default:return 0;
        }
    } else if(D_8010A5A4==0x2000) {
        func_800AB620(0x50D);
        switch(D_801DAD84) {
        case 2:case 3:case 5:
            xy=&D_801D8A82;xNext=*xy;yUnchanged=D_801D8A84;xNext+=16;
            goto store_x_return;
        case 0:newMode=1;goto mode_store;
        case 1:if(D_800AD638<5)goto mode_two;
mode_three:newMode=3;goto mode_store;
        case 4:goto mode_two;
        default:return 0;
        }
    } else if(D_8010A5A4==0x20) {
        switch(D_801DAD84) {
        case 0:case 1: {
            register s32 selected;
            {register s32 row=D_801DA5D2;
            register u32 index=D_800AD638;
            row+=index;

            index=row*3;

            row=index<<4;

            selected=row-index;}
            if(D_801D94E8[selected]!=255) {
                register u8 *rows=D_801D94E8;
                register u32 mode=D_801DAD84;

                rows=(u8*)((u32)selected+(u32)rows);
                rows+=mode;
                func_801AB910(0,*rows);
                rememberMode(5);
                func_800AB620(0x528);
            }
            return 0;
        }
        case 4:func_800AB620(0x528);D_801DAE50=2;return 2;
        case 5:D_801DAD84=D_801D8A51;func_801AB910(-1,0);return 0;
        case 2: {
            register s16 *scroll=&D_801DA5D2;
            register u32 value;
            register u32 request;
            if(*scroll==0)return 0;
            func_800AB620(0x50D);
            value=*(u16 *)scroll;
            request=0;

            value--;
            goto refresh_text;
        case 3:
            scroll=&D_801DA5D2;
            if(*scroll+D_801DA5D6>=65)return 0;
            func_800AB620(0x50D);
            value=*(u16 *)scroll;
            request=0;

            value++;
refresh_text:
            {register s32 signedValue __asm__("$5")=(s16)value;

            *scroll=value;
            func_801B38E0(request,signedValue);}
            return 0;
        }
        default:return 0;
        }
    } else if(D_8010A5A4==0x40) {
        switch(D_801DAD84) {
        case 4:
            if((u8)secondary==0) {
                func_800AB620(0x529);D_801DAE50=1;return 1;
            }
            return 0;
        case 5:
            func_800AB620(0x529);
            {register u32 restore;
            register s32 close=-1;
            /* Two identities consume the real outgoing -1 word. They retain
             * its early setup and the separate dismissal tail, without clobbers. */
            __asm__("" : "=r"(close) : "0"(close));
            restore=D_801D8A51;
            D_801DAD84=restore;
            /* Explicit volatile prevents old GCC from merging the identities. */
            __asm__ volatile("" : "=r"(close) : "0"(close));
            func_801AB910(close,0);}
            return 0;
        default:func_800AB620(0x529);
close_selection:
            rememberMode(4);
            break;
        }
    }
    return 0;

}
