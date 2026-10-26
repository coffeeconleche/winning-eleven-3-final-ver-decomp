#include "common.h"

/* Actor action 0x0D: phases 0/6 initialize, 1/4 accelerate, 2/3 perform
 * the kick sequence and 5 recovers. Names describe observed behavior only.
 * Actor and scratch views require valid aligned PS1 guest storage.
 *
 * Native match: GCC 2.7.2.SN16.3.7.0003, -quiet -O2 -G0.
 * Fixed registers and empty initialized-value handoffs preserve measured
 * allocation, reads and call chronology. They emit no CPU instructions.
 * Volatile views retain observed rereads/order, without claiming original
 * hardware volatility. The final package measures every surviving aid.
 *
 * Squared differences and damping products use unsigned modulo32 arithmetic
 * before signed interpretation; this covers full halfword/word domains.
 * All direction remainder intermediates lie in [193,448], so signed shifts
 * there operate on nonnegative values. Midpoint sums fit signed32.
 * A future native backend must replace PS1 addresses/constraints.
 */
#define FIELD(base,type,offset) (*(type *)((base)+(offset)))

extern s32 func_8001E6B8(s32),func_8001E730(s16),func_8003FABC(u8 *),func_8005C7A0(u32);
extern void func_8002A83C(u8 *,u32),func_80040DD4(u8 *,s32),func_800498AC(u8 *),func_8004B0F0(u8 *,u32,u32,u32),func_8005B908(u8 *),func_8005BA30(u8 *,u32,u32),func_80089D00(u8 *,u32,s32,s32),func_800AB620(s32);
typedef struct {
    u8 unknown000[0x38D];
    u8 byte38D;
    u8 unknown38E[0xB];
    u8 byte399;
    u8 unknown39A;
    u8 byte39B;
    u8 unknown39C[4];
    u32 word3A0;
    u8 unknown3A4[0x24];
    s16 half3C8;
} Resident3EF94View;
extern u8 func_80052D90(Resident3EF94View *);
extern u32 func_8005B36C(s32,s32,s32,s32),func_8005B7CC(u32,u32,u32),func_8005BD1C(u8 *);
extern u8 D_800C6D14[],D_800FF748[];

