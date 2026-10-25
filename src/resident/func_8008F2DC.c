#include "common.h"

extern s16 scratch42 __asm__("0x1F800042");
extern s16 scratch5A __asm__("0x1F80005A");
extern s16 scratch72 __asm__("0x1F800072");
extern s16 scratchF0 __asm__("0x1F8000F0");
extern s16 scratchF2 __asm__("0x1F8000F2");
extern s16 scratchF4 __asm__("0x1F8000F4");
extern u8 *scratch2F4 __asm__("0x1F8002F4");
extern u32 D_8010C328[];
/* Raw call-site view: this caller explicitly prepares a1=6, although the
 * recovered helper consumes only a0. This is not a second semantic formal. */
extern void func_800956C0();
extern u32 func_8005B36C(s32,s32,s32,s32);
extern void func_8005C2AC(u8 *,u8,u8,u8,u8);
extern void func_8005BA30(u8 *,u32,u32);
extern u32 func_8005B7CC(u32,u32,u32);
extern u32 func_8005BD1C(u8 *);
extern s32 func_80094EEC(u8 *,u32);
extern s32 func_8001E6B8(s32);
extern u32 func_80094DC4(u8 *);
extern s32 func_8005C7A0(u32);
extern void func_800951C4(u8 *,u32,s32,s32);
extern void func_80095090(u8 *),func_80057968(u8 *),func_8005778C(u8 *);
extern void func_80094FF4(u8 *),func_800954E8(u8 *);
extern s32 func_8001E694(u32,s32),func_8001E5A4(u32,s32);

#define H(o) (*(u16 *)(actor+(o)))
#define S(o) (*(s16 *)(actor+(o)))
#define W(o) (*(u32 *)(actor+(o)))

/* Partial native record/scratch views only. Selector and gameplay meanings,
 * complete layouts, valid table indices and historical APIs are provisional.
 * Keep byte/halfword truncation, signed remainders, and callback reloads. */
void func_8008F2DC(u8 *record)
{
    /* Aid A: the observed persistent record lives in s0. */
    register u8 *actor __asm__("$16") = record;
    u8 *scratch = (u8 *)0x1F800000;
    /* Aid B: preserve the explicit a0 preparation on the first call edge. */
    __asm__("" : "=r"(actor) : "0"(actor));
    switch (actor[0x397]) {
    case 0:
    {
        u32 angle,second;
        s32 side;
        s32 turn;
        u32 heading;
        func_800956C0(actor,6);
        angle = func_8005B36C(S(2),S(6),scratch42,scratch72);
        {
            u8 *reference=scratch2F4;
            second = func_8005B36C(S(2),S(6),*(s16 *)(reference+2),*(s16 *)(reference+6));
        }
        {
            /* Aids C/D/E: actual first three inputs to 5C2AC. */
            register u8 *vectorActor __asm__("$4") = actor;
            register u32 selector __asm__("$5") = 0x6D;
            register u32 index __asm__("$6") = 7;
            /* Aid F: prepare these real inputs before the comparison. */
            __asm__("" : : "r"(selector), "r"(index));
            side = ((angle - second) & 255) < 129U;
            /* Aid G: keep the angle and its real comparison result live. */
            __asm__("" : : "r"(angle), "r"(side));
            actor[0x3AC] = side;
            func_8005C2AC(vectorActor, selector, index, actor[0x3AB], side);
        }
        func_8005BA30(actor,0x6D,1);
        W(8) = (scratch42-scratchF0)/7;
        W(12) = (scratch5A-scratchF2)>>2;
        W(16) = (scratch72-scratchF4)/7;
        H(4) = 0;
        actor[0x3D1] = 0;
        W(0x3A0) = 0;
        heading=func_8005B7CC(actor[0x3AB],actor[0x3AA],0x40);
        turn=0x1C0-(heading&255);
        actor[0x3AA]=heading;
        H(0x26)=(turn%256)*16;
        H(2)+=W(8);
        H(6)+=W(16);
        actor[0x397]++;
        break;
    }
    case 1:
        func_8005BD1C(actor);
        switch (actor[0x390]) {
        case 4:case 5:case 6:
            H(4)+=W(12);
            /* Fall through. */
        case 2:case 3:
        {
            u32 heading;
            s32 turn;
            H(2)+=W(8);
            H(6)+=W(16);
            heading=func_8005B7CC(actor[0x3AB],actor[0x3AA],12);
            turn=0x1C0-(heading&255);
            actor[0x3AA]=heading;
            H(0x26)=(turn%256)*16;
            break;
        }
        case 7:
            H(2)+=W(8);
            H(4)+=W(12);
            H(6)+=W(16);
            if (func_80094EEC(actor,128)) {
                u32 row=actor[0x392]*12+actor[0x398]*264;
                s32 timer=(s16)*(u16 *)(scratch+0x31C);
                s32 random=func_8001E6B8(*(u32 *)((u8 *)D_8010C328+row)>>28);
                *(u16 *)(scratch+0x31C)+=random;
                if (func_80094DC4(actor)) {
                    s32 jitter=func_8005C7A0(16);
                    /* Aid H: preserve the measured byte/add operand in v1. */
                    register u32 facing __asm__("$3") = (*(u8 **)(scratch + 0x2F4))[0x3A4];
                    u32 heading=facing+jitter;
                    s32 amount;
                    amount=func_8001E6B8(8);
                    func_800951C4(actor,heading&255,amount+16,16);
                    func_80095090(actor);
                    func_80057968(actor);
                    if (timer<21) {
                        func_8005BA30(actor,0x74,4);
                        W(8)=func_8001E694((actor[0x3AA]+128)&255,40);
                        W(16)=func_8001E5A4((actor[0x3AA]+128)&255,40);
                        actor[0x396]=0x9B;
                        H(4)=0;
                        actor[0x397]=1;
                    }
                } else {
                    func_80094FF4(actor);
                    func_8005778C(actor);
                }
            }
            break;
        case 8:case 9:case 10:case 11:
            H(2)+=W(8);
            H(4)-=W(12);
            H(6)+=W(16);
            break;
        case 12:
            H(4)=0;
            break;
        case 18:
        {
            /* Aid I: the scratch byte is observed in v1. */
            register u32 scratchKey __asm__("$3") = scratch[0x2A8];
            u32 status;
            /* Aid J: preserve the scratch-byte-first load ordering. */
            __asm__("" : : "r"(scratchKey));
            status=actor[0x38D];
            if(status==scratchKey) status=0x81;
            else status=0x82;
            actor[0x396] = status;
            actor[0x397]=0;
            break;
        }
        }
        break;
    }
    func_800954E8(actor);
}
