#include "common.h"
/* PS1 interface: actor in A0 and proved ambient entryS2 on the case4/zero28C path.
 * The host/reference interface supplies context_s2 explicitly. The only empty
 * output without an input is the authorized architectural input read in case4.
 * Record/scratch views are partial; byte selectors and word3A0 are unrestricted.
 * Squares/sums and counter operations preserve unsigned low32 wrapping before
 * native signed comparisons or halfword stores. See the native/API proof files. */
#if defined(_PSYQ) && defined(__mips__) && (__GNUC__ == 2)
#define WE3_PS1_CONTEXT 1
#else
#define WE3_PS1_CONTEXT 0
#endif
/* Matching aids consume initialized actual values. The sole incoming-register
 * accessor is separately guarded and documented at case4. Host evaluation drops
 * compiler scheduling aids and supplies entry S2 explicitly. Guest addresses,
 * little-endian packed views and helper calls still require a PS1 guest adapter. */
#if WE3_PS1_CONTEXT
#define WE3_BIND(r) __asm__(r)
#define WE3_AID(statement) statement
#else
#define WE3_BIND(r)
#define WE3_AID(statement) ((void)0)
#endif
#define M(t,p,o) (*(t *)((p)+(o)))
#define SQ(n) ((u32)(n)*(u32)(n))
void func_8005BA78(u8 *,u32,u32),func_8005BA30(u8 *,u32,u32),func_8005B908(u8 *);
u32 func_8005BD1C(u8 *),func_8005B36C(s32,s32,s32,s32),func_8005B7CC(u32,u32,u32);
u32 func_800484B8(u32,u32,u32),func_800484F8(s32,s32,u32,u32);
u32 func_80052EBC(u8 *),func_80053EB8(u8 *),func_80045504(u8 *,u32),func_8004A114(u8 *);
s32 func_8001E694(u32,s32),func_8001E5A4(u32,s32),func_8001E6B8(s32);
u32 func_80049828(u8 *,u32);
void func_8004B0F0(u8 *,u32,u32,u32),func_80054A1C(u8 *),func_800479B8(u8 *,u32);
void func_80048D94(u8 *,u32,u32,u32),func_80048FC4(u8 *,u32,u32,u32),func_80048AD8(u8 *,u32,u32,u32);
extern u8 D_800C6B74[],D_8010C328[],D_8010C32A[],D_8010C330[];

