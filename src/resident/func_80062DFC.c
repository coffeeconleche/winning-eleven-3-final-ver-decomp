#include "common.h"

/* Partial aligned PS1 record/state views; field meanings remain provisional.
 * The sole known caller passes one actor and ignores return residue.
 * Halfword differences fit s32. Squares and sums wrap through u32; only the
 * native signed-distance test explicitly interprets that sum as s32.
 * The 658D0 helper result keeps its complete signed-word remainder, followed
 * by unsigned guest-address arithmetic. No player-ID bound is inferred.
 *
 * Fixed registers and the remaining empty input captures/control fences are
 * measured compiler allocation/scheduling aids. Every captured value is
 * initialized by actual C arithmetic or a real record load. They emit no CPU
 * logic, create no arguments, and allocate no dummy stack objects.
 * The scalar arithmetic and all divisions below are ordinary C.
 * Future native backends must replace PS1 address/register constraints.
 */

extern u8 D_8010C1ED, D_800E6CB2;
extern u8 scratchArea[] __asm__("0x1F800000");
extern u8 D_8010C1D8[], D_800FF748[], D_800C84F0[], D_8010C328[];
extern s32 func_8001E6B8(s32);
extern s32 func_80052C6C(u8 *);
extern u32 func_8005B36C(s32,s32,s32,s32);
extern u32 func_8005B7CC(u32,u32,u32);
extern s32 func_8005CE14(u32);
typedef struct { u8 unknown[0x398]; u8 byte398; u8 unknown399[0x3B]; u16 half3D4; } Resident5E09CView;
extern u32 func_8005E09C(Resident5E09CView *,u32,u32);
extern s32 func_800652EC(u8 *,u32);
extern s32 func_80065440(u8 *,u32,u32,u32);
extern u32 func_800655BC(u8 *,u32,u32,u32);
extern s32 func_800658D0(u8 *,u32);
extern s32 func_800659E0(u8 *,u8);
extern s32 func_80065CB8(u8 *,u8 *);
extern void func_800666DC(u8 *,u32,u32,u32);
#define H(p,n) (*(s16 *)((p)+(n)))
#define W(p,n) (*(s32 *)((p)+(n)))
#define U(p,n) (*(u32 *)((p)+(n)))
#define S ((u8 *)scratch)
#define BALL (*(u8 **)(S+0x2F4))
#define ANGLEDIFF(a,b) ((u8)((a)-(b))>128 ? (u8)((b)-(a)) : (u8)((a)-(b)))

#define DISTANCE_TO(out,a,b) do { \
    s32 delta; \
    register s32 coordinate __asm__("$3"); \
    register u32 xSquare __asm__("$4"); \
    register u32 zSquare __asm__("$3"); \
    delta=H(a,2); coordinate=H(b,2); \
    delta-=coordinate; \
    xSquare=(u32)delta*(u32)delta; \
    delta=H(a,6); coordinate=H(b,6); \
    delta-=coordinate; \
    zSquare=(u32)delta*(u32)delta; \
    (out)=xSquare+zSquare; \
} while (0)

