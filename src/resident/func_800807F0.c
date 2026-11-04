#include "common.h"

extern u8 D_800FF748[], D_800CA5C0[];
extern u8 D_800E6D5A, D_800E6D5C;
extern s32 func_800AD678(void);
extern u32 func_800B1128(u32);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_8001E694(u32, s32), func_8001E5A4(u32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);
extern void func_800807B0(u8 *, u32);
extern u8 func_80081210(u8 *);
extern u32 func_80081744(u8 *, u32);

/* Partial guest-memory access views, with wrapping low-word products. */
#define B(p, o) (*(u8 *)((u8 *)(p)+(o)))
#define H(p, o) (*(s16 *)((u8 *)(p)+(o)))
#define U(p, o) (*(u16 *)((u8 *)(p)+(o)))
#define W(p, o) (*(u32 *)((u8 *)(p)+(o)))
#define SQ(v) ((u32)(v)*(u32)(v))
#define DIST(p, q) (SQ((s32)H(p, 2)-H(q, 2))+SQ((s32)H(p, 6)-H(q, 6)))
#define ANGLE(p, q) func_8005B36C(H(p, 2), H(p, 6), H(q, 2), H(q, 6))

void func_800807F0(u8 *actor)
{
    u8 *records = D_800FF748;
    /* These register views carry initialized values into their real consumers. */
    u32 otherOffset = ((u8)(*(u8 *)0x1F8002AD % 24U))*1000U;
    u8 *other = records + otherOffset;
    u8 *third;
    u32 tag, result, heading, root, speedWord;
    u32 phase;
    u32 scaled;
    s32 scale;

    s32 magnitude, dx, dz;
    /* The raw predicted X word later becomes the desired signed speed. */
    s32 pointXOrSpeed;
    u32 pointZ;
    s32 flag;
    u32 firstAngle, secondAngle;
    s32 difference;

    tag = B(actor, 0x38D);
    if (tag == 1 || tag == 12) {
        u32 priorSpeed;
        B(actor, 0x397) = *(u8 *)((u32)D_800CA5C0 + (u32)(func_800AD678()%3));
        priorSpeed = W(actor, 0x3A0);
        if (priorSpeed < 19U) W(actor, 0x3A0) = 0;
        else W(actor, 0x3A0) = priorSpeed-18U;
        return;
    }
    if (D_800E6D5A) {
        if ((u8)func_80081210(actor)) {
            u32 priorSpeed;
            B(actor, 0x3AB) = B(actor, 0x399)<<7;
            priorSpeed = W(actor, 0x3A0);
            if (priorSpeed < 10U) W(actor, 0x3A0)=0;
            else W(actor, 0x3A0)=priorSpeed-9U;
            func_800807B0(actor, 16);
            if (W(actor, 0x3A0)==0 && U(actor, 0x38E)!=1) func_8005BA30(actor, 1, 0);
        } else {
            func_800807B0(actor, 8);
        }
        return;
    }

    if (H(other, 0x3C8)==2 && tag==D_800E6D5C) {
        root = func_800B1128(DIST(actor, other));
        scaled = (root>>1)-360U;
        phase = (u8)ANGLE(actor, other);
        U(actor, 0x3C4) = U(actor, 2)+(u32)func_8001E694(phase, (s32)scaled);
        result = func_8001E5A4(phase, (s32)scaled);
        U(actor, 0x3C8)=2;
        B(actor, 0x3D2)=1;
        B(actor, 0x397)=73;
        U(actor, 0x3C6)=U(actor, 6)+result;
        return;
    }

    flag = H(other, 0x3C8);
    if (flag==0) goto other_state;
    if ((s32)DIST(actor, other)<=0x63FFF) goto special_pair;
other_state:
    if (B(other, 0x397)!=60) goto check_flag3;
    /* Forward the initialized record pointer into the native fresh state read. */
    __asm__("" : "=r"(other) : "0"(other));
    flag=H(other, 0x3C8);
special_pair:
    if (flag!=2) goto decay;
    third=records+((u8)((u32)D_800E6D5C%24U))*1000U;
    if (H(third, 0x3C8)!=flag) goto decay;
    {
        s32 secondScale;
        register s32 pairX __asm__("$17");
        register s32 pairZ __asm__("$16");
        register s32 originX __asm__("$4");
        s32 originZ;
        root=func_800B1128(DIST(other, third));
        scaled=root>>1;
        result=func_8001E694(B(other, 0x3A4), (s32)scaled);
        secondScale=(s32)scaled;
        pairX=U(other, 2);
        pairX=(u32)pairX+result;
        result=func_8001E5A4(B(other, 0x3A4), secondScale);
        pairX=(s16)pairX;
        originX=H(actor, 2);
        pairZ=U(other, 6);
        originZ=H(actor, 6);
        pairZ=(u32)pairZ+result;
        pairZ=(s16)pairZ;
        heading=func_8005B36C(originX, originZ, pairX, pairZ);
        dx=H(actor, 2)-pairX;
        dz=H(actor, 6)-pairZ;
    }
    scale=__builtin_abs((s32)(func_800B1128(SQ(dx)+SQ(dz))-96U));
    result=func_80081744(actor, (u16)scale);
    if ((u8)result) {
        third=records+((u8)((u8)result%24U))*1000U;
        scale=__builtin_abs((s32)(func_800B1128(DIST(actor, third))-88U));
    }
    scale-=256;
    if (scale==0 || scale<33) return;
    phase=(u8)heading;
    U(actor, 0x3C4)=U(actor, 2)+(u32)func_8001E694(phase, scale);
    result=func_8001E5A4(phase, scale);
    B(actor, 0x3AB)=heading;
    U(actor, 0x3C6)=U(actor, 6)+result;
    func_800807B0(actor, 12);
    B(actor, 0x397)=77;
    return;
decay:
    {
        u32 priorSpeed;
        priorSpeed=W(actor, 0x3A0);
        if (priorSpeed<19U) W(actor, 0x3A0)=0;
        else W(actor, 0x3A0)=priorSpeed-18U;
        if (W(actor, 0x3A0)==0) B(actor, 0x397)=*(u8 *)((u32)D_800CA5C0+(u32)(func_800AD678()%3));
        return;
    }

check_flag3:
    if (flag==3) {
        magnitude=H(actor, 6);
        if (magnitude<0) magnitude=-magnitude;
        if (magnitude>=0x1C01 && U(actor, 0x38E)==2) {
            B(actor, 0x397)=80;
            return;
        }
    }

    heading=B(actor, 0x3AA);
    if (H(other, 0x3C8)==0) heading+=B(other, 0x3AA);
    phase=(u8)heading;
    if (B(actor, 0x38D)==D_800E6D5C) {
        heading=(u32)B(other, 0x3A4)-128U;
        phase=(u8)heading;
    }
    {
        u32 nextPhase;
        register u32 angleX __asm__("$16");
        register u32 angleZ __asm__("$7");
        s32 angleArgumentX;
        register s32 originX __asm__("$4");
        s32 originZ;
        result=func_8001E694(phase, 256);
        nextPhase=phase;
        angleX=U(other, 2);
        angleX+=result;
        pointXOrSpeed=(s32)angleX;
        result=func_8001E5A4(nextPhase, 256);
        angleX <<= 16;
        angleArgumentX=(s32)angleX>>16;
        originX=H(actor, 2);
        angleZ=U(other, 6);
        originZ=H(actor, 6);
        angleZ+=result;
        pointZ=angleZ;
        angleZ <<= 16;
        heading=func_8005B36C(originX, originZ, angleArgumentX, (s32)angleZ>>16);
    }

    if (H(other, 0x3C8)==0 && B(actor, 0x38D)!=D_800E6D5C) {
        if ((u8)(ANGLE(actor, other)-B(actor, 0x3A4))>128U) {
            if ((s32)((B(actor, 0x3A4)-ANGLE(actor, other))&255U)>=49) goto after_adjust;
        } else if ((s32)((ANGLE(actor, other)-B(actor, 0x3A4))&255U)>=49) goto after_adjust;
        firstAngle=B(actor, 0x3AA);
        difference=(u8)(heading-firstAngle);
        if (difference>128U) {
            {
                s32 close=(s32)((firstAngle-heading)&255U)<49;
                if (!close) goto after_adjust;
            }
        } else if (difference>=49) goto after_adjust;
        secondAngle=B(other, 0x3AA);
        firstAngle=B(actor, 0x3AA);
        difference=(u8)(secondAngle-firstAngle);
        if (difference>128U) {
            {
                s32 close=(s32)((firstAngle-secondAngle)&255U)<33;
                if (!close) goto project_adjust;
                goto after_adjust;
            }
        } else if (difference<33) goto after_adjust;
    project_adjust:
        {
            register u32 angleX __asm__("$16");
            register u32 angleZ __asm__("$7");
            s32 angleArgumentX;
            register s32 originX __asm__("$4");
            s32 originZ;
            result=func_8001E694(B(other, 0x3AA), 512);
            angleX=U(other, 2);
            angleX+=result;
            pointXOrSpeed=(s32)angleX;
            result=func_8001E5A4(B(other, 0x3AA), 512);
            angleX <<= 16;
            angleArgumentX=(s32)angleX>>16;
            originX=H(actor, 2);
            angleZ=U(other, 6);
            originZ=H(actor, 6);
            angleZ+=result;
            pointZ=angleZ;
            angleZ <<= 16;
            if ((u8)(heading-func_8005B36C(originX, originZ, angleArgumentX, (s32)angleZ>>16))>128U) heading-=32U;
            else heading+=32U;
        }
    }
after_adjust:
    if (H(other, 0x3C8)==1) {
        pointXOrSpeed=50;
        goto steer;
    }
    secondAngle=B(other, 0x3AA);
    firstAngle=B(actor, 0x3AA);
    difference=(u8)(secondAngle-firstAngle);
    if (difference>128U ? (s32)((firstAngle-secondAngle)&255U)<17 : difference<17) heading=B(other, 0x3AA);
    firstAngle=B(actor, 0x3AA);
    difference=(u8)(heading-firstAngle);
    if (difference>128U ? (s32)((firstAngle-heading)&255U)>=64 : difference>=64) {
        secondAngle=B(other, 0x3AA);
        firstAngle=B(actor, 0x3AA);
        difference=(u8)(secondAngle-firstAngle);
        if (difference>128U ? (s32)((firstAngle-secondAngle)&255U)<33 : difference<33) {
            {
                u32 otherSpeed=W(other, 0x3A0);
                pointXOrSpeed=(s32)(otherSpeed-4U);
            }
            goto speed_limits;
        }
    }
    {
        u32 narrowPoint;
        register s32 component __asm__("$2");
        u32 squareX;
        narrowPoint=(u32)pointXOrSpeed<<16;
        component=H(actor, 2);
        component-=((s32)narrowPoint>>16);
        squareX=SQ(component);
        narrowPoint=pointZ<<16;
        component=H(actor, 6);
        component-=((s32)narrowPoint>>16);
        result=squareX+SQ(component);
    }
    if ((s32)result<0x4000) pointXOrSpeed=(s32)W(other, 0x3A0);
    else {
        u32 otherSpeed=W(other, 0x3A0);
        pointXOrSpeed=(s32)(otherSpeed+4U);
    }
speed_limits:
    if (pointXOrSpeed>=51) pointXOrSpeed=50;
    else if (pointXOrSpeed<40) pointXOrSpeed=40;
steer:
    if (B(actor, 0x38D)==D_800E6D5C)
    result=func_8005B7CC((u8)heading, B(actor, 0x3AA), 8);
    else
    result=func_8005B7CC((u8)heading, B(actor, 0x3AA), 4);
    B(actor, 0x3AA)=result;
    {
        /* Preserve the two native direction-byte reads after the helper store. */
        register u32 storedFacing __asm__("$2")=*(volatile u8 *)(actor+0x3AA);
        B(actor, 0x3A4)=storedFacing;
    }
    firstAngle=B(actor, 0x3AA);
    {
        register u32 directionDelta __asm__("$2")=heading-firstAngle;
        difference=(s32)(directionDelta&255U);
    }
    if (difference>128U ? (s32)((firstAngle-heading)&255U)>=48 : difference>=48) {
        if (pointXOrSpeed>=36) pointXOrSpeed=36;
    }
    speedWord=W(actor, 0x3A0)+(u32)(pointXOrSpeed/4);
    W(actor, 0x3A0)=speedWord;
    if ((u32)pointXOrSpeed<speedWord) W(actor, 0x3A0)=pointXOrSpeed;
    return;
}
