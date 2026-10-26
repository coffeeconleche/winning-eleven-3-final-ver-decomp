#include "common.h"
#define FIELD(base, type, offset) (*(type *)((base)+(offset)))
extern void func_80017178(u32);
extern void func_800171C4(u32);
extern void func_8001722C(u32);
extern void func_800179D0(void);
extern void func_80019B1C(void);
extern void func_8001DF74(s32, s32);
extern void func_8001E138(u32, u32, u32);
extern void func_8001E778(void);
extern void func_8002247C(void);
extern void func_8004FC54(u32);
extern void func_8004FD14(u32);
extern void func_8004FE30(void);
extern void func_8004FEE8(u32);
extern void func_800AB620(s32);
extern void func_80131000(void);
extern s32 func_800188B4(s32);
extern s32 func_800198E8(s32);
extern s32 func_8001E6B8(s32);
extern s32 func_8004FBC4(u32);
extern s32 func_8006F07C(u32);
extern s32 func_8006F0DC(u8, u8);
extern s32 func_800B6D78(void);
extern s32 func_80188F78(u32);
extern void func_8001CEE0(u8, u16, u32, s16, s16, u8, u8, s16);
extern void func_8001CDAC(u8, u16, u32, u16, u16, u8, u8, u16, u16, u16, u16, u8, u8, u8, u32, u16);
extern void func_800AD648(const void *, void *, u32);
extern u8 D_800C6078;
extern u8 D_800C607C[];
extern u8 D_800C607D[];
extern u8 D_800E6BEE;
extern u8 D_800E78A8[];
extern u8 D_800E7DE8;
extern u8 D_800F0420[];
extern u8 D_800F106E;
extern u8 D_800FF748[];
extern u8 D_8010A5A8[];
extern u8 D_8010C2A2;
extern u8 D_8010C328[];
extern u8 D_80134328[];
extern u8 D_801346DC[];
extern u8 D_80134A90[];
extern u16 D_800E7804;
#define selectionByte (*(u8 *)(&D_800C6078))
/* Scalar views of existing storage; no objects are defined here. */
extern volatile u8 modeSnapshot __asm__("D_800E7DE8");
#define timerSnapshot (*(u16 *)(&D_800E7804))
#define signedTimer (*(s16 *)(&D_800E7804))
extern u8 D_800E6BEC;
#define fadePhaseByte (D_800E6BEC)
extern u8 fadeSideByte __asm__("D_800E6BEC+1");