void func_80062DFC(u8 *input)
{
    u32 selector=D_8010C1ED;
    u8 *actor =input;
    u8 *state =D_8010C1D8;
    u8 *base=D_800FF748;
    u32 scratch=(u32)scratchArea;
    u8 *other;
    register u8 *cursor __asm__("$19");
    u32 distance;
    u32 candidateDistance;
    u32 lowProduct;
    s32 angle;
    register s32 candidateAngle __asm__("$5");
    s32 direction;
    s32 signZ;
    s16 sign;
    register s32 i __asm__("$21");
    s32 result;

    switch (selector) {
    case 0: {
        s32 sentinel;
        s32 preference;
        s32 j;
        register s32 inverted __asm__("$17");
        i=0;
        sentinel=255;
        do {
            result=func_800655BC(actor,actor[0x399]<<7,(i^1)&255,32);
            if ((result&255)!=sentinel) goto found;
            { s32 value =H(actor,6)<1;
              __asm__("" : : "r"(value)); preference=value; }
            if (ANGLEDIFF(0x40,actor[0x3AA])<32) preference=1;
            if (ANGLEDIFF(0xC0,actor[0x3AA])<32) preference=0;
            j=0;
            inverted=i^1;
            do {
                { register u8 *callActor __asm__("$4")=actor;
                  s32 heading;
                  if ((j&255)==preference) {  heading=0xC0; }
                  else { __asm__ volatile(""); heading=0x40; }
                  result=func_800655BC(callActor,heading,inverted&255,32);
                }
                j++;
                if ((result&255)!=sentinel) goto found;
            } while ((u32)(j&255)<2);
            result=func_800655BC(actor,(actor[0x399]^1)<<7,(i^1)&255,32);
            i++;
            if ((result&255)!=sentinel) goto found;
        } while ((u32)(i&255)<2);
        if ((result&255)==255) {
            state[0x14]=1;
            state[0x15]=0;
            state[0x2D]=5;
        }
        break;
    }
    case 1: {
        u8 *movementActor;
        if (!func_800659E0(actor,state[2])) goto clear;
        switch (W(D_8010C328,actor[0x398]*264+actor[0x392]*12)&15) {
        case 7: if (func_8001E6B8(2)) break;
        case 8: if (func_8001E6B8(2)) break;
        case 9:
            if (ANGLEDIFF(actor[0x399]<<7,actor[0x3AA])<48 &&
                ((actor[0x399]==0 && H(BALL,2)>0) || (actor[0x399]==1 && H(BALL,2)<0))) {
                s32 n =func_800658D0(actor,1);
                s32 actorX =H(actor,2);
                s32 otherX;
                s32 negativeOther;
                u32 offset;
                n%=24;
                offset=(u32)n*1000U;

                other=(u8 *)((u32)base+offset);
                otherX=H(other,2);
                { u32 side =actor[0x399];

                  if (side) {
                    negativeOther=-otherX;
                    actorX=-actorX;
                    if (negativeOther<actorX) { __asm__ volatile(""); state[0x14]=0; goto clear; }
                  } else {
                    s32 comparison =otherX<actorX;

                    if (!comparison) goto keepSelection;
                    state[0x14]=0;
                clear:
                    state[0x15]=0;
                    return;
                  }
                }
            }
        }
    keepSelection:
        { u32 offset =((state[2]%24)&255)*1000;
           other=base+offset; }
        if (actor[0x396]!=3) {
            if (func_80065CB8(actor,other)) goto pass;
            sign=-1;
            if (actor[0x399]==0) sign=1;
            DISTANCE_TO(distance,actor,other);
            switch (D_800E6CB2) {
            case 0: distance>>=1; break;
            case 1: { u32 scaled =distance*2;  distance=scaled/3; } break;
            case 2: distance*=2; break;
            }
            if (distance<=0x3FFFFF && ({
                register s32 coordinate __asm__("$3")=H(actor,2);
                register s32 firstProduct __asm__("$4");
                register s32 secondProduct __asm__("$3");
                register s32 comparison __asm__("$2");

                firstProduct=sign*coordinate;
                coordinate=H(other,2);

                secondProduct=sign*coordinate;

                comparison=firstProduct<secondProduct;

                comparison;
            }) &&
                func_80065440(other,other[0x399]<<7,48,distance*2) &&
                func_80065440(actor,func_8005B7CC((actor[0x399]<<7)&128,
                    func_8005B36C(H(actor,2),H(actor,6),H(other,2),H(other,6))&255,24)&255,48,distance)) {
            pass:
                func_800666DC(actor,state[2],1,*(u16 *)(S+actor[0x398]*2+0x1E));
                break;
            }
        }
        angle=func_8005B36C(H(actor,2),H(actor,6),H(other,2),H(other,6));
        if (actor[0x396]!=2) {
            if (ANGLEDIFF(angle,actor[0x3AA])<96) goto reconsider;
            if (actor[0x399]==0 && H(BALL,2)>=0xBC1) goto testFarDirection;
            if (actor[0x399]==1) {
                movementActor=actor;
                direction=angle&255;
                if (H(BALL,2)>=-0xBC0) goto movePrepared;
            } else goto movement;
        testFarDirection:
            if (ANGLEDIFF(angle,actor[0x3AA])>=0x71 && !({
                s32 delta;
                register s32 coordinate __asm__("$3");
                u32 xSquare;
                register u32 zSquare __asm__("$3");
                s32 limit;
                register s32 sum __asm__("$3");
                s32 outside;
                delta=H(actor,2); coordinate=H(other,2);

                delta-=coordinate;
                xSquare=(u32)delta*(u32)delta;
                delta=H(actor,6); coordinate=H(other,6);
                __asm__("" :  : "r"(xSquare));
                delta-=coordinate;
                zSquare=(u32)delta*(u32)delta;
                limit=0x18FFFF;

                sum=(s32)(xSquare+zSquare);
                outside=limit<sum;

                outside;
            })) goto reconsider;
        }
    movement:
        movementActor=actor;

        direction=angle&255;
    movePrepared:
        if (func_80065440(movementActor,direction,80,0x240000)) { func_8005E09C((Resident5E09CView *)actor,direction,0); return; }
        direction=(angle-64)&255;
        if (func_80065440(actor,direction,48,0x240000)) { func_8005E09C((Resident5E09CView *)actor,direction,0); return; }
        { s32 value =angle+64;
          u8 *callActor =actor;
           direction=value&255;
          if (func_80065440(callActor,direction,48,0x240000)) { func_8005E09C((Resident5E09CView *)actor,direction,0); return; }
        }
        { s32 kind =actor[0x396];
          s32 comparison =kind<4;

          if (!comparison) goto reconsider;
          comparison=kind<2;
          if (!comparison) return;
        }
        {
        reconsider:
            state[0x15]=16;
        }
        break;
    }
    case 16:
        { register u32 offset __asm__("$2")=((state[2]%24)&255)*1000;
           other=base+offset; }
        { register s32 delta __asm__("$2");
          s32 second;
          u32 xSquare;
          delta=H(actor,2); second=H(other,2);

          delta-=second;
          xSquare=(u32)delta*(u32)delta;
          delta=H(actor,6);

          second=H(other,6);

          delta-=second;
          lowProduct=(u32)delta*(u32)delta;

          distance=xSquare+lowProduct;
        }
        if (((actor[0x399]==0 && H(BALL,2)>=0xBC1) || (actor[0x399]==1 && H(BALL,2)<-0xBC0)) && D_800E6CB2) {
            /* The complete quotient domain is 0..25. All corresponding retail
             * table bytes are 0, 10 or 20, so every live path initializes bound. */
            switch (D_800C84F0[({
                register u32 address __asm__("$2")=actor[0x398];
                address=scratch+address;

                *(u8 *)(address+0x2DD)/10; })]) {
            case 0: i=8; break;
            case 20: i=12; break;
            case 10: i=16; break;
            }
            result=func_8001E6B8(i&255);
            { s32 random =result;
              s32 comparison =random<6;

              if (!comparison) goto candidates;
              comparison=random<4;

              if (comparison) goto candidates;
            }
            { u32 shifted =0xFFF6FFFFU;
              u32 maximum =0x6FFFFE;
              s32 outside;

              shifted=distance+shifted;
              outside=maximum<shifted;

              if (outside) goto candidates;
            }
            {
                func_800666DC(actor,state[2],2,*(u16 *)(S+actor[0x398]*2+0x16));
                break;
            }
        }
    candidates:
        i=0;
        angle=func_8005B36C(H(actor,2),H(actor,6),H(other,2),H(other,6));
        { u32 offset =(func_8005CE14(actor[0x38D])&255)*1000+1000;
           other=base+offset; }
        cursor=other+0x38D;
        do {
            if (*other && actor!=other) {
                s32 ax =H(actor,2);
                s32 bx =H(cursor,-0x38B);
                s32 az;
                s32 bz;
                s32 delta;
                u32 xSquare;

                delta=ax-bx;
                xSquare=(u32)delta*(u32)delta;
                az=H(actor,6); bz=H(cursor,-0x387);

                delta=az-bz;
                lowProduct=(u32)delta*(u32)delta;

                candidateDistance=xSquare+lowProduct;
                if (candidateDistance>0x8FFFF && candidateDistance<distance) {
                    candidateAngle=func_8005B36C(ax,az,bx,bz);
                    if (ANGLEDIFF(angle,candidateAngle)<32) {
                        distance=candidateDistance;
                        angle=candidateAngle;
                        state[2]=*cursor;
                    }
                }
            }
            i++;
            cursor+=1000;
            other+=1000;
        } while ((u32)(i&255)<10);
        func_800666DC(actor,state[2],0,*(u16 *)(S+actor[0x398]*2+0x16));
        break;
    case 32: {
        register u8 *scan __asm__("$16");
        s32 signWord;
        sign=-1;
        if (actor[0x399]==0) sign=1;
        i=0;
        { u32 offset =(func_8005CE14(actor[0x38D])&255)*1000+1000;
           other=base+offset; }
        { u32 bits =(u32)(u16)sign<<16;
           signWord=(s32)bits>>16; }
        scan=other+0x38D;

        do {
            signZ=1;
            if (H(actor,6)<0) signZ=-1;
            if (signZ!=(H(scan,-0x387)<0 ? -1 : 1)) {
              s32 coordinate =H(scan,-0x38B);
              s32 otherProduct =signWord*coordinate;
              s32 limit;
              s32 comparison;
              coordinate=H(actor,2);

              lowProduct=(u32)(signWord*coordinate);
              limit=otherProduct+1024;

              comparison=(s32)lowProduct<limit;

              if (comparison &&
                !(func_80052C6C(other)&255) && !func_800652EC(other,0x600)) {
                u32 id =*scan;
                state[0x15]=33;
                state[2]=id;
              }
            }
            i++;
            scan+=1000;
            other+=1000;
        } while ((u32)(i&255)<10);
        if (state[0x15]==32) goto clear;
        W(state,0x28)=0;
        break;
    }
    case 33: {
        register s32 opponentHeading __asm__("$5");
        register s32 left __asm__("$7");
        register s32 right __asm__("$4");
        s32 rightCopy;
        register s32 plusDistance __asm__("$6");
        u32 difference;
        s32 value;

        { u32 offset =((state[2]%24)&255)*1000;
           other=base+offset; }
        U(state,0x28)++;
        angle=func_8005B36C(H(actor,2),H(actor,6),H(other,2),H(other,6));
        if (ANGLEDIFF(angle,actor[0x3AA])<48) {
            func_800666DC(actor,state[2],255,*(u16 *)(S+actor[0x398]*2+0x1A));
            break;
        }
        { register u32 address __asm__("$2")=(actor[0x399]^1)*2;
          u32 offset;
          address=scratch+address;

          offset=((*(u8 *)(address+0x31E)%24)&255)*1000;
           other=base+offset; }
        opponentHeading=func_8005B36C(H(actor,2),H(actor,6),H(other,2),H(other,6));
        left=angle-32;
        right=angle+32;
        value=right-opponentHeading;
         difference=(u8)value;
        rightCopy=right;
        if (difference>128U) {
            value=opponentHeading-right;
             plusDistance=(u8)value;
        } else plusDistance=difference;
        value=left-opponentHeading;
         difference=(u8)value;
        if (difference>128U) {
            value=opponentHeading-left;
             value=(u8)value;
            value=plusDistance<value;

            angle=left;
            if (value) goto finalAngle;

            angle=rightCopy;
            goto finalAngle;
        }
        value=plusDistance<(s32)difference;

        angle=left;
        if (!value) goto chooseRight;

        goto finalAngle;
    found:
        state[0x15]=1;
        state[2]=result;
        return;
    chooseRight:
        angle=rightCopy;
    finalAngle:
        if (W(state,0x28)>=31) angle=func_8005B7CC(angle&255,opponentHeading&255,32);
        direction=angle&255;
        func_8005E09C((Resident5E09CView *)actor,direction,0);
        break;
    }
    }
}
