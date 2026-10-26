#include "common.h"
#define FIELD(base,type,offset) (*(type *)((base)+(offset)))
#define TARGET (*(u8 **)(scratch+0x2F4))
/* Actual signed divisions retain the PS1 compiler/assembler BREAK7 fault when
* actor byte3B5 is2. A portable backend must issue its defined fault callback
* before evaluating the division; no successful quotient is invented here. */
extern s32 func_8001E6B8(s32);
extern s32 func_8005C7A0(u32);
extern s32 func_8005CE30(u32);
extern s32 func_80079360(u8 *);
extern u32 func_80034734(u8 *);
extern u32 func_80049D94(u8 *);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B36C(s32,s32,s32,s32);
extern u32 func_8005B7CC(u32,u32,u32);
extern u8 func_800791A0(u8 *,u32);
extern void func_80029F30(u8 *,u32,u32);
extern void func_8002A83C(u8 *,u32);
extern void func_8002B38C(u8 *);
extern void func_8002C28C(u8 *);
extern void func_8002CF5C(u8 *);
extern void func_8003257C(u8 *);
extern void func_80034ACC(u8 *);
extern void func_80049DF0(u8 *,u32,u32,u32);
extern void func_80059C38(u8 *);
extern void func_80059D84(u8 *);
extern void func_8005B908(u8 *);
extern void func_8005BA30(u8 *,u32,u32);
extern void func_8005BA78(u8 *,u32,u32);
extern void func_8005C7EC(u8 *);
extern void func_800676C4(u32,s16,s16,u8);
extern void func_80076D44(void);
extern void func_80078EF8(u8 *);
extern void func_80079BA0(u8 *);
extern void func_800AB620(s32);
extern u16 D_800E6B86;
extern s32 D_800E7658;
extern u8 D_800FF748[];
extern u8 D_8010C32C[];
extern u8 D_8010CD90;
#define shotScaleByte (*(u8 *)(&D_8010CD90))