#if WE3_PS1_CONTEXT
void func_800243D8(u8 *input) {
#else
void func_800243D8(u8 *input,u32 context_s2) {
#endif
    register u8 *arg0 WE3_BIND("s1")=input;
    register u8 *scratch WE3_BIND("s4");
    register s32 temp_s0 WE3_BIND("s0");
    register s32 temp_a0_4 WE3_BIND("a0");
    s32 temp_v0_13;
    s32 temp_v0_8;
    s32 temp_v1_15;
    s32 temp_v1_16;
    register s32 temp_v1_18 WE3_BIND("v1");
    s32 temp_v1_3;
    s32 temp_v1_9;
    register s32 var_a1_2 WE3_BIND("a1");
    register s32 var_v0_5 WE3_BIND("v0");
    register s32 var_v0_6 WE3_BIND("v0");
    register u32 temp_s0_2 WE3_BIND("s0");
    register u32 temp_s0_3 WE3_BIND("s0");
    register u32 temp_s0_4 WE3_BIND("s0");
    register u32 temp_s2 WE3_BIND("s2");
    register u32 temp_s2_2 WE3_BIND("s2");
    register u32 temp_s3 WE3_BIND("s3");
    register u32 temp_v0_15 WE3_BIND("s3");
    u32 temp_v0_16;
    u32 temp_v0_17;
    u32 temp_v0_2;
    register u32 temp_v0_4 WE3_BIND("s3");
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v1_10;
    u32 temp_v1_14;
    register u32 temp_v1_17 WE3_BIND("v1");
    u32 temp_v1_20;
    u32 temp_v1_7;
    u32 temp_v1_8;
    register u32 var_a0 WE3_BIND("a0");
    u32 var_a1_3;
    register u32 var_s2_3 WE3_BIND("s2");
    u32 var_v0_2;
    register u32 var_v0_4 WE3_BIND("v0");
    u32 var_v0_7;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    register u32 temp_a1 WE3_BIND("a1");
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_7;
    u32 temp_v1;
    register u32 temp_v1_19 WE3_BIND("v1");
    u32 temp_v1_2;
    register u32 var_a0_2 WE3_BIND("a0");
#if WE3_PS1_CONTEXT
    register u32 var_s2 WE3_BIND("s2");
#else
    u32 var_s2;
#endif
    register u32 var_s2_2 WE3_BIND("s2");
    register u32 var_s2_4 WE3_BIND("s2");
    register u32 var_s2_5 WE3_BIND("s2");
    u8 *temp_v0_14;
    u8 *temp_v0_3;
    u8 *temp_v0_9;
    u8 *temp_v1_11;
    register u8 *finalActor WE3_BIND("a0");
    register u8 *movementActor WE3_BIND("a0");

    temp_v1 = M(u8,arg0,0x397);
    M(u16,arg0,0x3AE) = (u16) (M(u16,arg0,0x3AE) - 1);
    scratch=(u8 *)0x1F800000;
    switch (temp_v1) {
    case 0:
        {
            u32 currentOwner;
            register u8 *callActor WE3_BIND("a0")=arg0;
            M(s16,arg0,0x4) = 0;
            currentOwner=M(u8,scratch,0x2A9);
            WE3_AID(__asm__("" : : : "memory"));
            temp_v1_2 = M(u8,arg0,0x38D);
            if (temp_v1_2==currentOwner || temp_v1_2==M(u8,scratch,0x240)) goto highAnimation;
            if (temp_v1_2!=M(u8,scratch,0x241)) goto lowAnimation;
            WE3_AID(__asm__("" : "=r"(arg0) : "0"(arg0)));
            callActor=arg0;
        highAnimation:
            func_8005BA78(callActor,38,M(u8,arg0,0x390));
            goto animationChosen;
        lowAnimation:
            func_8005BA78(callActor,2,M(u8,arg0,0x390));
        animationChosen:
            if ((u32) M(u32,arg0,0x3A0) < 0xCU) {
                M(u32,arg0,0x3A0) = 0xCU;
            }
            M(u8,arg0,0x397) = (u8) (M(u8,arg0,0x397) + 1);
        }
        /* fallthrough */
    case 1:
        M(u8,arg0,0x3D1) = 1;
        temp_v0 = M(u8,arg0,0x390) + 1U;
        M(u8,arg0,0x390) = temp_v0;
        if (M(u32,M(u8 *,arg0,0x18),(temp_v0&255)*4) == 0xB) {
            M(u8,arg0,0x390) = 0U;
        }
        {
            register u8 *sequence WE3_BIND("v1");
            register u32 cursorWord WE3_BIND("v0");
            cursorWord=M(u8,arg0,0x390);
            sequence=M(u8 *,arg0,0x18);
            cursorWord*=4;
            sequence+=cursorWord;
            WE3_AID(__asm__("" : "=r"(sequence) : "0"(sequence)));
            M(u32,arg0,0x1C)=M(u32,sequence,0);
        }
        if ((M(u8,arg0,0x38D) != M(u8,scratch,0x2A8)) && (((M(u8,scratch,0x29A) & 0xFF) != 1) || (M(u8,scratch,0x2FC) != 0))) {
            M(u8,arg0,0x397) = 5U;
            goto block_112;
        }
        {
            u32 dispatchOwner=M(u8,scratch,0x2A9);
            WE3_AID(__asm__("" : : : "memory"));
            temp_a0=M(u8,arg0,0x38D);
            if (temp_a0 == dispatchOwner) goto block_21;
        }
        {
            if (M(u8,arg0,0x39A) != 2) {
                if ((temp_a0 == M(u8,scratch,0x240)) || (temp_a0 == M(u8,scratch,0x241))) {
                    goto block_21;
                }
                goto block_31;
            }
            goto block_31;
        }
    block_21:
        if (M(u8,arg0,0x39A) == 0) {
            temp_v1_3=M(u32,scratch,0x2B0);
            if (temp_v1_3==1) {
                register u32 rowWord WE3_BIND("v0");
                register u32 tableIndex WE3_BIND("v1");
                register u32 counterBits WE3_BIND("a0");
                temp_a1=M(u8,arg0,0x398);
                WE3_AID(__asm__("" : "=r"(temp_a1) : "0"(temp_a1)));
                rowWord=(u32)scratch+temp_a1;
                rowWord=M(u8,(u8 *)rowWord,0x2CF);
                if (rowWord==(u32)temp_v1_3) {
                    WE3_AID(__asm__(""));
                    counterBits=M(u16,scratch,0x31C);
                    rowWord=M(u8,arg0,0x392);
                    counterBits<<=16;
                    tableIndex=rowWord*12U;
                    WE3_AID(__asm__("" : "=r"(temp_a1) : "0"(temp_a1),"r"(tableIndex),"r"(counterBits)));
                    rowWord=temp_a1*264U;
                    tableIndex+=rowWord;
                    counterBits=(u32)((s32)counterBits>>16);
                    tableIndex=M(u32,D_8010C328,tableIndex);
                    rowWord=10;
                    tableIndex>>=28;
                    rowWord-=tableIndex;
                    counterBits=(s32)counterBits<(s32)rowWord;
                    WE3_AID(__asm__("" : : "r"(counterBits)));
                    if (counterBits) {
                        var_s2_2=M(u8,arg0,0x3AA);
                        goto block_32;
                    }
                }
            }
        }
        func_800484B8((u32) M(s16,arg0,0x2), (u32) M(s16,arg0,0x6), 0x30U);
        var_s2_2 = func_8005B36C((s32) M(s16,arg0,0x2), (s32) M(s16,arg0,0x6), (s32) (s16) M(u16,scratch,0x0F8), (s32) (s16) M(u16,scratch,0x0FC));
        if (!(func_80052EBC(arg0) & 0xFF)) {
            var_s2_2 = D_800C6B74[M(u8,scratch,0x28C) & 0xFF];
        }
        M(u8,arg0,0x3AB) = var_s2_2;
        if (func_80045504(arg0, 1U) & 0xFF) {
            goto block_112;
        }
        goto block_32;
    block_31:
        M(u8,arg0,0x396) = 7;
        M(u8,arg0,0x397) = 1;
        func_8005B908(arg0);
        return;
    block_32:
        if (M(u8,arg0,0x38D) == M(u8,scratch,0x2A8)) {
            register u32 ownerXSquare WE3_BIND("a2");
            register u32 ownerZSquare WE3_BIND("v1");
            register u8 *launchActor WE3_BIND("a0");
            register u32 ownerNear WE3_BIND("v0");
            M(u8,arg0,0x3A7) = 0;
            M(u8,arg0,0x3A4) = (u8) M(u8,arg0,0x3AA);
            {
                u32 displacement;
                register s32 projectedXArg WE3_BIND("a2");
                register u32 projectedZWord WE3_BIND("a3");
                register u8 *beforeBall WE3_BIND("v1");
                register u8 *ball WE3_BIND("a1");
                register s32 ownerDelta WE3_BIND("v1");
                displacement=(u32)func_8001E694(M(u8,arg0,0x3AA),0x180);
                temp_s0=(s16)((u32)M(u16,arg0,2)+displacement);
                displacement=(u32)func_8001E5A4(M(u8,arg0,0x3AA),0x180);
                projectedXArg=temp_s0;
                projectedZWord=M(u16,arg0,6);
                beforeBall=M(u8 *,scratch,0x2F4);
                projectedZWord+=displacement;
                projectedZWord<<=16;
                WE3_AID(__asm__("" : "=r"(beforeBall) : "0"(beforeBall),"r"(projectedXArg),"r"(projectedZWord)));
                temp_s2=func_8005B36C(M(s16,beforeBall,2),M(s16,beforeBall,6),projectedXArg,(s32)projectedZWord>>16);
                ball=M(u8 *,scratch,0x2F4);
                ownerDelta=M(s16,arg0,2);
                WE3_AID(__asm__("" : "=r"(ownerDelta) : "0"(ownerDelta)));
                ownerDelta-=M(s16,ball,2);
                ownerXSquare=SQ(ownerDelta);
                WE3_AID(__asm__("" : : "r"(ownerXSquare)));
                ownerDelta=M(s16,arg0,6);
                WE3_AID(__asm__("" : "=r"(ownerDelta) : "0"(ownerDelta)));
                ownerDelta-=M(s16,ball,6);
                ownerZSquare=SQ(ownerDelta);
                WE3_AID(__asm__("" : : "r"(ownerZSquare)));
            }
            ownerNear=(s32)(ownerXSquare+ownerZSquare) < 0x1900;
            WE3_AID(__asm__("" : : "r"(ownerNear)));
            WE3_AID(__asm__("" : "=r"(arg0) : "0"(arg0),"r"(ownerNear)));
            launchActor=arg0;
            if (ownerNear) {
                register u32 scoreIndex WE3_BIND("v1");
                register u32 scoreField WE3_BIND("a2");
                register u32 speedByte WE3_BIND("v1");
                register u32 speedTriple WE3_BIND("v0");
                speedByte=M(u8,arg0,0x3B3);
                var_a1_2=M(u32,arg0,0x3A0);
                WE3_AID(__asm__("" : "=r"(var_a1_2) : "0"(var_a1_2),"r"(speedByte)));
                scoreField=M(u8,arg0,0x392);
                speedTriple=speedByte*3U;
                var_a1_2=(u32)var_a1_2+speedTriple;
                scoreIndex=scoreField*3U;
                WE3_AID(__asm__("" : "=r"(scoreIndex) : "0"(scoreIndex),"r"(var_a1_2)));
                scoreField=M(u8,arg0,0x398);
                scoreIndex<<=2;
                scoreIndex+=scoreField*264U;
                var_a1_2=((u32)var_a1_2>>2)-(M(u16,D_8010C32A,scoreIndex)&15U)+22U;
            } else {
                register u32 scoreIndex WE3_BIND("v1");
                register u32 scoreField WE3_BIND("a2");
                register u32 speedByte WE3_BIND("v1");
                register u32 speedTriple WE3_BIND("v0");
                speedByte=M(u8,arg0,0x3B3);
                var_a1_2=M(u32,arg0,0x3A0);
                WE3_AID(__asm__("" : "=r"(var_a1_2) : "0"(var_a1_2),"r"(speedByte)));
                scoreField=M(u8,arg0,0x392);
                speedTriple=speedByte*3U;
                var_a1_2=(u32)var_a1_2+speedTriple;
                scoreIndex=scoreField*3U;
                WE3_AID(__asm__("" : "=r"(scoreIndex) : "0"(scoreIndex),"r"(var_a1_2)));
                scoreField=M(u8,arg0,0x398);
                scoreIndex<<=2;
                scoreIndex+=scoreField*264U;
                var_a1_2=((u32)var_a1_2>>2)-(M(u16,D_8010C32A,scoreIndex)&15U)+16U;
            }
            {
                register u32 amountResult WE3_BIND("v0");
                register s32 randomDivisor WE3_BIND("a0");
                s32 randomResult;
                amountResult=func_80049828(launchActor,var_a1_2&0xFFFF);
                randomDivisor=3;
                WE3_AID(__asm__("" : : "r"(randomDivisor),"r"(amountResult)));
                temp_s0_2=amountResult&0xFF;
                randomResult=func_8001E6B8(randomDivisor);
                func_8004B0F0(arg0,temp_s2&0xFF,temp_s0_2,randomResult);
            }
            {
                register u32 ballState WE3_BIND("v0");
                register u8 *stateBall WE3_BIND("v1");
                register u32 stateSpeed WE3_BIND("v0");
                register u32 stateLimit WE3_BIND("v1");
                stateLimit=M(u8,arg0,0x3B3);
                stateSpeed=M(u32,arg0,0x3A0);
                if (stateSpeed<stateLimit) goto slowBall;
                stateBall=M(u8 * volatile,scratch,0x2F4);
                ballState=10;
                goto storeBallState;
            slowBall:
                ballState=6;
                stateBall=M(u8 * volatile,scratch,0x2F4);
            storeBallState:
                M(u8,stateBall,0x3B0)=ballState;
            }
            M(u8,arg0,0x3D0) = 0U;
            M(u8,scratch,0x2A9) = M(u8,arg0,0x38D);
            {
                register u32 speedDividend WE3_BIND("v1");
                speedDividend=M(volatile u8,arg0,0x3B3);
                temp_a0_2=M(u8,arg0,0x3B3);
                temp_v0_2=M(u32,arg0,0x3A0)+((speedDividend/6U)&0xFF);
            }
            M(u32,arg0,0x3A0) = temp_v0_2;
            if (temp_a0_2 < temp_v0_2) {
                M(u32,arg0,0x3A0) = (u32) temp_a0_2;
            }
            M(u8,arg0,0x396) = 1;
            M(u8,arg0,0x397) = 2U;
            goto block_63;
        }
        M(u8,arg0,0x3A7) = 1;
        if (((u32) M(u32,arg0,0x3A0) >= 0x20U) || (M(u16,arg0,0x38E) == 0xE)) {
            temp_a0_3 = M(u8,arg0,0x3A4);
            temp_v1_7 = (temp_a0_3 - var_s2_2) & 0xFF;
            if (temp_v1_7 >= 0x81U) {
                if ((s32)((var_s2_2 - temp_a0_3) & 0xFF) < 0x41) {
                    goto block_55;
                }
                goto block_48;
            }
            if ((s32) temp_v1_7 >= 0x41) {
            block_48:
                temp_v0_3 = M(u8 *,scratch,0x2F4);
                temp_v0_4 = func_8005B36C((s32) M(s16,arg0,0x2), (s32) M(s16,arg0,0x6), (s32) M(s16,temp_v0_3,0x2), (s32) M(s16,temp_v0_3,0x6));
                var_a0 = temp_v0_4 & 0xFF;
                if (M(u16,arg0,0x38E) != 0xE) {
                    func_80054A1C(arg0);
                    M(u8,arg0,0x3AC) = (u8) ((u32) ((temp_v0_4 - var_s2_2) & 0xFF) < 0x81U);
                    func_8005BA30(arg0, 0xEU, 2U);
                    WE3_AID(__asm__("" : "=r"(temp_v0_4) : "0"(temp_v0_4)));
                    var_a0 = temp_v0_4 & 0xFF;
                }
                {
                    u32 newFacing=func_8005B7CC(var_a0,M(u8,arg0,0x3AA),12);
                    temp_v1_8=M(u32,arg0,0x3A0);
                    M(u8,arg0,0x3AA)=newFacing;
                }
                if (temp_v1_8 < 9U) {
                    M(u32,arg0,0x3A0) = 0U;
                } else {
                    M(u32,arg0,0x3A0) = (u32) (temp_v1_8 - 8);
                }
                if (M(u32,arg0,0x3A0) == 0) {
                    func_8005BA78(arg0, 2U, (u32) M(u8,arg0,0x390));
                    M(u8,arg0,0x3A4) = var_s2_2;
                    goto block_55;
                }
                goto block_112;
            }
            goto block_55;
        }
    block_55:
        if ((M(u8,arg0,0x3D0) != 0) || !(func_8004A114(arg0) & 0xFF)) {
            func_8005BA78(arg0, 0x26U, (u32) M(u8,arg0,0x390));
            temp_s0_3 = var_s2_2 & 0xFF;
            M(u8,arg0,0x3AA) = func_8005B7CC(temp_s0_3, (u32) M(u8,arg0,0x3AA), 0xCU);
            M(u8,arg0,0x3A4) = func_8005B7CC(temp_s0_3, (u32) M(u8,arg0,0x3A4), 0x18U);
            if (M(u8,arg0,0x3AA) == temp_s0_3) {
                temp_v0_5 = M(u32,arg0,0x3A0) + 0xC;
                M(u32,arg0,0x3A0) = temp_v0_5;
                if (temp_v0_5 >= 0x31U) {
                    var_v0_2 = 0x30;
                    goto block_62;
                }
            } else {
                temp_v0_6 = M(u32,arg0,0x3A0) + 8;
                M(u32,arg0,0x3A0) = temp_v0_6;
                if (temp_v0_6 >= 0x23U) {
                    var_v0_2 = 0x22;
                block_62:
                    M(u32,arg0,0x3A0) = var_v0_2;
                }
            }
        }
    block_63:
        M(s32,arg0,0x8) = func_8001E694((u32) M(u8,arg0,0x3A4), (s32) M(u32,arg0,0x3A0));
        M(s32,arg0,0x10) = func_8001E5A4((u32) M(u8,arg0,0x3A4), (s32) M(u32,arg0,0x3A0));
        temp_v1_9 = 0x1C0 - M(u8,arg0,0x3AA);
        M(u16,arg0,0x26) = (u16)((temp_v1_9%256)*16);
        M(s16,arg0,0x2) = (s16) ((u32)M(u16,arg0,0x2)+(u32)M(s32,arg0,0x8));
        M(s16,arg0,0x6) = (s16) ((u32)M(u16,arg0,0x6)+(u32)M(s32,arg0,0x10));
        return;
    case 2:
        func_8005BA78(arg0, 0x34U, (u32) M(u8,arg0,0x390));
        func_8005BD1C(arg0);
        M(u8,arg0,0x3D1) = 2;
        if (M(u8,arg0,0x3D0) == 0) {
            M(u8,arg0,0x3A7) = 1;
            var_s2_3 = func_8005B36C((s32) M(s16,arg0,0x2), (s32) M(s16,arg0,0x6), (s32) (s16) M(u16,scratch,0x04A), (s32) (s16) M(u16,scratch,0x07A));
            M(u8,arg0,0x3AB) = (u8) var_s2_3;
        } else {
            var_s2_3 = (u32) M(u8,arg0,0x3AB);
        }
        temp_v0_7 = func_8005B7CC(var_s2_3 & 0xFF, (u32) M(u8,arg0,0x3AA), 0xCU);
        M(u8,arg0,0x3AA) = temp_v0_7;
        M(u8,arg0,0x3A4) = temp_v0_7;
        if (M(u8,arg0,0x39B) != 0) {
            register u32 speedBonus WE3_BIND("v1");
            var_v0_4=M(volatile u32,arg0,0x3A0);
            speedBonus=M(volatile u8,arg0,0x3B3);
            var_a0_2=M(volatile u8,arg0,0x3B3);
            var_v0_4+=4U;
            WE3_AID(__asm__("" : "=r"(var_v0_4) : "0"(var_v0_4)));
            WE3_AID(__asm__("" : "=r"(speedBonus) : "0"(speedBonus)));
            var_v0_4=(u32)var_v0_4+speedBonus;
            var_a0_2-=3U;
        } else {
            register u32 speedDividend WE3_BIND("v1");
            speedDividend=M(volatile u8,arg0,0x3B3);
            var_a0_2=M(u8,arg0,0x3B3);
            var_v0_4=M(u32,arg0,0x3A0);
            speedDividend=(speedDividend/6U)&255U;
            WE3_AID(__asm__("" : "=r"(speedDividend) : "0"(speedDividend),"r"(var_v0_4)));
            var_v0_4+=speedDividend;
        }
        M(u32,arg0,0x3A0) = var_v0_4;
        WE3_AID(__asm__("" : "=r"(var_v0_4) : "0"(var_v0_4) : "memory"));
        if (var_a0_2 < var_v0_4) {
            M(u32,arg0,0x3A0) = (u32) var_a0_2;
        }
        func_8005B908(arg0);
        finalActor=arg0;
        var_a1_3 = 0x10;
        goto block_143;
    case 3:
        func_8005BD1C(arg0);
        temp_v1_10 = M(u32,arg0,0x3A0);
        if (temp_v1_10 < 9U) {
            M(u32,arg0,0x3A0) = 0U;
        } else {
            M(u32,arg0,0x3A0) = (u32) (temp_v1_10 - 8);
        }
        if (M(u8,scratch,0x28C) == 0) {
            if ((u32) M(u32,arg0,0x3A0) < 0x18U) {
                M(u8,arg0,0x396) = 0;
                goto block_81;
            }
        } else {
        block_81:
            M(u8,arg0,0x397) = 0U;
        }
        func_8005B908(arg0);
        finalActor=arg0;
        var_a1_3 = 8;
        goto block_143;
    case 4:
#if WE3_PS1_CONTEXT
        /* Approved real ABI input read; this case has no earlier S2 definition. */
        __asm__("" : "=r"(var_s2));
#else
        var_s2=context_s2;
#endif
        M(u8,arg0,0x3D1) = 1;
        M(u8,arg0,0x3A7) = 1;
        temp_v0_8 = M(u8,scratch,0x28C) & 0xFF;
        if (temp_v0_8 != 0) {
            var_s2 = D_800C6B74[temp_v0_8];
        } else {
            M(u8,arg0,0x396) = 0;
            M(u8,arg0,0x397) = 0U;
        }
        temp_v0_9 = M(u8 *,scratch,0x2F4);
        func_80048FC4(arg0, var_s2 & 0xFF, func_8005B36C((s32) M(s16,arg0,0x2), (s32) M(s16,arg0,0x6), (s32) M(s16,temp_v0_9,0x2), (s32) M(s16,temp_v0_9,0x6)) & 0xFF, 0x30U);
        func_8005BD1C(arg0);
        func_8005B908(arg0);
        {
            register u32 attributeByte WE3_BIND("v0");
            register u32 teamByte WE3_BIND("a0");
            register u32 verticalIndex WE3_BIND("v1");
            attributeByte=M(u8,arg0,0x392);
            teamByte=M(u8,arg0,0x398);
            verticalIndex=attributeByte*12U;
            WE3_AID(__asm__("" : "=r"(verticalIndex) : "0"(verticalIndex),"r"(teamByte)));
            verticalIndex+=teamByte*264U;
            M(s16,scratch,0x0F2)=(s16)(-(s32)((((M(u32,D_8010C330,verticalIndex)>>11)&127U)+100U)*544U)/180);
        }
        func_800484F8((s32) M(s16,arg0,0x2), (s32) M(s16,arg0,0x6), (u32) M(u8,arg0,0x3B4), 0U);
        if (func_80053EB8(arg0) & 0xFF) {
            finalActor=arg0;
            var_a1_3 = 0xF;
            goto block_143;
        }
        M(u8,arg0,0x396) = 7;
        M(u8,arg0,0x397) = 0U;
        return;
    case 5:
        M(u8,arg0,0x3A7) = 1;
        func_8005BD1C(arg0);
        temp_s2_2=func_8005B36C(M(s16,arg0,2),M(s16,arg0,6),M(s16,arg0,0x3BC),M(s16,arg0,0x3BE));
        temp_v1_11=M(u8 *,scratch,0x2F4);
        temp_s3=func_8005B36C(M(s16,arg0,2),M(s16,arg0,6),M(s16,temp_v1_11,2),M(s16,temp_v1_11,6));
        {
            register u32 targetXSquare WE3_BIND("a1");
            register u32 targetZSquare WE3_BIND("v1");
            register s32 targetDelta WE3_BIND("v1");
            register u32 targetNear WE3_BIND("v0");
            targetDelta=M(s16,arg0,2);
            WE3_AID(__asm__("" : "=r"(targetDelta) : "0"(targetDelta)));
            targetDelta-=M(s16,arg0,0x3BC);
            targetXSquare=SQ(targetDelta);
            WE3_AID(__asm__("" : : "r"(targetXSquare)));
            targetDelta=M(s16,arg0,6);
            WE3_AID(__asm__("" : "=r"(targetDelta) : "0"(targetDelta)));
            targetDelta-=M(s16,arg0,0x3BE);
            targetZSquare=SQ(targetDelta);
            WE3_AID(__asm__("" : : "r"(targetZSquare)));
            targetNear=(s32)(targetXSquare+targetZSquare)<0x1000;
            WE3_AID(__asm__("" : : "r"(targetNear)));
            if (targetNear) {
                if (M(u16,arg0,0x38E) != 1) {
                    func_8005BA30(arg0, 1U, 0U);
                }
                temp_v0_10 = func_8005B7CC(temp_s3 & 0xFF, (u32) M(u8,arg0,0x3AA), 0x10U);
                temp_v1_14 = M(u32,arg0,0x3A0);
                M(u8,arg0,0x3AA) = temp_v0_10;
                M(u8,arg0,0x3A4) = temp_v0_10;
                if (temp_v1_14 < 0x13U) {
                    M(u32,arg0,0x3A0) = 0U;
                } else {
                    M(u32,arg0,0x3A0) = (u32) (temp_v1_14 - 0x12);
                }
            } else {
                temp_v1_15 = M(u8,scratch,0x29A) & 0xFF;
                switch (temp_v1_15) {
                case 1:
                    {
                        register u32 teamAddress WE3_BIND("v0");
                        teamAddress=M(u8,arg0,0x398);
                        WE3_AID(__asm__("" : "=r"(teamAddress) : "0"(teamAddress)));
                        teamAddress=(u32)scratch+teamAddress;
                        if ((M(u8,(u8 *)teamAddress,0x2CF) == temp_v1_15) && (M(u8,arg0,0x3D2) == 0)) {
                            func_80048D94(arg0, temp_s2_2 & 0xFF, temp_s3 & 0xFF, 0xFFU);
                        } else {
                            M(u16,scratch,0x0F8) = (u16) M(s16,arg0,0x3BC);
                            M(u16,scratch,0x0FC) = (u16) M(s16,arg0,0x3BE);
                            {
                                register u32 maskIndex WE3_BIND("v0");
                                register u32 actorMask WE3_BIND("v1");
                                maskIndex=M(u8,arg0,0x398);
                                actorMask=M(u16,arg0,0x3D4);
                                WE3_AID(__asm__("" : "=r"(maskIndex) : "0"(maskIndex),"r"(actorMask)));
                                maskIndex*=2;
                                maskIndex=M(u16,scratch,maskIndex+0x22);
                                if (maskIndex & actorMask) {
                                    func_800479B8(arg0, 1U);
                                } else {
                                    func_800479B8(arg0, 0U);
                                }
                            }
                        }
                    }
                    break;
                default:
                    {
                        register u32 distantXSquare WE3_BIND("a0");
                        register u32 distantZSquare WE3_BIND("v1");
                        register s32 distantDelta WE3_BIND("v0");
                        distantDelta=M(s16,arg0,2);
                        WE3_AID(__asm__("" : "=r"(distantDelta) : "0"(distantDelta)));
                        distantDelta-=M(s16,arg0,0x3BC);
                        distantXSquare=SQ(distantDelta);
                        WE3_AID(__asm__("" : : "r"(distantXSquare)));
                        distantDelta=M(s16,arg0,6);
                        WE3_AID(__asm__("" : "=r"(distantDelta) : "0"(distantDelta)));
                        distantDelta-=M(s16,arg0,0x3BE);
                        distantZSquare=SQ(distantDelta);
                        WE3_AID(__asm__("" : : "r"(distantZSquare)));
                        if ((s32)(distantXSquare+distantZSquare) <= 0x100000) {
                            func_80048FC4(arg0, temp_s2_2 & 0xFF, temp_s3 & 0xFF, 0xFFU);
                        } else {
                        case 3:
                            func_80048AD8(arg0, temp_s2_2 & 0xFF, temp_s3 & 0xFF, 0xFFU);
                        }
                    }
                    break;
                }
            }
        }
        temp_v1_16 = M(u8,scratch,0x29A) & 0xFF;
        if ((temp_v1_16 == 1) && (M(u8,scratch,0x2FC) == 0)) {
            if (M(u16,arg0,0x38E) == temp_v1_16) {
                M(u8,arg0,0x396) = 0;
            }
            M(u8,arg0,0x397) = 0U;
        }
    block_112:
        func_8005B908(arg0);
        return;
    case 6:
        M(u8,arg0,0x3A7) = 1;
        M(u8,arg0,0x3D1) = 1;
        func_8005BD1C(arg0);
        temp_v0_13 = M(u8,scratch,0x28C) & 0xFF;
        if (temp_v0_13 != 0) {
            var_s2_4 = D_800C6B74[temp_v0_13];
            M(u8,arg0,0x3AB) = var_s2_4;
        } else {
            var_s2_4 = M(u8,arg0,0x3AB);
        }
        temp_v0_14 = M(u8 *,scratch,0x2F4);
        temp_v0_15 = func_8005B36C((s32) M(s16,arg0,0x2), (s32) M(s16,arg0,0x6), (s32) M(s16,temp_v0_14,0x2), (s32) M(s16,temp_v0_14,0x6));
        {
            register u32 turnWord WE3_BIND("v0");
            register u32 turnPredicate WE3_BIND("v0");
            turnWord=temp_v0_15-var_s2_4;
            WE3_AID(__asm__("" : "=r"(turnWord) : "0"(turnWord)));
            temp_v1_17=turnWord&255U;
            turnPredicate=temp_v1_17<129U;
            WE3_AID(__asm__("" : : "r"(turnPredicate)));
            if (!turnPredicate) {
                turnWord=(var_s2_4-temp_v0_15)&255U;
                turnPredicate=(s32)turnWord<120;
                WE3_AID(__asm__("" : "=r"(turnPredicate) : "0"(turnPredicate)));
                if (turnPredicate) goto storeTurnFlag;
                goto turnFlagDone;
            }
            turnPredicate=(s32)temp_v1_17<120;
            WE3_AID(__asm__("" : : "r"(turnPredicate)));
            if (!turnPredicate) goto turnFlagDone;
        storeTurnFlag:
            var_v0_5=var_s2_4-temp_v0_15;
            M(u8,arg0,0x3AC)=((u32)var_v0_5&255U)<129U;
            turnFlagDone:;
        }
        temp_v1_18 = var_s2_4 & 0xFF;
        if (M(u8,arg0,0x3AC) == 0) {
            var_v0_6 = temp_v1_18 + 0x28;
        } else {
            var_v0_6 = temp_v1_18 - 0x28;
        }
        M(u8,arg0,0x3AA) = func_8005B7CC(var_v0_6 & 0xFF, (u32) M(u8,arg0,0x3AA), 0xCU);
        temp_s0_4 = var_s2_4 & 0xFF;
        M(u8,arg0,0x3A4) = func_8005B7CC(temp_s0_4, (u32) M(u8,arg0,0x3A4), 0x18U);
        WE3_AID(__asm__("" : : : "memory"));
        {
            register u32 headingMode WE3_BIND("v0");
            register u32 compareHeading WE3_BIND("v0");
            headingMode=M(u8,arg0,0x3AC);
            temp_v1_19=M(u8,arg0,0x3AA);
            WE3_AID(__asm__("" : "=r"(headingMode) : "0"(headingMode),"r"(temp_v1_19)));
            if (headingMode == 0) {
                compareHeading=(temp_s0_4+40U)&255U;
                if (temp_v1_19 == compareHeading) goto block_128;
                WE3_AID(__asm__("" : : "r"(compareHeading)));
                goto block_130;
            }
            compareHeading=temp_s0_4-40U;
            if (temp_v1_19 == (compareHeading & 0xFF)) {
            block_128:
                temp_v0_16 = M(u32,arg0,0x3A0) + 0xC;
                M(u32,arg0,0x3A0) = temp_v0_16;
                if (temp_v0_16 >= 0x31U) {
                    var_v0_7 = 0x30;
                    goto block_132;
                }
            } else {
            block_130:
                temp_v0_17 = M(u32,arg0,0x3A0) + 8;
                M(u32,arg0,0x3A0) = temp_v0_17;
                if (temp_v0_17 >= 0x23U) {
                    var_v0_7 = 0x22;
                block_132:
                    M(u32,arg0,0x3A0) = var_v0_7;
                }
            }
        }
        M(u8,arg0,0x3A8) = func_8005B7CC((M(u8,arg0,0x3AA) - temp_v0_15) & 0xFF, 0U, 0x34U);
        movementActor=arg0;
        goto block_142;
    case 7:
        M(u8,arg0,0x3A7) = 1;
        M(u8,arg0,0x3D1) = 1;
        func_8005BD1C(arg0);
        if (M(u8,arg0,0x390) == 0) {
            func_8005BA30(arg0, 0xDU, 1U);
        }
        {
            register u32 selectorWord WE3_BIND("v0");
            selectorWord=M(u8,scratch,0x28C);
            WE3_AID(__asm__("" : "=r"(selectorWord) : "0"(selectorWord)));
            temp_a0_4=selectorWord&255U;
        }
        if ((temp_a0_4 != 0) && (M(u8,arg0,0x3D0) == 0)) {
            var_s2_5 = D_800C6B74[temp_a0_4];
            M(u8,arg0,0x3AB) = var_s2_5;
        } else {
            var_s2_5 = M(u8,arg0,0x3AB);
        }
        M(u8,arg0,0x3AA) = func_8005B7CC((var_s2_5 + 0x80) & 0xFF, (u32) M(u8,arg0,0x3AA), 0x28U);
        M(u8,arg0,0x3A4) = var_s2_5;
        movementActor=arg0;
        temp_v1_20 = M(u32,arg0,0x3A0) + 5;
        M(u32,arg0,0x3A0) = temp_v1_20;
        if (temp_v1_20 >= 0x23U) {
            M(u32,arg0,0x3A0) = 0x22U;
        }
    block_142:
        func_8005B908(movementActor);
        finalActor=arg0;
        var_a1_3 = 9;
    block_143:
        func_80045504(finalActor, var_a1_3);
        return;
    default:
        return;
    }
}
