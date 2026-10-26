#include "common.h"

/* Native actor/scratch access views; complete historical layouts remain unknown.
 * Headings are unsigned byte angles; speed accumulation wraps as an unsigned word.
 * Unsigned scratch-half captures and empty compiler scheduling boundaries retain
 * GCC 2.7.2 load, callback and publication chronology. They emit no instructions.
 * Signed divisions retain the native zero-divisor trap; no selector bounds are added.
 */

#define B(o) actor[o]
#define H(o) (*(u16 *)(actor+(o)))
#define S(o) (*(s16 *)(actor+(o)))
#define W(o) (*(u32 *)(actor+(o)))
#define Q(o) (*(u16 *)(scratch+(o)))
extern s32 func_8001E6B8(u32);
extern u32 func_80045504(u8 *,u32),func_80052EBC(u8 *);
extern void func_80046F8C(u8 *),func_800479B8(u8 *,u32),func_8004840C(u8 *);
extern u32 func_800484B8(u32,u32,u32),func_8005B36C(s32,s32,s32,s32),func_8005B7CC(u32,u32,u32);
extern void func_8004B0F0(u8 *,u32,u32,u32),func_8005B908(u8 *),func_8005BA30(u8 *,u32,u32),func_8005BA78(u8 *,u32,u32);
extern u32 func_8005BD1C(u8 *);
extern u8 D_800C6B74[],D_8010C32A[];
void func_800259F0(u8 *input)
{
    register u8 *actor __asm__("s1") = input;
    u8 *scratch = (u8 *)0x1F800000;
    u32 heading;
    s32 turn;
    u32 initialOwner, selectedOwner, facing, aimFacing, recoveryOwner, steeringFacing, steeringDistance;
    u32 scratchValue;
    register u32 acceleratedSpeed __asm__("v1");
    register u32 maximumSpeed __asm__("a0");
    u32 alignmentDistance, aimDistance;
    u32 bodyFacing,currentOwner, turnedFacing;
    u32 callHeading;
    s32 aligned;
    u32 finalSpeed;
    u32 resetByte, indexValue;
    u32 value;
    s32 result;
    register u8 *callActor __asm__("a0");
    B(0x3A7)=1;
    H(0x3AE)-=2;
    switch (B(0x397))
    {
    case 0:
        B(0x3D1)=2;
        scratchValue=scratch[0x2A8];
        initialOwner=B(0x38D);
        if (initialOwner==scratchValue)
        {
            func_8005BD1C(actor);
            B(0x3D0)=4;
            goto state3;
        }
        if (initialOwner==scratch[0x2A9])
        {
            func_8005BD1C(actor);
            B(0x3D0)=8;
            B(0x397)=2;
            break;
        }
        func_8005BA78(actor,4,B(0x390));
        B(0x3A4)=B(0x3AA);
        B(0x397)++;
    case 1:
        B(0x390)++;
        if ((*(u32 **)(actor+0x18))[B(0x390)]==11) B(0x390)=0;
        {
            u32 *cursor=*(u32 **)(actor+0x18);
            cursor+=B(0x390);
            W(0x1C)=*cursor;
        }
        callActor=actor;
        if ((scratch[0x29A]&255)!=1 || scratch[0x2FC]!=0)
        {
            callActor[0x396]=1;
            callActor[0x397]=5;
            goto doneCall;
        }
        scratchValue=scratch[0x2A9];
        selectedOwner=B(0x38D);
        if (selectedOwner!=scratchValue)
        {
            if (B(0x39A)==2) goto state2;
            if (selectedOwner!=scratch[0x240] && selectedOwner!=scratch[0x241]) goto state2;
        }
        if ((u8)func_80045504(actor,4)!=0) break;
        func_800484B8(S(2),S(6),B(0x3B4));
        heading=func_8005B36C(S(2),S(6),(s16)Q(0xF8),(s16)Q(0xFC));
        if ((u8)func_80052EBC(actor)==0)
        {
            {
                u8 nativeIndex=scratch[0x28C];
                indexValue=nativeIndex&255;
            }
            if (indexValue) heading=D_800C6B74[indexValue];
            else heading=B(0x3AA);
        }
        goto aim;
state2:
        callActor=actor;
        callActor[0x396]=7;
        callActor[0x397]=2;
        goto doneCall;
aim:
        if (B(0x38D)==scratch[0x2A8])
        {
state3:
            B(0x397)=3;
            break;
        }
        if ((H(0x3D4)&*(u16 *)(scratch+B(0x398)*2+0x22))==0)
        {
            func_8005BA78(actor,38,B(0x390));
            B(0x396)=1;
            B(0x397)=0;
            break;
        }
        steeringFacing=B(0x3AA);
        {
            s32 difference=(s32)heading-(s32)steeringFacing;
            if (((u32)difference&255)<129) turn=difference;
            else turn=(s32)steeringFacing-(s32)heading;
        }
        {
            register u32 byteDifference __asm__("a2")=turn&255;
            steeringDistance=byteDifference;
        }
        callActor=actor;
        if (steeringDistance<33)
        {
            func_8005BA78(callActor,4,B(0x390));
            __asm__("");
            heading &=255;
            B(0x3AA)=func_8005B7CC(heading,B(0x3AA),4);
            result=func_8005B7CC(heading,B(0x3A4),4);
            value=(s32)B(0x3B4)/((s32)B(0x3B5)-2);
            B(0x3A4)=result;
            W(0x3A0)+=value;
            if (W(0x3A0)>B(0x3B4)) W(0x3A0)=B(0x3B4);
            if (W(0x3A0)<30) W(0x3A0)=30;
        }
        else if (steeringDistance>=96 && W(0x3A0)>=B(0x3B4))
        {
            func_8005BA30(callActor,7,0);
            B(0x3AB)=heading;
            B(0x397)=5;
        }
        else
        {
            func_8005BA78(callActor,38,B(0x390));
            __asm__("");
            heading &=255;
            B(0x3AA)=func_8005B7CC(heading,B(0x3AA),12);
            B(0x3A4)=func_8005B7CC(heading,B(0x3A4),24);
            W(0x3A0)+=8;
            if (W(0x3A0)>=35)
            {
                finalSpeed=34;
                goto storeSpeed;
            }
        }
        break;
    case 2:
        B(0x3D1)=2;
        H(0x3AE)--;
        func_8005BD1C(actor);
        func_8004840C(actor);
        heading=func_8005B36C(S(2),S(6),(s16)Q(0xF8),(s16)Q(0xFC));
        if (W(0x3A0)>=48)
        {
            facing=B(0x3AA);
            alignmentDistance=(heading-facing)&255;
            if (alignmentDistance>=129) aligned=(s32)((facing-heading)&255)<17;
            else aligned=(s32)alignmentDistance<17;
            if (aligned)
            {
                bodyFacing=B(0x3A4);
                alignmentDistance=(heading-bodyFacing)&255;
                if (alignmentDistance>=129)
                {
                    if ((s32)((bodyFacing-heading)&255)<17)
                    {
                        __asm__("");
                        goto accelerate;
                    }
                    goto follow2;
                }
                if ((s32)alignmentDistance>=17) goto follow2;
                goto accelerate;
            }
        }
follow2:
        func_800479B8(actor,0);
        goto ownership;
accelerate:
        if (H(0x38E)!=89) func_8005BA78(actor,4,B(0x390));
        {
            u32 turned=func_8005B7CC(heading&255,B(0x3AA),4);
            B(0x3AA)=turned;
            B(0x3A4)=turned;
        }
        if (B(0x39B))
        {
            s32 bonus=(s32)B(0x3BA)-17;
            register s32 quotient __asm__("v0")=((s32)B(0x3B4)+bonus)/(s32)B(0x3B5);
            register u32 adjustment __asm__("v0");
            __asm__("" :  :  : "memory");
            acceleratedSpeed=W(0x3A0);
            maximumSpeed=B(0x3B4);
            acceleratedSpeed+=quotient;
            adjustment=B(0x3BA);
            W(0x3A0)=acceleratedSpeed;
            adjustment-=17;
            maximumSpeed+=adjustment;
        }
        else
        {
            s32 quotient=((s32)B(0x3B4)-4)/(s32)B(0x3B5);
            __asm__("" : "=r"(quotient) : "0"(quotient) : "memory");
            maximumSpeed=B(0x3B4)-4;
            acceleratedSpeed=W(0x3A0)+quotient;
            W(0x3A0)=acceleratedSpeed;
        }
        {
            u32 tooFast=maximumSpeed<acceleratedSpeed;
            if (tooFast) W(0x3A0)=maximumSpeed;
        }
        if (W(0x3A0)<30) W(0x3A0)=30;
        goto ownership;
ownership:
        currentOwner=scratch[0x2A9]&255;
        if (currentOwner)
        {
            if (B(0x38D)==scratch[0x2A8])
            {
                func_8005BA78(actor,4,B(0x390));
                B(0x397)=3;
            }
            else if (B(0x38D)!=currentOwner || (scratch[0x29A]&255)!=1)
            {
                resetByte=24;
resetState:
                B(0x396)=resetByte;
                B(0x397)=0;
            }
        }
        goto contact;
    case 3:
        func_8005BD1C(actor);
        H(0x3AE)--;
        turn=0;
        if ((H(0x3D4)&*(u16 *)(scratch+B(0x398)*2+0x22))==0 && (callActor=actor, B(0x3D0)==0))
        {
            func_8005BA78(callActor,38,B(0x390));
            W(0x3A0)+=12;
            if (W(0x3A0)>=49) W(0x3A0)=48;
            resetByte=1;
            goto resetState;
        }
        {
            u8 nativeIndex=scratch[0x28C];
            indexValue=nativeIndex&255;
        }
        callActor=actor;
        if (indexValue)
        {
            heading=D_800C6B74[indexValue];
            aimFacing=B(0x3AA);
            aimDistance=(heading-aimFacing)&255;
            if (aimDistance>=129)
            {
                register u32 close __asm__("v0")=(s32)((aimFacing-heading)&255)<97;
                {
                    u32 promoted=heading&255;
                    callHeading=promoted;
                }
                if (close)
                {
                    __asm__("");
                    goto withinTurn;
                }
                goto turnAway3;
            }
            {
                u32 close=(s32)aimDistance<97;
                {
                    u32 promoted=heading&255;
                    callHeading=promoted;
                }
                if (!close)
                {
turnAway3:
                    func_80046F8C(actor);
                    goto contact;
                }
                else
                {
withinTurn:
                    heading=func_8005B7CC(callHeading,B(0x3AA),16);
                    turnedFacing=B(0x3AA);
                    aimDistance=(turnedFacing-heading)&255;
                    if (aimDistance>=129)
                    {
                        if ((s32)((heading-turnedFacing)&255)<5)
                        {
                            callActor=actor;
                            goto straight;
                        }
                        goto turning3;
                    }
                    if ((s32)aimDistance>=5)
                    {
turning3:
                        {
                            u32 oldSide=B(0x3AC);
                            u32 orientation=((heading-B(0x3AA))&255)<129;
                            __asm__("" : : "r"(orientation));
                            turn=orientation;
                            if (oldSide!=turn)
                            {
                                if (H(0x38E)!=89) func_8005BA30(actor,89,(u8)(((s32)B(0x390)+7)%14));
                                B(0x3AC)=turn;
                            }
                            else if (H(0x38E)!=89) func_8005BA30(actor,89,(u8)(B(0x390)%14));
                            turn=2;
                        }
                    }
                    else
                    {
                        callActor=actor;
                        goto straight;
                    }
                    goto kick;
                }
            }
        }
        else
        {
straight:
            func_8005BA78(callActor,4,B(0x390));
            heading=(B(0x3AA)+16)&224;
        }
kick:
        result=func_8001E6B8(4);
        {
            u32 combined=(W(0x3A0)+B(0x3B4))>>1;
            s32 penalty=(*(u16 *)(D_8010C32A+B(0x392)*12+B(0x398)*264)&15)-22;
            combined-=penalty;
            func_8004B0F0(actor,heading&255,combined+(turn&255),result);
        }
        scratch[0x2A9]=B(0x38D);
        if (W(0x3A0)>=(u32)(B(0x3B4)-4)) (*(u8 **)(scratch+0x2F4))[0x3B0]=8;
        else (*(u8 **)(scratch+0x2F4))[0x3B0]=4;
        {
            s32 quotient=((s32)B(0x3B4)-4)/(s32)B(0x3B5);
            register u32 accumulated __asm__("v1");
            register u32 limit __asm__("a0");
            __asm__("" : "=r"(quotient) : "0"(quotient) : "memory");
            limit=B(0x3B4)-4;
            accumulated=W(0x3A0)+quotient;
            W(0x3A0)=accumulated;
            {
                u32 tooFast=limit<accumulated;
                if (tooFast) W(0x3A0)=limit;
            }
        }
        if (W(0x3A0)<30) W(0x3A0)=30;
        B(0x397)=2;
        goto contact;
    case 5:
        func_8005BD1C(actor);
        heading=B(0x3AB);
        B(0x3D1)=0;
        H(0x3AE)-=2;
        {
            u32 turned=func_8005B7CC(heading,B(0x3AA),10);
            B(0x3AA)=turned;
            B(0x3AC)=((turned-heading)&255)<129;
        }
        if (B(0x390)==0)
        {
            func_8005BA30(actor,4,6);
            B(0x3A4)=heading;
            B(0x3AA)=heading;
            recoveryOwner=B(0x38D);
            {
                register u32 nextState __asm__("v0");
                if (recoveryOwner==scratch[0x2A9])
                {
                    scratch[0x2A8]=recoveryOwner;
                    __asm__("" : : : "memory");
                    nextState=3;
                    (*(u8 **)(scratch+0x2F4))[0x396]=nextState;
                }
                else nextState=1;
                B(0x397)=nextState;
            }
        }
        {
            u32 speed=W(0x3A0);
            if (speed<9) W(0x3A0)=0;
            else W(0x3A0)=speed-8;
        }
contact:
        func_80045504(actor,4);
        break;
    case 4:
        func_8005BD1C(actor);
        if (B(0x3D0)==0)
        {
            B(0x396)=1;
            B(0x397)=0;
        }
        finalSpeed=48;
storeSpeed:
        W(0x3A0)=finalSpeed;
        break;
    }
    callActor=actor;
doneCall:
    func_8005B908(callActor);
}