/* Partial views of existing actor, record and scratch storage. */
void func_80077D8C(u8 *input)
{
    u8 *actor = input;
    s32 divisionDenominator;
    s32 divisionNumerator;
    s32 quotient;
    register u32 maximumSpeed __asm__("$4");
    register u32 squareX __asm__("$5");
    register u32 squareZ __asm__("$3");
    u32 controllerIndex;
    register u32 nextPhase __asm__("$2");
    register u32 statPlayer __asm__("$2");
    u32 statSide;
    u32 playerOffset;
    register u32 statOffset __asm__("$2");
    u32 highNibble;
    s32 statLimit;
    register s32 statLimit2 __asm__("$3");
    u32 recordOffset;
    u32 actionByte;
    register s32 ownCoordinate __asm__("$2");
    register s32 otherCoordinate __asm__("$3");
    u32 selectedTeam2;
    u32 selectedTeam3;
    u32 tailKeys;
    register u8 *callActor __asm__("$4");
    s32 randomCoordinate;
    s32 targetZ;
    register s32 targetSourceX __asm__("$4");
    s32 targetSourceZ;
    u32 targetSide;
    u32 shotScale;
    u32 shotHeading;
    u32 selectedHalf;
    u32 selectedRaw;
    register u32 selectedQuotient __asm__("$4");
    s32 goalX;
    s32 ballXFirst;
    s32 ballXSecond;
    s32 firstX;
    s32 secondX;
    s32 targetX;
    register s16 targetZHalf __asm__("$2");
    s32 absoluteZ;
    u32 closeDx;
    u32 closeDz;
    s32 startHeading;
    u32 dx;
    u32 dz;
    s32 mode;
    register s32 scanIndex __asm__("$6");
    register u16 padMask __asm__("$4");
    u16 targetHalfZ;
    u16 inputKeys;
    u16 targetHalfX;
    u16 timerOld;
    register u32 alternateStatWord __asm__("$4");
    u32 initialSpeed;
    u32 approachSpeed;
    u32 acceleratedSpeed;
    u32 actionSpeed;
    u32 startedSpeed;
    u32 steppingSpeed;
    u32 movingSpeed;
    register u32 primaryStatWord __asm__("$3");
    u32 tailAction;
    u32 initialAction;
    u32 selectedAction;
    u32 closingAction;
    u8 *scanActor;
    u8 side;
    u8 selectedIdByte;
    u8 steeredHeading;
    u8 phase;
    u32 direction;
    u8 turnHeading;
    u8 *otherPosition;
    u8 *closePosition;
    register u8 *selectedActor __asm__("$5");
    u8 *approachTarget;
    u8 *initialTarget;
    u8 *clockwiseTarget;
    u8 *anticlockwiseTarget;
    u8 *pad;
    u8 *targetPosition;
    register u8 *scanFields __asm__("$4");

    u8 *records = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;

    phase = FIELD(actor, u8, 0x397);
    switch (phase) {
    case 0:
        if (FIELD(scratch, u8, 0x29B) != 0) {
            FIELD(actor, u8, 0x396) = 0U;
            goto reset_phase;
        }
        break;
    case 10:
        func_8005BD1C(actor);
        if ((FIELD(scratch, u8, 0x29A) & 0xFF) == 1) {
            FIELD(actor, u8, 0x396) = 0U;
        reset_phase:
            FIELD(actor, u8, 0x397) = 0U;
        }
        break;
    case 1:
        if (D_800E7658 >= 0x10) {
            FIELD(scratch, u16, 0x294) = (u16) (FIELD(scratch, u16, 0x294) + 1);
            func_8005C7EC(actor);
            if (FIELD(actor, u8, 0x39A) == 0) {
                if (FIELD(actor, u16, 0x3D4) & 0x8000) {
                    clockwiseTarget = TARGET;
                    FIELD(clockwiseTarget, u8, 0x3A4) = (u8) (FIELD(clockwiseTarget, u8, 0x3A4) + 1);
                }
                if (FIELD(actor, u16, 0x3D4) & 0x2000) {
                    anticlockwiseTarget = TARGET;
                    FIELD(anticlockwiseTarget, u8, 0x3A4) = (u8) (FIELD(anticlockwiseTarget, u8, 0x3A4) - 1);
                }
                FIELD((TARGET), u8, 0x3A4) = func_8005B7CC(FIELD((TARGET), u8, 0x3A4), FIELD(actor, u8, 0x3AB), 0x20);
            }
            if ((D_800E6B86 != 0) && (timerOld = FIELD(scratch, u16, 0x296), (((s16) timerOld < 0x64) != 0))) {
                FIELD(scratch, u16, 0x296) = (u16) (timerOld + 1);
                FIELD(scratch, u16, 0x294) = 0U;
            } else {
                if ((s16) FIELD(scratch, u16, 0x296) != 0xFF) {
                    FIELD(scratch, u16, 0x296) = 0xFFU;
                    func_800AB620(0x517);
                }
                if (FIELD(actor, u8, 0x39A) != 0) {
                    if ((u16) FIELD(scratch, u16, 0x294) >= 0x1EU) {
                        func_80078EF8(actor);
                        goto read_controls;
                    }
                } else {
                read_controls:
                    controllerIndex = FIELD(actor, u8, 0x398);
                    padMask = FIELD(actor, u16, 0x3D6);

                    pad = (u8 *)(controllerIndex*2+(u32)scratch);
                    if (FIELD(pad, u16, 0x12) & padMask) {
                        FIELD(scratch, u32, 0x2B0) = 4U;
                        goto load_next_phase;
                    }
                    if (FIELD(pad, u16, 0x1A) & padMask) {
                        FIELD(scratch, u32, 0x2B0) = 2U;
                        nextPhase = FIELD(actor, u8, 0x397);
                        FIELD(actor, u16, 0x3C6) = 4U;
                        goto increment_phase;
                    }
                    if (FIELD(pad, u16, 0x16) & padMask) {
                        FIELD(scratch, u32, 0x2B0) = 1U;
                        nextPhase = FIELD(actor, u8, 0x397);
                        FIELD(actor, s16, 0x3C4) = 0;
                        goto increment_phase;
                    }
                    if (FIELD(pad, u16, 0x1E) & padMask) {
                        FIELD(scratch, u32, 0x2B0) = 1U;
                        nextPhase = FIELD(actor, u8, 0x397);
                        FIELD(actor, s16, 0x3C4) = 1;
                        goto increment_phase;
                    }
                }
            }
        }
        break;
    case 2:
        initialAction = FIELD(scratch, u32, 0x2B0);
        FIELD(scratch, u8, 0x309) = 2;
        FIELD(scratch, u8, 0x2C0) = 1;
        FIELD(scratch, u16, 0x294) = 0U;
        FIELD(records, u8, 0x6314) = 0;
        if (initialAction >= 2U) {
            if (initialAction >= 4U) {
                if (initialAction == 4) {
                    func_8005C7EC(actor);
                    D_8010CD90 = func_80079360(actor);
                    FIELD(actor, u16, 0x3C6) = 4U;
                    FIELD(actor, u8, 0x3B1) = 0;
                }
            } else {
                FIELD(actor, u16, 0x3C6) = 3U;
            }
        }
        if (FIELD(actor, s16, 0x3C8) != 0) {
            func_8005BA30(actor, 0x1A, 0);
            FIELD(actor, u8, 0x397) = 3U;
        } else {
            selectedAction = FIELD(scratch, u32, 0x2B0);
            if (selectedAction>=4U) goto compare_four;
            if (selectedAction>=2U) goto select_eight;
            if (selectedAction==1U) goto select_nine;
            break;
        compare_four:
            if (selectedAction==4U) goto select_seven;
            break;
        select_eight:
            func_8005BA30(actor, 0xF, 0);
            goto phase_eight;
        select_seven:
            func_8005BA30(actor, 0xF, 0);
            goto phase_seven;
        select_nine:
            if (FIELD(actor, u16, 0x38E)!=0x26) func_8005BA30(actor, 0x26, 0xF);
            goto phase_nine;
        }
        break;
    case 3:
        func_8005BD1C(actor);
        if (FIELD(actor, u8, 0x390) == 0x10) {
            if ((u16) FIELD(scratch, u16, 0x294) < 2U) {
                func_8005BA30(actor, 0x1A, 4);
                FIELD(scratch, u16, 0x294) = (u16) (FIELD(scratch, u16, 0x294) + 1);
            } else {
                FIELD(actor, u8, 0x397) = (u8) (FIELD(actor, u8, 0x397) + 1);
            }
        }
        initialSpeed = FIELD(actor, u32, 0x3A0) + 0x2C;
        FIELD(actor, u32, 0x3A0) = initialSpeed;
        if (initialSpeed >= 0x21U) {
            FIELD(actor, u32, 0x3A0) = 0x20U;
        }
        break;
    case 4:
        func_8005BD1C(actor);
        if (FIELD(actor, u8, 0x390) == 0) {
            func_8005BA30(actor, 0x26, 1);
            FIELD(actor, u8, 0x3D0) = 5U;
            actionSpeed = FIELD(actor, u32, 0x3A0) + 0xC;
            FIELD(actor, u32, 0x3A0) = actionSpeed;
            if (actionSpeed >= 0x31U) {
                FIELD(actor, u32, 0x3A0) = 0x30U;
            }
        load_next_phase:
            nextPhase = FIELD(actor, u8, 0x397);
        increment_phase:
            FIELD(actor, u8, 0x397) = nextPhase+1;
        }
        break;
    case 5:
        func_8005BD1C(actor);
        if (FIELD(actor, u8, 0x3D0) == 0) {
            func_8005BA78(actor, 4, FIELD(actor, u8, 0x390));
            divisionDenominator = FIELD(actor, u8, 0x3B5);
            divisionNumerator = FIELD(actor, u8, 0x3B4);
            divisionDenominator -= 2;
            quotient = divisionNumerator/divisionDenominator;
            *(volatile u8 *)(actor+0x397) = 6;
            startedSpeed = *(volatile u32 *)(actor+0x3A0);
            maximumSpeed = *(u8 *)(actor+0x3B4);
            startedSpeed += quotient;
            FIELD(actor, u32, 0x3A0) = startedSpeed;
            if (maximumSpeed < startedSpeed) {
                FIELD(actor, u32, 0x3A0) = maximumSpeed;
            }
        } else {
            steppingSpeed = FIELD(actor, u32, 0x3A0) + 0xC;
            FIELD(actor, u32, 0x3A0) = steppingSpeed;
            if (steppingSpeed >= 0x31U) {
                FIELD(actor, u32, 0x3A0) = 0x30U;
            }
        }
        break;
    case 6:
        initialTarget = TARGET;
        startHeading = func_8005B36C(FIELD(actor, s16, 0x2), FIELD(actor, s16, 0x6), FIELD(initialTarget, s16, 0x2), FIELD(initialTarget, s16, 0x6)) & 0xFF;
        if (FIELD(actor, u8, 0x3AC) == 0) {
            turnHeading = startHeading + 2;
        } else {
            turnHeading = startHeading - 2;
        }
        FIELD(actor, u8, 0x3AA) = turnHeading;
        FIELD(actor, u8, 0x3A4) = turnHeading;
        func_8005BD1C(actor);
        divisionDenominator = FIELD(actor, u8, 0x3B5);
        divisionNumerator = FIELD(actor, u8, 0x3B4);
        divisionDenominator -= 2;
        quotient = divisionNumerator/divisionDenominator;
        movingSpeed = *(volatile u32 *)(actor+0x3A0);
        maximumSpeed = *(volatile u8 *)(actor+0x3B4);
        movingSpeed += quotient;
        FIELD(actor, u32, 0x3A0) = movingSpeed;
        if (maximumSpeed < movingSpeed) {
            FIELD(actor, u32, 0x3A0) = maximumSpeed;
        }
        otherPosition = TARGET;
        ownCoordinate = FIELD(actor, s16, 0x2);
        otherCoordinate = FIELD(otherPosition, s16, 0x2);
        dx = (u32)ownCoordinate-(u32)otherCoordinate;
        squareX = dx*dx;
        ownCoordinate = FIELD(actor, s16, 0x6);
        otherCoordinate = FIELD(otherPosition, s16, 0x6);
        dz = (u32)ownCoordinate-(u32)otherCoordinate;
        squareZ = dz*dz;
        if ((s32)(squareX+squareZ) <= 0x23FFF) {
            closingAction = FIELD(scratch, u32, 0x2B0);
            FIELD(scratch, u8, 0x309) = 3;
            if (closingAction==2U) goto close_two;
            if (closingAction<3U) goto phase_nine;
            if (closingAction!=4U) goto phase_nine;
            func_8005BA30(actor, 0xF, 0x16);
            callActor = actor;

            func_80049DF0(callActor, *(volatile u8 *)(actor+0x3AA), 0x1A, 5);
        phase_seven:
            FIELD(actor, u8, 0x397) = 7;
            break;
        close_two:
            func_8005BA30(actor, 0xF, 0x16);
            callActor = actor;

            func_80049DF0(callActor, *(volatile u8 *)(actor+0x3AA), 0x1A, 5);
        phase_eight:
            FIELD(actor, u8, 0x397) = 8;
            break;
        phase_nine:
            FIELD(actor, u8, 0x397) = 9;
        }
        break;
    case 7:
        func_8005BD1C(actor);
        func_80079BA0(actor);
        if (FIELD(actor, u8, 0x390) == 0x1A) {
            if (FIELD(actor, u8, 0x39A) == 0) {
                direction = FIELD((TARGET), u8, 0x3A4);
            } else {
                recordOffset = (((((u32)func_8005CE30(FIELD(actor, u8, 0x38D)) & 0xFFU) % 24U) & 0xFF) * 0x3E8);
                selectedActor = records+recordOffset;
                if (FIELD(selectedActor, s16, 0x6) > 0) {
                    randomCoordinate = func_8005C7A0(0x80);
                    targetX = -0x3320;
                    targetZHalf = -((((s16)randomCoordinate+0x2A0)*7)/10);
                } else {
                    randomCoordinate = func_8005C7A0(0x80);
                    targetX = -0x3320;
                    targetZHalf = (((s16)randomCoordinate+0x2A0)*7)/10;
                }
                targetZ = targetZHalf;
                targetPosition = TARGET;
                targetSide = FIELD(actor, u8, 0x399);
                targetSourceX = FIELD(targetPosition, s16, 0x2);
                targetSourceZ = FIELD(targetPosition, s16, 0x6);

                if (targetSide==0) targetX = 0x3320;
                direction = func_8005B36C(targetSourceX, targetSourceZ, targetX, targetZ);
                FIELD(actor, u8, 0x3B1) = 0;
            }
            statPlayer = FIELD(actor, u8, 0x392);
            statSide = FIELD(actor, u8, 0x398);
            __asm__("" : : "r"(statPlayer));
            playerOffset = statPlayer*12;
            statOffset = statSide*264;
            playerOffset = playerOffset+statOffset;
            direction += func_8005C7A0(0xA - ((u8) FIELD(D_8010C32C, u8, playerOffset) >> 4));
            shotScale = shotScaleByte;

            callActor = actor;
            shotHeading = direction&0xFF;

            FIELD(actor, s16, 0x3C2) = 0;

            func_80029F30(callActor, shotScale*0x10, shotHeading);
            ballXFirst = FIELD((TARGET), s16, 0x2);
            if (FIELD(actor, u8, 0x399) != 0) {
                if (ballXFirst > 0) {
                    goto normal_catch;
                }
                goto choose_catch;
            }
            if (ballXFirst >= 0) {
            choose_catch:
                if (FIELD(actor, s16, 0x3C8) != 0) {
                    FIELD((TARGET), s16, 0x3CA) = (s16) FIELD(actor, u8, 0x3AC);
                    if (func_8001E6B8(3) == 0) {
                        FIELD((TARGET), s16, 0x3BC) = 3;
                    } else {
                        goto normal_catch;
                    }
                } else {
                    statPlayer = FIELD(actor, u8, 0x392);
                    statSide = FIELD(actor, u8, 0x398);
                    __asm__("" : : "r"(statPlayer));
                    playerOffset = statPlayer*12;
                    statOffset = statSide*264;
                    playerOffset = playerOffset+statOffset;
                    primaryStatWord = FIELD(D_8010C32C, u32, playerOffset);
                    highNibble = (primaryStatWord>>16)&15;
                    statLimit = 18-highNibble;
                    primaryStatWord = (primaryStatWord>>4)&15;
                    statLimit -= (s32)primaryStatWord;
                    if ((func_8001E6B8(statLimit+2) == 0) && ((u8) D_8010CD90 < 0x11U)) {
                        FIELD((TARGET), s16, 0x3BC) = 3;
                    } else {
                        statPlayer = FIELD(actor, u8, 0x392);
                        statSide = FIELD(actor, u8, 0x398);
                        __asm__("" : : "r"(statPlayer));
                        playerOffset = statPlayer*12;
                        statOffset = statSide*264;
                        playerOffset = playerOffset+statOffset;
                        alternateStatWord = FIELD(D_8010C32C, u32, playerOffset);
                        highNibble = (alternateStatWord>>16)&15;
                        statLimit2 = 18-highNibble;
                        alternateStatWord = (alternateStatWord>>4)&15;
                        if (func_8001E6B8(statLimit2-(s32)alternateStatWord) == 0) {
                            FIELD((TARGET), s16, 0x3BC) = 2;
                        } else {
                            goto normal_catch;
                        }
                    }
                }
            } else {
            normal_catch:
                FIELD((TARGET), s16, 0x3BC) = 1;
            }
            if ((FIELD(scratch, u8, 0x29A)&0xFF)==4) goto fixed_catch;
            ballXSecond = FIELD((TARGET), s16, 0x2);
            if (FIELD(actor, u8, 0x399)!=0) {
                if (ballXSecond>0) goto fixed_catch;
                goto random_catch;
            }
            if (ballXSecond>=0) goto random_catch;
        fixed_catch:
            FIELD(scratch, s16, 0x31C) = (s16)((FIELD(actor, u8, 0x399)^1)+6);
            FIELD((TARGET), s16, 0x3BC) = 1;
            goto catch_done;
        random_catch:
            FIELD(scratch, s16, 0x31C) = (s16)(((FIELD(actor, u8, 0x399)^1)+1)-func_8001E6B8(5));
        catch_done:
            FIELD(records, u8, 0xAC4F) = 8;
            func_80059C38(actor);
            func_80076D44();
            FIELD(actor, u8, 0x396) = 4U;
            FIELD(actor, u8, 0x397) = 4U;
        }
        break;
    case 8:
        func_8005BD1C(actor);
        func_80079BA0(actor);
        func_8005C7EC(actor);
        if (FIELD(actor, u8, 0x390) == 0x17) {
            scanActor = records + 0x3E8;
            scanIndex = 0;
            actionByte = 0x15;

            scanFields = records + 0x77F;
            do {
                if ((actor != scanActor) && (*scanActor != 0)) {
                    firstX = FIELD(scanFields, s16, -0x395);
                    if (FIELD(scanFields, u8, 0x2) != 0) {
                        if (-firstX >= 0x23E2) {
                            scanIndex += 1;
                        } else {
                            goto near_goal;
                        }
                    } else if (firstX < 0x23E2) {
                    near_goal:
                        secondX = FIELD(scanFields, s16, -0x395);
                        if (FIELD(scanFields, u8, 0x2) != 0) {
                            if (-secondX < 0x1DE3) {
                                scanIndex += 1;
                            } else {
                                goto check_z;
                            }
                        } else {
                            if (secondX >= 0x1DE3) {
                            check_z:
                                absoluteZ = FIELD(scanFields, s16, -0x391);
                                if (absoluteZ < 0) {
                                    absoluteZ = -absoluteZ;
                                }
                                if (absoluteZ < 0x23E2) {
                                    FIELD(scanFields, u8, -0x1) = actionByte;
                                    FIELD(scanFields, u8, 0x0) = 0;
                                }
                            }
                            goto next_actor;
                        }
                    } else {
                        goto next_actor;
                    }
                } else {
                next_actor:
                    scanIndex += 1;
                }
                scanFields += 0x3E8;
                scanActor += 0x3E8;
            } while (scanIndex < 0x16);
        }
        if (FIELD(actor, u8, 0x390) == 0x1A) {
            if (FIELD(actor, u8, 0x39A) != 0) {
                if (FIELD(scratch, u32, 0x2B0) == 3) {
                    FIELD(actor, s16, 0x3C2) = (s16) (func_80034734(actor) & 0xFF);
                    func_80034ACC(actor);
                } else {
                    side = FIELD(actor, u8, 0x399);
                    goalX = -0x23E2;
                    if (side == 0) {
                        goalX = 0x23E2;
                    }
                    func_800676C4(side, goalX, 0, 0);
                    selectedRaw = func_80049D94(actor)&0xFFU;
                    selectedQuotient = selectedRaw/24U;
                    selectedRaw -= selectedQuotient*24U;
                    selectedRaw &= 0xFF;
                    recordOffset = selectedRaw*1000;
                    selectedActor = records+recordOffset;
                    selectedIdByte = FIELD(selectedActor, u8, 0x38D);
                    __asm__("" : : "r"(selectedQuotient), "r"(selectedIdByte));
                    callActor = actor;
                    __asm__ volatile("" : : "r"(callActor));
                    FIELD(actor, s16, 0x3C4) = 0;
                    FIELD(actor, s16, 0x3C2) = (s16) selectedIdByte;
                    goto apply_action;
                }
            } else {
                inputKeys = FIELD(actor, u16, 0x3D4);
                FIELD(actor, s16, 0x3C2) = 0;
                if (inputKeys&0x1000) {
                    FIELD(actor, s16, 0x3C4) = 5;
                } else if (inputKeys&0x4000) {
                    FIELD(actor, s16, 0x3C4) = 6;
                } else {
                    FIELD(actor, s16, 0x3C4) = 4;
                }

            apply_action:
                callActor = actor;
                __asm__ volatile("" : : "m"(FIELD(actor, s16, 0x3C4)));
                func_8003257C(callActor);
            }
            func_80059D84(actor);
            func_80076D44();
            FIELD(actor, u8, 0x396) = 4U;
            FIELD(actor, u8, 0x397) = 4U;
            FIELD(actor, u8, 0x3AB) = (u8) FIELD(actor, u8, 0x3AA);
            func_8002A83C(actor, (u8) FIELD(actor, u16, 0x3C6));
        }
        break;
    case 9:
        approachTarget = TARGET;
        targetHalfX = (u16) FIELD(approachTarget, s16, 0x2);
        targetHalfZ = (u16) FIELD(approachTarget, s16, 0x6);
        FIELD(scratch, u16, 0x100) = targetHalfZ;
        FIELD(scratch, u16, 0xFE) = targetHalfX;
        steeredHeading = func_8005B7CC(func_8005B36C(FIELD(actor, s16, 0x2), FIELD(actor, s16, 0x6), (s16) targetHalfX, (s16) targetHalfZ) & 0xFF, FIELD(actor, u8, 0x3AA), 0xC);
        FIELD(actor, u8, 0x3AA) = steeredHeading;
        FIELD(actor, u8, 0x3A4) = steeredHeading;
        func_8005BD1C(actor);
        if (FIELD(actor, u16, 0x38E) == 4) {
            divisionDenominator = FIELD(actor, u8, 0x3B5);
            divisionNumerator = FIELD(actor, u8, 0x3B4);
            divisionDenominator -= 2;
            quotient = divisionNumerator/divisionDenominator;
            approachSpeed = *(volatile u32 *)(actor+0x3A0);
            maximumSpeed = *(volatile u8 *)(actor+0x3B4);
            approachSpeed += quotient;
            FIELD(actor, u32, 0x3A0) = approachSpeed;
            if (maximumSpeed < approachSpeed) {
                FIELD(actor, u32, 0x3A0) = maximumSpeed;
            }
        } else {
            acceleratedSpeed = FIELD(actor, u32, 0x3A0) + 8;
            FIELD(actor, u32, 0x3A0) = acceleratedSpeed;
            if (acceleratedSpeed >= 0x31U) {
                FIELD(actor, u32, 0x3A0) = 0x30U;
            }
        }
        closePosition = TARGET;
        ownCoordinate = FIELD(actor, s16, 0x2);
        otherCoordinate = FIELD(closePosition, s16, 0x2);
        closeDx = (u32)ownCoordinate-(u32)otherCoordinate;
        squareX = closeDx*closeDx;
        ownCoordinate = FIELD(actor, s16, 0x6);
        otherCoordinate = FIELD(closePosition, s16, 0x6);
        closeDz = (u32)ownCoordinate-(u32)otherCoordinate;
        squareZ = closeDz*closeDz;
        if ((s32)(squareX+squareZ) <= 0x23FFF) {
            mode = FIELD(scratch, u8, 0x29A) & 0xFF;
            switch (mode) {
            case 4:
                selectedTeam2 = *(u8 *)(scratch+0x2AE);
                FIELD(actor, u16, 0x3C6) = 0;
                FIELD(actor, s16, 0x3C2) = (s16)selectedTeam2;
                break;
            case 9:
                selectedHalf = 0x600;

                selectedTeam3 = *(u8 *)(scratch+0x2AE);
                FIELD(actor, u16, 0x3C6) = selectedHalf;
                FIELD(actor, s16, 0x3C2) = (s16)selectedTeam3;
                break;
            default:
                FIELD(actor, s16, 0x3C2) = (s16) (func_800791A0(actor, FIELD((TARGET), u8, 0x3A4)) & 0xFF);
                func_8002CF5C(actor);
                break;
            }
            FIELD(scratch, u32, 0x2B0) = 0U;
            FIELD(actor, u8, 0x3B0) = 1;
            FIELD(actor, u8, 0x396) = 5U;
            FIELD(actor, u8, 0x397) = 0U;
            func_8002C28C(actor);
            func_80076D44();
        }
        break;
    }
    if ((FIELD(actor, u8, 0x38D) == FIELD(scratch, u8, 0x2AD)) && ((FIELD(actor, u8, 0x396) != 0x30) || ((u8) FIELD(actor, u8, 0x397) >= 3U))) {
        func_8005C7EC(actor);
        tailAction = FIELD(scratch, u32, 0x2B0);
        if (tailAction >= 2U) {
            if (tailAction >= 4U) {
                if (tailAction == 4) {
                    controllerIndex = FIELD(actor, u8, 0x398);
                    tailKeys = FIELD(actor, u16, 0x3D4);

                    controllerIndex *= 2;
                    controllerIndex += (u32)scratch;
                    if (FIELD((u8 *)controllerIndex, u16, 0x12) & tailKeys) {
                        FIELD(actor, u16, 0x3C6) = (u16) (FIELD(actor, u16, 0x3C6) + 1);
                    }
                    func_8002B38C(actor);
                    goto update_aim;
                }
            } else {
                controllerIndex = FIELD(actor, u8, 0x398);
                tailKeys = FIELD(actor, u16, 0x3D4);

                controllerIndex *= 2;
                controllerIndex += (u32)scratch;
                if (FIELD((u8 *)controllerIndex, u16, 0x1A) & tailKeys) {
                    FIELD(actor, u16, 0x3C6) = (u16) (FIELD(actor, u16, 0x3C6) + 1);
                }
            update_aim:
                func_8002A83C(actor, (u8) FIELD(actor, u16, 0x3C6));
            }
        }
    }
    func_8005B908(actor);
}