void func_80040324(u8 *argument)
{
    u8 *actor=argument;
    u8 *records=D_800FF748;
    u8 *scratch=(u8 *)0x1F800000;
    s32 randomDirection;
    s32 otherX;
    s32 actorX;
    s32 destinationX;
    s32 absoluteZ;
    s32 strikeSpeed;
    s32 passSpeed;
    register s32 dx __asm__("$2");
    register s32 dz __asm__("$2");
    s32 orientationDelta;
    s32 turnDelta2;
    s32 turnDelta3;
    s32 roundedDelta2;
    s32 roundedDelta3;
    register u32 velocityX __asm__("$4");
    register u32 velocityZ __asm__("$5");
    register u32 oldX __asm__("$2");
    register u32 oldZ __asm__("$3");
    register u32 squareX __asm__("$4");
    register u32 squareZ __asm__("$3");
    s32 left;
    s32 right;
    s32 distanceLimit;
    register u32 recoveryMode __asm__("$2");
    u8 *flagPointer;
    u32 flagIndex;
    u32 selection;
    s32 distance;
    u32 counterOffset;
    u32 count;
    u32 addressOffset;
    u32 one;
    u32 timer;
    u32 frame;
    register u32 angle __asm__("$4");
    register u32 flag __asm__("$2");
    u32 team;
    u32 player;
    u32 actorId;
    s32 targetX;
    s32 targetZ;
    s32 roundedOrientation;
    register s32 desiredDirection __asm__("$2");
    s32 directionOffset;
    register s32 kickAngle __asm__("$18");
    s32 ballDirection;
    s32 targetDirection;
    u32 speed1;
    u32 speed4;
    u32 speedLimit4;
    u32 recoverySpeed;
    u32 angleDifference;
    u32 speedLimit1;
    u8 *playerCounter;
    u8 otherDirection;
    register u32 noisyDirection __asm__("$18");
    u32 currentDirection;
    register u32 adjustedDirection __asm__("$18");
    register u32 selectedValue __asm__("$2");
    u32 selected;
    u8 rotatedAngle2;
    u8 rotatedAngle3;
    u8 recoveryTimer;
    u32 state;
    u8 actorDirection;
    u32 turnDirection;
    s32 newDirection;
    u8 *other;
    u8 *ball;
    u8 *teamCounter;

    state = FIELD(actor, u8, 0x397);
    FIELD(actor, u16, 0x3AE) = (u16) (FIELD(actor, u16, 0x3AE) - 2);
    switch (state) {
    case 0:
        FIELD(actor, s16, 0x3CC) = 1;
        FIELD(actor, s16, 0x3C6) = 0;
        /* fallthrough */
    case 6:
        if ((*(u8 *)(scratch+0x2A9) != 0) && (*(u8 *)(scratch + FIELD(actor, u8, 0x398) + 0x2CF) == 0)) {
            func_8005BD1C(actor);
            func_8005B908(actor);
            FIELD(actor, u8, 0x396) = 0x18;
            goto reset_phase;
        }
        FIELD(actor, u8, 0x3D1) = 0;
        orientationDelta = *(u8 *)(scratch+0x2A9);
        FIELD(actor, s16, 0x3C4) = 1;
        FIELD(actor, s16, 0x3C8) = 1;
        FIELD(actor, s16, 0x3C2) = orientationDelta;
        func_800AB620(0x50A);
        if (func_8003FABC(actor) == 0) {
            func_8005BD1C(actor);
            func_8005B908(actor);
            FIELD(actor, u8, 0x396) = 0x18;
            FIELD(actor, u8, 0x397) = 0U;
            return;
        }
        selectedValue = *(u8 *)(scratch+0x2A9);
        __asm__("" : : "r"(selectedValue));
        selected=selectedValue & 255;
        if (selected) {
            other = records + (((selected % 24) & 0xFF) * 0x3E8);
            targetDirection = func_8005B36C(FIELD(actor, s16, 0x2), FIELD(actor, s16, 0x6), FIELD(other, s16, 0x2), FIELD(other, s16, 0x6));
            otherX = FIELD(other, s16, 0x2);
            if (FIELD(other, u8, 0x399) != 0) {
                if (-otherX < -0x1990) {

                } else {
                    goto eligible_tackle;
                }
            } else if (otherX >= -0x1990) {
eligible_tackle:
                left=FIELD(actor, s16, 2); right=FIELD(other, s16, 2);

                dx = left-right;

                squareX=(u32)dx*(u32)dx;
                left=FIELD(actor, s16, 6); right=FIELD(other, s16, 6);

                dz = left-right;

                squareZ=(u32)dz*(u32)dz;
                distanceLimit=0x8FFFF;

                distance=(s32)(squareX+squareZ);
                distanceLimit=distanceLimit<distance;

                if ((!distanceLimit) && !(func_80052D90((Resident3EF94View *)other) & 0xFF)) {
                    otherDirection = FIELD(other, u8, 0x3AA);
                    angleDifference = (otherDirection - targetDirection) & 0xFF;
                    if (angleDifference >= 0x81U) {
                        if (((targetDirection - otherDirection) & 0xFF) < 0x51) {

                        } else {
                            goto opposed_direction;
                        }
                    } else if ((s32) angleDifference >= 0x51) {
opposed_direction:
                        if (func_8001E730((FIELD(other, u8, 0x3B8) - FIELD(actor, u8, 0x3B9)) - 0xA) & 0xFF) {
                            FIELD(other, u8, 0x3AB) = targetDirection;
                            FIELD(other, u8, 0x396) = 0x12;
                            FIELD(other, u8, 0x397) = 0;
                        }
                    }
                }
            }
        }
        goto update_motion;
    case 1:
        func_8005BD1C(actor);
        if (FIELD(actor, u16, 0x38E) == 0x4D && FIELD(actor, u8, 0x390) == 0) {
            func_8005BA30(actor,0x1E,0x15);
        }
        if (FIELD(actor, u8, 0x390) < 7U && FIELD(actor, s16, 0x3C4) != 0) {
            FIELD(actor, u8, 0x3AA) = func_8005B7CC(FIELD(actor, u8, 0x3AB), FIELD(actor, u8, 0x3AA), 8);
        }
        if ((u8) FIELD(actor, u8, 0x390) < 0xCU) {
            func_80040DD4(actor, 0);
        } else {
            FIELD(actor, u8, 0x3D1) = 3;
        }
        if (FIELD(actor, u8, 0x390) == 0x19) {
            FIELD(actor, u8, 0x3B0) = 4;
            func_8005BA30(actor,1,func_8001E6B8(0x15)&255);
            FIELD(actor, u8, 0x397)=5;
        }
        if (FIELD(actor, u8, 0x390) < 7U) {
update_motion:
        orientationDelta = 0x1C0 - FIELD(actor, u8, 0x3AA);
        roundedOrientation = orientationDelta;
        if (orientationDelta < 0) {
            roundedOrientation = orientationDelta + 0xFF;
        }
        FIELD(actor, s16, 0x26) = (s16) ((orientationDelta - ((roundedOrientation >> 8) << 8)) * 0x10);
        FIELD(actor, s16, 0x2) = (s16) ((u16) FIELD(actor, s16, 0x2) + FIELD(actor, u32, 0x8));
        FIELD(actor, s16, 0x6) = (s16) ((u16) FIELD(actor, s16, 0x6) + FIELD(actor, u32, 0x10));
        goto post_update;
        }
        speed1 = FIELD(actor, u32, 0x3A0) + ((FIELD(actor, s16, 0x3CA) * *(D_800C6D14 + FIELD(actor, u8, 0x390))) / 360);
        FIELD(actor, u32, 0x3A0) = speed1;
        speedLimit1 = (FIELD(actor, s16, 0x3CA) * *(D_800C6D14 + FIELD(actor, u8, 0x390))) / 90;
        if (speedLimit1 < speed1) {
            FIELD(actor, u32, 0x3A0) = speedLimit1;
        }
        goto update_speed;
    case 2:
        func_8005BD1C(actor);
        if ((u8) FIELD(actor, u8, 0x390) < 0xDU) {
            rotatedAngle2 = func_8005B7CC(FIELD(actor, u8, 0x3AB), FIELD(actor, u8, 0x3AA), 8);
            turnDelta2 = 0x1C0 - (rotatedAngle2 & 0xFF);
            roundedDelta2 = turnDelta2;
            FIELD(actor, u8, 0x3AA) = rotatedAngle2;
            if (turnDelta2 < 0) {
                roundedDelta2 = turnDelta2 + 0xFF;
            }
            FIELD(actor, s16, 0x26) = (s16) ((turnDelta2 - ((roundedDelta2 >> 8) << 8)) * 0x10);
        }
        FIELD(actor, s16, 0x2) = (s16) ((u16) FIELD(actor, s16, 0x2) + FIELD(actor, u32, 0x8));
        FIELD(actor, s16, 0x6) = (s16) ((u16) FIELD(actor, s16, 0x6) + FIELD(actor, u32, 0x10));
        if ((u8) FIELD(actor, u8, 0x390) >= 5U) {
            func_80040DD4(actor, 1);
        }
        if (FIELD(actor, u8, 0x390) == 0xC && FIELD(actor, u8, 0x38D) != *(u8 *)(scratch+0x2A8)) {
            timer=FIELD(actor, u8, 0x3B0);
            if (timer!=0) {
                timer=FIELD(actor, volatile u8, 0x3B0);
                frame=FIELD(actor, volatile u8, 0x390);
                angle=FIELD(actor, volatile u8, 0x3AA);
                timer--; frame--;
                FIELD(actor, u8, 0x3AB)=angle;
                FIELD(actor, u8, 0x3B0)=timer;
                FIELD(actor, u8, 0x390)=frame;
            }
        }
        if ((u8) FIELD(actor, u8, 0x390) >= 0xCU) {
            FIELD(actor, s32, 0x8) = (s32) ((s32)(FIELD(actor, u32, 0x8) * 8U) / 10);
            FIELD(actor, s32, 0x10) = (s32) ((s32)(FIELD(actor, u32, 0x10) * 8U) / 10);
        }
        if (FIELD(actor, u8, 0x390) == 0x19) {
            func_8005BA30(actor, 1, func_8001E6B8(0x15) & 0xFF);
            if (FIELD(actor, u8, 0x38D) != *(u8 *)(scratch+0x2A9)) {
                FIELD(actor, u8, 0x3B0) = 4U;
                FIELD(actor, u8, 0x397) = 5U;
            } else {
                goto reset_state;
            }
        }
        goto post_update;
    case 3:
        func_8005BD1C(actor);
        if (FIELD(actor, s16, 0x3C4) != 0) {
            rotatedAngle3 = func_8005B7CC(FIELD(actor, u8, 0x3AB), FIELD(actor, u8, 0x3AA), 0xC);
            turnDelta3 = 0x1C0 - (rotatedAngle3 & 0xFF);
            roundedDelta3 = turnDelta3;
            FIELD(actor, u8, 0x3AA) = rotatedAngle3;
            if (turnDelta3 < 0) {
                roundedDelta3 = turnDelta3 + 0xFF;
            }
            FIELD(actor, s16, 0x26) = (s16) ((turnDelta3 - ((roundedDelta3 >> 8) << 8)) * 0x10);
        }
        velocityX=FIELD(actor, u32, 8);
        velocityZ=FIELD(actor, u32, 16);
        oldZ=FIELD(actor, u16, 6);
        oldX=FIELD(actor, u16, 2);

        FIELD(actor, u16, 6)=oldZ+velocityZ;
        FIELD(actor, u16, 2)=oldX+velocityX;
        if (FIELD(actor, u8, 0x390) == 9) {
            func_80040DD4(actor, 2);
            if (FIELD(actor, u8, 0x38D) == *(u8 *)(scratch+0x2A8)) {
                actorX = FIELD(actor, s16, 0x2);
                if (FIELD(actor, u8, 0x399) != 0) {
                    if (-actorX < 0x1991) {
                        goto ordinary_kick;
                    }
                    goto consider_goal;
                }
                if (actorX >= 0x1991) {
consider_goal:
                    absoluteZ = FIELD(actor, s16, 0x6);
                    if (absoluteZ < 0) {
                        absoluteZ = -absoluteZ;
                    }
                    if (absoluteZ < 0x12F4) {
                        ball = *(u8 **)(scratch+0x2F4);
                        flag = FIELD(actor, u8, 0x399);
                        targetX=FIELD(ball, s16, 2);
                        targetZ=FIELD(ball, s16, 6);
                        if (flag == 0) destinationX=0x33A0;
                        else destinationX=-0x33A0;

                        ballDirection = func_8005B36C(targetX, targetZ, destinationX, 0);
                        noisyDirection = ballDirection + func_8005C7A0(0x10);
                        __asm__("" : : "r"(ballDirection));
                        targetX=noisyDirection & 255;
                        actorDirection = FIELD(actor, u8, 0x3AA);
                        if (FIELD(actor, u8, 0x3AC) == 0) {
                            desiredDirection = actorDirection - 0x38;
                        } else {
                            desiredDirection = actorDirection + 0x38;
                        }

                        adjustedDirection = func_8005B7CC(targetX, desiredDirection & 0xFF, 0x30);

                        strikeSpeed = func_8001E6B8(0x10) + 0x80;
                        func_8004B0F0(actor, adjustedDirection & 0xFF, strikeSpeed, (s16)func_8005C7A0(4) + 0xC);
                        addressOffset=0x8EC8;
                        teamCounter=records+FIELD(actor, u8, 0x398);

                        teamCounter+=addressOffset;

                        *teamCounter += 1;
                        team=FIELD(actor, u8, 0x398);
                        player=FIELD(actor, u8, 0x392);

                        playerCounter = (u8 *)((team * 0x16) + (u32)records);

                        counterOffset=0x88D1;
                        playerCounter +=counterOffset;
                        playerCounter +=player;

                        count=*playerCounter; count++;

                        *playerCounter=count;
                        actorId=FIELD(actor, u8, 0x38D);

                        records[0xAC4F] = 0xFF;
                        *(u32 *)(scratch+0x2B0) = 4;
                        records[0xAC4E] = actorId;
                    } else {
                        goto ordinary_kick;
                    }
                } else {
ordinary_kick:
                    currentDirection = FIELD(actor, u8, 0x3AA);
                    randomDirection = (s16)func_8005C7A0(0x10);
                    if (FIELD(actor, u8, 0x3AC) == 0) {
                        directionOffset = randomDirection - 0x38;
                    } else {
                        directionOffset = randomDirection + 0x38;
                    }

                    kickAngle = currentDirection + directionOffset;
                    __asm__("" : : "r"(currentDirection));
                    passSpeed = func_8001E6B8(0x10) + 0x80;
                    func_8004B0F0(actor, kickAngle & 0xFF, passSpeed, (s16)func_8005C7A0(4) + 0xC);
                    recoveryMode=10;
                    targetX=(s32)actor;
                    one=1;

                    *(u32 *)(scratch+0x2B0) = recoveryMode;
                    flagIndex=FIELD(actor, u8, 0x398);

                    selection=0;

                    flagPointer=scratch+flagIndex;

                    flagPointer[0x2CF]=one;
                    func_80089D00((u8 *)targetX, selection, (s16) *(u16 *)(scratch+0x2B4), (s16) *(u16 *)(scratch+0x2B6));
                }
                (*(s16 *)(*(u8 **)(scratch+0x2F4)+2)) = (s16) ((s32) ((s16) *(u16 *)(scratch+0x036) + (s16) *(u16 *)(scratch+0x0F0)) >> 1);
                (*(s16 *)(*(u8 **)(scratch+0x2F4)+4)) = (s16) ((s32) ((s16) *(u16 *)(scratch+0x04E) + (s16) *(u16 *)(scratch+0x0F2)) >> 1);
                (*(s16 *)(*(u8 **)(scratch+0x2F4)+6)) = (s16) ((s32) ((s16) *(u16 *)(scratch+0x066) + (s16) *(u16 *)(scratch+0x0F4)) >> 1);
                (*(u8 **)(scratch+0x2F4))[0x396] = 4;
                *(u16 *)(scratch+0x31C) = (s16) ((FIELD(actor, u8, 0x399) ^ 1) & 0xFF);
                func_800AB620(0x507);
            }
            FIELD(actor, u8, 0x397) = (u8) (FIELD(actor, u8, 0x397) + 1);
        }
        goto post_update;
    case 4:
        func_8005BD1C(actor);
        flag=FIELD(actor, u8, 0x3AC);
        turnDirection=FIELD(actor, u8, 0x3AA);

        if (flag==0) newDirection=turnDirection-4;
        else newDirection=turnDirection+4;

        FIELD(actor, u8, 0x3AA) = newDirection;
        speed4 = FIELD(actor, u32, 0x3A0) + ((FIELD(actor, s16, 0x3CA) * *(D_800C6D14 + FIELD(actor, u8, 0x390))) / 360);
        FIELD(actor, u32, 0x3A0) = speed4;
        speedLimit4 = (FIELD(actor, s16, 0x3CA) * *(D_800C6D14 + FIELD(actor, u8, 0x390))) / 90;
        if (speedLimit4 < speed4) {
            FIELD(actor, u32, 0x3A0) = speedLimit4;
        }
        if (FIELD(actor, u8, 0x390) == 0) {
            func_8005BA30(actor, 0x1E, 0x15);
            FIELD(actor, u8, 0x397) = 1U;
        }
update_speed:
        func_8005B908(actor);
        goto post_update;
    case 5:
        FIELD(actor, u8, 0x3D1) = 3;
        func_8005BD1C(actor);
        recoverySpeed = FIELD(actor, u32, 0x3A0);
        if (recoverySpeed < 0x13U) {
            FIELD(actor, u32, 0x3A0) = 0U;
        } else {
            FIELD(actor, u32, 0x3A0) = (u32) (recoverySpeed - 0x12);
        }
        recoveryTimer = FIELD(actor, u8, 0x3B0) - 1;
        FIELD(actor, u8, 0x3B0) = recoveryTimer;
        if (!(recoveryTimer & 0xFF)) {
            goto reset_state;
        }
        goto post_update;
    default:
        goto post_update;
    }
reset_state:
    FIELD(actor, u8, 0x396) = 0;
reset_phase:
    FIELD(actor, u8, 0x397) = 0;
post_update:

    func_8002A83C(actor, (u8) FIELD(actor, s16, 0x3C6));
    func_800498AC(actor);
}