/* Global-state setup, menu animation and transition handler. */
void func_8001617C(void)
{
    u8 *flags = D_8010A5A8;
    u8 *records = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s16 leftPosition;
    s16 rightPosition;
    s32 firstTeam;
    register u32 selectionIndex __asm__("$2");
    register u32 firstTeamWord __asm__("$2");
    register u32 modeWord __asm__("$3");
    register u32 copyCount __asm__("$6");
    register u32 rowByte __asm__("$6");
    u32 rowStep;
    register u32 slotIndex __asm__("$2");
    u32 byteOffset;
    s16 biasedPosition;
    u32 fillValue;
    register u32 modeBit __asm__("$2");
    u32 timerRaw;
    u32 sentinelValue;
    register s32 soundId __asm__("$4");
    u32 controllerFlag;
    u32 textureWord;
    u16 oldTimer;
    s32 timerBelowThreshold;
    s32 phase;
    s32 rowReset;
    register s32 rowIndex __asm__("$17");
    register s32 fillIndex __asm__("$17");
    s32 phaseWord;
    s32 lineOffset;
    s32 teamOffset;
    s32 pairedTeam;
    s32 firstRowOffset;
    s32 wideRowOffset;
    s32 secondRowOffset;
    s32 secondTeam;
    u32 counterNext;
    u32 counterOld;
    u32 counterTest;
    u32 stateSnapshot;
    u32 phaseByteWord;
    u32 phaseNext;
    u32 one;
    u32 timerNext;
    u32 menuCountdown;
    u32 gameCountdown;
    register u32 timerSetting __asm__("$2");
    u32 copyTeam;
    register u32 secondLookup __asm__("$3");
    u32 firstLookup;
    u32 copyOffset;
    register u32 nextState __asm__("$2");
    u8 green;
    u8 blue;
    register u8 *firstRow __asm__("$4");
    register u8 *wideRow __asm__("$4");
    register u8 *secondRow __asm__("$4");
    register u8 *movingRow __asm__("$4");
    register u8 *resetRow __asm__("$4");
    register u8 *teamDestination __asm__("$5");
    register u8 *lineDestination __asm__("$5");
    u8 *teamScratch;

    switch (D_8010C2A2) {
    case 0:
        func_8001E138(0xFF, 0xFF, 0xFF);
        func_8001DF74(0x180, 0x1E0);
        func_8001CEE0(1, 0x4C, 0, 0, 0, 0x1F, 0, 1);
        func_800179D0();
        D_800E7804 = 0;
        nextState = D_8010C2A2 + 1;
        goto store_next_state;
    case 1:
        timerNext = D_800E7804 + 1;
        D_800E7804 = timerNext;
        if ((s16) timerNext >= 8) {
            func_8006F07C(8);
        }
        if ((s16) D_800E7804 >= 0xF0) {
            D_8010C2A2 += 1;
            func_800B6D78();
            return;
        }
    default:
        return;
    case 2:
        if (func_8006F0DC(0x10, 0) != 0) {
            func_8004FC54(0);
            func_8001DF74(0x180, 0xF0);
            D_8010C2A2 = 4;
            D_800E7804 = 0;
            return;
        }
        break;
    case 4:
        oldTimer = timerSnapshot;

        D_800E7804 = oldTimer+1;
        timerBelowThreshold = (s16)oldTimer<0x21;
        if (timerBelowThreshold == 0) {
            func_8001E138(0, 0, 0);
            func_800198E8(2);
            if (func_80188F78(0) != 0) {
                func_80188F78(1);
            }
            *(u8 *)(scratch+0x330) = 0;
            FIELD(records, u16, 0xABD6) = 0;
            func_8004FC54(0);
            D_8010C2A2 = 8;
            return;
        }
        break;
    case 8:
        if (func_8006F0DC(0x10, 0) != 0) {
            *(u32 *)(scratch+0x19C) = 1;
            *(u32 *)(scratch+0x198) = 0;
            func_8001CEE0(1, 0x4A, 0x01000000, -8, 4, 0xC, 0xFC, 0);
            func_8001CEE0(0x30, 0x2F, 0x01000000, -4, 4, 0xD, 0xFB, 1);
            func_8001CEE0(0x31, 0x2F, 0x01000000, 0x7C, 4, 0xE, 0xFB, 1);
            func_8001CEE0(0x32, 0x2F, 0x01000000, 0xFC, 4, 0xF, 0xFB, 1);
            func_8001CEE0(0x10, 0xA3, 0x01000000, 0, 0, 0xC, 0xFC, 0);
            func_8001CEE0(0x11, 0xA4, 0x01000000, 0, 0, 0xB, 0xFC, 0);
            func_8001CEE0(0x24, 0xA1, 0x41000000, -0x1B0, 0, 0xC, 0xFC, 1);
            func_8001CEE0(0x25, 0xA2, 0x41000000, -0x1B0, 0, 0xB, 0xFC, 1);
            func_8001CEE0(0x26, 0xA1, 0x41000000, 0x1B0, 0, 0xC, 0xFC, 1);
            func_8001CEE0(0x27, 0xA2, 0x41000000, 0x1B0, 0, 0xB, 0xFC, 1);
            func_8001CEE0(0x20, 0x9F, 0x41000000, -0x540, 0, 0xC, 0xFC, 1);
            func_8001CEE0(0x21, 0xA0, 0x41000000, -0x540, 0, 0xB, 0xFC, 1);
            func_8001CEE0(0x22, 0x9F, 0x41000000, 0x540, 0, 0xC, 0xFC, 1);
            func_8001CEE0(0x23, 0xA0, 0x41000000, 0x540, 0, 0xB, 0xFC, 1);
            func_800AB620(0x200);
            stateSnapshot = D_8010C2A2;

            D_800E7804 = 0x4B0;
            fadePhaseByte = 0U;
            fadeSideByte = 0U;
            *(u16 *)(scratch+0x294) = 0U;
            D_8010C2A2 = stateSnapshot+1;
            return;
        }
        break;
    case 9:
        phaseWord = fadeSideByte;

        if (phaseWord<0) goto phase9_common;
        if (phaseWord>=2) {
            one = 1;
            if (phaseWord==2) goto phase9_transitions;
            goto phase9_common;
        }
        rowIndex = 0;
        textureWord = 0x01000000;

    animate_row:
        rowByte = fadeSideByte;
        __asm__("" : : "r"(rowByte));
        /* Preserve the initialized full-word index lifetime. */
        rowStep = rowByte;
        __asm__("" : "=r"(rowStep) : "0"(rowStep));
        slotIndex = rowStep*4+0x20;

        slotIndex = rowIndex+slotIndex;
        byteOffset = slotIndex*0x28+0x5DC0;

        movingRow = records+byteOffset;
        if (rowIndex < 2) {
            leftPosition = FIELD(movingRow, s16, 0x10);
            __asm__("" : : "r"((s32)leftPosition));
            rowStep *= 2;
            if ((-7 - ((s32)rowStep)) >= leftPosition) {
                biasedPosition = leftPosition+7;

                FIELD(movingRow, s16, 0x10) = (s16)(biasedPosition+(s32)rowStep);
            }
        } else {
            rightPosition = FIELD(movingRow, s16, 0x10);
            rowStep = rowStep*2;
            if (rightPosition >= (((s32)rowStep) + 7)) {
                biasedPosition = rightPosition-7;

                FIELD(movingRow, s16, 0x10) = (s16)(biasedPosition-(s32)rowStep);
            } else if (rowIndex == 2) {
                rowReset = 0;
                do {
                    slotIndex = fadeSideByte;
                    slotIndex = slotIndex*4+0x20;

                    slotIndex = rowReset+slotIndex;
                    byteOffset = slotIndex*0x28+0x5DC0;

                    resetRow = records+byteOffset;
                    FIELD(resetRow, u32, 0x8) = textureWord;
                    if (rowReset >= 2) {
                        FIELD(resetRow, u8, 0x4) = 0;
                    }
                    rowReset += 1;
                } while (rowReset < 4);
                fadeSideByte = (u8) (fadeSideByte + 1);
            }
        }

        rowIndex += 1;
        if (rowIndex < 4) {
            goto animate_row;
        }

        goto phase9_common;
    phase9_transitions:

        counterOld = *(u16 *)(scratch+0x294);

        counterNext = counterOld+1;
        phaseByteWord = fadePhaseByte;

        phase = phaseByteWord & 0xFF;
        *(u16 *)(scratch+0x294) = counterNext;
        if (phase==one) goto phase9_fade_in;
        if (phase<2) {
            if (phase==0) goto phase9_create;
            goto phase9_common;
        }
        if (phase==phaseWord) goto phase9_fade_out;
        goto phase9_common;
    phase9_create:
        counterTest = (u16)counterNext;

        if (counterTest >= 3U) {
            phaseNext = phaseByteWord+1;

            fadePhaseByte = (u8)phaseNext;
            func_8001CDAC(0, 4, 0x50000000, 0, 0, 6, 0, 0x7000, 0x7000, 0, 0, 0, 0, 0, 0, one);
        }
        goto phase9_common;
    phase9_fade_in:
        if ((u32) (FIELD(records, u8, 0x5DD6) & 0xFF) < 0x80U) {
            FIELD(records, u8, 0x5DD6) = (u8) (FIELD(records, u8, 0x5DD6) + 0x18);
            green = FIELD(records, u8, 0x5DD7) + 0x18;
            blue = FIELD(records, u8, 0x5DD8) + 0x18;
            goto store_palette_channels;
        }
        phaseNext = phaseByteWord+1;

        fadePhaseByte = (u8)phaseNext;
        fillIndex = 0;
        fillValue = 1;

        firstRowOffset = 0x6040;
        do {
            firstRow = records + firstRowOffset;
            firstRowOffset += 0x28;
            fillIndex += 1;
            FIELD(firstRow, u8, 0x4) = fillValue;
            FIELD(firstRow, s16, 0x10) = 0;
            FIELD(firstRow, s16, 0x12) = 0;
        } while (fillIndex < 2);
        fillIndex = 0;
        fillValue = 0x01000000;

        wideRowOffset = 0x62C0;
        do {
            wideRow = records + wideRowOffset;
            wideRowOffset += 0x28;
            fillIndex += 1;
            FIELD(wideRow, s16, 0x10) = 0;
            FIELD(wideRow, u32, 0x8) = fillValue;
        } while (fillIndex < 8);
        fillIndex = 0;
        fillValue = 1;

        secondRowOffset = 0x6040;
        do {
            secondRow = records + secondRowOffset;
            secondRowOffset += 0x28;
            fillIndex += 1;
            FIELD(secondRow, u8, 0x4) = fillValue;
            FIELD(secondRow, s16, 0x10) = 0;
            FIELD(secondRow, s16, 0x12) = 0;
        } while (fillIndex < 2);
        goto phase9_common;
    phase9_fade_out:
        if (FIELD(records, u8, 0x5DD6) != 0) {
            FIELD(records, u8, 0x5DD6) = (u8) (FIELD(records, u8, 0x5DD6) - 0x18);
            green = FIELD(records, u8, 0x5DD7) - 0x18;
            blue = FIELD(records, u8, 0x5DD8) - 0x18;
        store_palette_channels:
            FIELD(records, u8, 0x5DD7) = green;
            FIELD(records, u8, 0x5DD8) = blue;
        } else {
            phaseNext = phaseByteWord+1;

            fadePhaseByte = (u8)phaseNext;
            FIELD(records, u8, 0x5DC4) = 0;
        }
        goto phase9_common;

    phase9_common:

        if ((u8) fadePhaseByte >= 2U) {
            FIELD(records, u8, 0x5DEC) = (s8) (((s32) *(s32 *)(scratch+0x290) >> 5) & 1);
        }
        if (func_8006F07C(8) != 0) {
            if ((*(u16 *)(scratch+0x234) | *(u16 *)(scratch+0x23C)) & 0x820) {
                if ((u8) fadeSideByte >= 2U) {
                    if ((u8) fadePhaseByte >= 3U) {
                        func_800AB620(0x528);
                        D_8010C2A2 = 0x10;
                        *(u8 *)(scratch+0x2E6) = D_800E6BEE;
                        return;
                    }
                    goto menu_tick;
                }
                fadeSideByte = 2U;
                goto menu_tick;
            }
        menu_tick:
            menuCountdown = D_800E7804 - 1;
            D_800E7804 = menuCountdown;
            if ((menuCountdown << 16) == 0) {
                func_800AB620(6);
                D_800F106E = 1;
                nextState = D_8010C2A2 + 1;
                goto store_next_state;
            }
        }
        break;
    case 10:
        if ((func_8004FBC4(0) != 0) && (func_800198E8(7) & 0xFF)) {
            func_80131000();
            func_8004FD14(0);
            func_8001E138(0, 0, 0);
            goto advance_state;
        }
        break;
    case 11:
        if ((u8) D_800C6078 >= 0xDU) {
            D_800C6078 = 0;
        }
        selectionIndex = selectionByte;

        FIELD(records, u8, 0x8F16) = 0;
        FIELD(records, u8, 0x8F17) = 0;
        selectionIndex *= 2;
        firstLookup = *(D_800C607C + selectionIndex);
        __asm__("" : : "r"(firstLookup));
        selectionIndex = selectionByte;
        selectionIndex *= 2;
        *(u8 *)(scratch+0x2DD) = firstLookup;
        secondLookup = *(volatile u8 *)(D_800C607D + selectionIndex);
        firstTeamWord = *(volatile u8 *)(scratch+0x2DD);
        __asm__("" : : "r"(firstTeamWord));
        firstTeam = firstTeamWord & 0xFF;
        *(u8 *)(scratch+0x2DE) = secondLookup;
        if (firstTeam != 3) {
            secondTeam = secondLookup & 0xFF;
            if (firstTeam == 4) {
                pairedTeam = 6;
                goto compare_team_pair;
            }
        } else {
            secondTeam = secondLookup & 0xFF;
            pairedTeam = 0x21;
        compare_team_pair:
            if (secondTeam == pairedTeam) {
                FIELD(records, u8, 0x8F16) = 0;
                FIELD(records, u8, 0x8F17) = 3;
            }
        }
        selectionIndex = selectionByte;
        *(u8 *)(scratch+0x2E1) = 0;
        D_800C6078 = selectionIndex+1;
        *(u8 *)(scratch+0x2E3) = func_8001E6B8(6);
        *(u8 *)(scratch+0x2E5) = func_8001E6B8(2);
        *(u8 *)(scratch+0x2E4) = 0;
        FIELD(records, u8, 0x8F23) = 0;
        modeWord = modeSnapshot;
        *(u8 *)(scratch+0x2E2) = 4;
        if ((modeWord >> 1) != 0) {
            rowIndex = 0;
            if (modeWord != 3) {
                if (*(u8 *)(scratch+0x2E6) == 3) {
                    *(u8 *)(scratch+0x2E6) = 4;
                } else {
                    *(u8 *)(scratch+0x2E6) = 3;
                    goto initialize_copy_rows;
                }
            }
        } else {
        initialize_copy_rows:
            rowIndex = 0;
        }
        lineOffset = 0;
        teamOffset = 0;
        do {
            teamDestination = teamOffset + D_8010C328;
            copyCount = 0x108;
            __asm__("" : : "r"(copyCount));
            teamOffset += 0x108;
            teamScratch = (rowIndex + scratch);
            copyTeam = FIELD(teamScratch, u8, 0x2DD);

            rowIndex += 1;
            copyOffset = copyTeam*0x108;

            func_800AD648((u8 *)(copyOffset+(u32)D_80134A90), teamDestination, copyCount);
            func_800AD648((FIELD(teamScratch, u8, 0x2DD) * 0x16) + D_80134328, lineOffset + D_800E78A8, 0x16);
            lineDestination = lineOffset + D_800F0420;
            copyCount = 0x16;
            copyTeam = FIELD(teamScratch, u8, 0x2DD);
            __asm__("" : : "r"(copyCount));
            lineOffset += 0x16;
            copyOffset = copyTeam*0x16;

            func_800AD648((u8 *)(copyOffset+(u32)D_801346DC), lineDestination, copyCount);
        } while (rowIndex < 2);
        func_8002247C();
        func_80019B1C();
        func_8001722C(0);
        func_800171C4(0);
        modeBit = D_800E7DE8 & 1;

        if (modeBit==0) timerSetting = 0x384;
        else timerSetting = 0x708;
        D_800E7804 = timerSetting;
        timerSetting = 0xE;
        D_8010C2A2 = timerSetting;

        return;
    case 14:
        func_8001E778();
        if ((*(u8 *)(scratch+0x29C) != 0) || ((u8) *(u8 *)(scratch+0x29A) >= 2U)) {
            func_8001CEE0(1, 0x41, 0x60000000, 0, -8, 0xA, 0, 1);
            FIELD(records, u8, 0x5DEC) = (s8) (((s32) *(s32 *)(scratch+0x290) >> 4) & 1);
        }
        timerRaw = D_800E7804;

        *(u8 *)(scratch+0x2A1) = 0;
        *(u8 *)(scratch+0x2A0) = 0;
        gameCountdown = timerRaw - 1;
        D_800E7804 = gameCountdown;
        if ((gameCountdown << 16) == 0) {
            sentinelValue = 0x7FFF;
            nextState = D_8010C2A2;
            *(u16 *)(scratch+0x2B8) = sentinelValue;
            nextState += 1;
            goto store_next_state;
        }
        if ((*(u16 *)(scratch+0x234) | *(u16 *)(scratch+0x23C)) & 0x820) {
            controllerFlag = *(u8 *)(scratch+0x29C);

            soundId = 0x528;
            if ((controllerFlag != 0) || ((u8) *(u8 *)(scratch+0x29A) >= 2U)) {
                *(u16 *)(scratch+0x2B8) = 0x7FFF;
                func_800AB620(soundId);
                goto advance_state;
            }
        }
        break;
    case 15:
        if (func_8004FBC4(0) != 0) {
            func_800AB620(0x11);
            func_800AB620(0xF);
            func_8004FC54(0);
            *(u32 *)(scratch+0x198) = 0;
            *(u32 *)(scratch+0x19C) = 1;
            __asm__("" : : "m"(*(u32 *)(scratch+0x198)), "m"(*(u32 *)(scratch+0x19C)));
            func_800179D0();
            if (signedTimer == 0) {
                FIELD(records, u16, 0xABD6) = 0xFF;
                *(u8 *)(scratch+0x330) = 1;
                D_8010C2A2 = 0;
            } else {
                func_8001E138(0, 0, 0);
                D_8010C2A2 = 8;
            }
            D_800E7DE8 += 1;
            return;
        }
        break;
    case 16:
        if (func_8004FBC4(0) != 0) {
            func_8004FE30();
        advance_state:
            nextState = D_8010C2A2+1;
        store_next_state:

            D_8010C2A2 = nextState;
            return;
        }
        break;
    case 17:
        func_8004FEE8(0xA0);
        if (func_800188B4((D_800E7DE8 & 1) + 0xC7) != 0) {
            D_8010C2A2 += 1;
            if (D_800E7DE8 & 1) {
                flags[9] = (u8) ((flags[9] & 0xF3) | 4);
                return;
            }
            flags[9] = (u8) (flags[9] & 0xF3);
            return;
        }
        break;
    case 18:
        D_800E7804 = 0;
        func_8004FD14(0);
        *(u8 *)(scratch+0x2E1) = 0x63;
        func_80017178(4);
        break;
    }
}
