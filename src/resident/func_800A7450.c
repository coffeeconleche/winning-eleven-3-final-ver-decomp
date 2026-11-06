#include "common.h"
#define M(t,p,o) (*(t *)((u8 *)(p)+(o)))
extern u8 D_800FF748[];
extern u8 D_8010A326;
extern u8 selectedActorByte __asm__("0x1F8002AD");
extern u8 *ballPointer __asm__("0x1F8002F4");
extern void func_800A7F04(void);
extern s32 func_800A8B24(void);
extern void func_8009F62C(u32);
/* All three native callers pass this real unused compatibility pointer.
 * Its purpose remains unknown; MAIN uses the same pointer protocol. */
extern void func_800989B4(u8 *);
extern void func_800171C4(u32);
extern u32 func_8007BA04(u8 *);
extern void func_8004F58C(u32);
extern void func_8005A29C(u8 *);
extern s32 func_8005CE30(u32);
extern void func_8004ED28(u32);
extern void func_800AB620(s32);

void func_800A7450(void) {
    u32 outMode;
    register s32 entryZ __asm__("$2");
    s32 firstX;
    s32 pairedX;
    s32 selectedX;
    s32 absoluteEntryZ ;
    s32 entryX ;
    register s32 absoluteBoundaryZ __asm__("$3");
    s32 oppositeOffset;
    u32 maskedEntryZ ;
    s32 statusWithinRange ;
    register u32 recordOffset __asm__("$2");
    register u32 bankRemainder __asm__("$3");
    register s32 firstZBoundary __asm__("$2");
    u8 *counterAddress ;
    u32 countedByte ;
    u32 counterSide ;
    u32 counterSlot ;
    s32 selectedStatus ;
    s32 lowStatus ;
    u8 oppositeFirst;
    u8 fallbackIndex;
    u8 chosenIndex;
    u8 actorKind;
    register u32 refreshedIndex __asm__("$3");
    u8 *boundaryBall ;
    u8 *entryBall;
    register u8 *scoreCounter __asm__("$3");
    register u8 *choiceCounter __asm__("$3");
    u8 *record ;
    register u8 *base __asm__("$17");
    u8 *scratch ;

    func_800A7F04();
    base = D_800FF748;
    __asm__("" : : "r"(base));
    entryBall = ballPointer;
    entryX = M(s16, entryBall, 0x2);
    entryZ = M(s16, entryBall, 0x6);
    if (entryX < 0) {
        entryX = -entryX;
    }
    absoluteEntryZ = entryZ;
    if (entryZ < 0) {
        absoluteEntryZ = -absoluteEntryZ;
    }
    scratch = (u8 *)0x1F800000;
    entryX = (u32)(entryX & 0xFFFF) < 0x3361U;
    if (entryX == 0) {
        if (func_800A8B24() & 0xFF) {
            func_8009F62C(0x20);
            func_800989B4(ballPointer);
            if (M(u8, 0x1F8002E1, 0) == 5) {
                u8 *specialBall  = ballPointer;
                u32 specialZ ;
                *(s16 *)0x1F800294 = 0x1E;
                *(u16 *)0x1F8002BC = 0x3320;
                specialZ = M(u16, specialBall, 6);
                *(u32 *)0x1F8002C8 = 0x30;
                *(u16 *)0x1F8002BE = specialZ;
                outMode = 4;
                goto block_52;
            }
            recordOffset = (((M(u8, 0x1F8002AC, 0) % 24U) & 0xFF) * 0x3E8);

            record = recordOffset + base;
            firstX = M(s16, ballPointer, 2);
            if (M(u8, record, 0x399) != 0) {
                if (firstX >= 0) goto first_side_ready;
                goto ownership_clear;
            }
            if (firstX > 0) goto ownership_clear;
    first_side_ready:
            actorKind = M(u8, record, 0x38D);
            if ((actorKind != 1) && (actorKind != 0xC) &&
            (M(u32, scratch, 0x2B0) - 10U >= 2U)) goto ownership_default;
            recordOffset = (((((u32)M(u8, scratch, 0x2AB) & 0xFF) % 24U) & 0xFF) * 0x3E8);

            record = base + recordOffset;
            pairedX = M(s16, M(u8 *, scratch, 0x2F4), 2);
            if (M(u8, record, 0x399) != 0) {
                if (pairedX < 0) goto ownership_clear;
                goto ownership_refresh;
            }
            if (pairedX <= 0) goto ownership_refresh;
    ownership_clear:
            base[0xABDB] = 0;
            goto ownership_ready;
    ownership_refresh:
            refreshedIndex = M(u8, scratch, 0x2AC);
            __asm__("" : "=r"(refreshedIndex) : "0"(refreshedIndex));
            base[0xABDB] = 1;
            recordOffset = ((((refreshedIndex & 0xFF) % 24U) & 0xFF) * 0x3E8);

            record = base + recordOffset;
            goto ownership_ready;
    ownership_default:
            base[0xABDB] = 1;
    ownership_ready:
            if ((M(u8, scratch, 0x2A9) != 0) && (base[0xABDB] == 0)) {
                base[0xAC4F] = 0xFF;
                scoreCounter = base + M(u8, record, 0x398);
                scoreCounter += 0x8EC8;

                M(u8, scoreCounter, 0) = M(u8, scoreCounter, 0) + 1;
                counterSide = M(u8, record, 0x398);
                counterSlot = M(u8, record, 0x392);
                counterAddress = (u8 *)((counterSide * 0x16) + (u32)base);
                counterAddress += 0x88D1;

                counterAddress += counterSlot;

                countedByte = *counterAddress;
                countedByte += 1;
                *counterAddress = countedByte;
            }
            outMode = 7;
            M(u8, scratch, 0x2AD) = (u8) M(u8, record, 0x38D);
            goto block_58;
        }
        boundaryBall = M(u8 *, scratch, 0x2F4);
        M(u16, scratch, 0x2BC) = (u16) M(s16, boundaryBall, 0x2);
        M(u16, scratch, 0x2BE) = (u16) M(s16, boundaryBall, 0x6);
        selectedStatus = M(u8, scratch, 0x2A8);
        if (selectedStatus != 0) {
            bankRemainder = selectedStatus % 24U;
            bankRemainder &= 0xFF;
            recordOffset = bankRemainder * 0x3E8;

            absoluteBoundaryZ = M(s16, boundaryBall, 6);
            record = recordOffset + base;

            firstZBoundary = 0x3D2;
            __asm__("" : : "r"(firstZBoundary));
            if (absoluteBoundaryZ < 0) absoluteBoundaryZ = -absoluteBoundaryZ;
            if (absoluteBoundaryZ == firstZBoundary || absoluteBoundaryZ == 0x372) goto block_35;
            selectedStatus = M(u8, record, 0x396);
            if (selectedStatus == 5) return;
            if (selectedStatus < 5) goto block_35;
            if (selectedStatus >= 10) goto block_35;
            statusWithinRange = selectedStatus < 8;
            if (statusWithinRange == 0) return;
        }
    block_35:
        func_8009F62C(0x20);
        func_800AB620(0x518);
        M(u16, scratch, 0x294) = 7;
        if ((M(u8, scratch, 0x2E1) & 0xFF) == 5) {
            M(u16, scratch, 0x2BC) = 0x3320U;
            M(u32, scratch, 0x2C8) = 0x10;
            func_800171C4(4);
            M(u8, scratch, 0x2AD) = func_8007BA04(base + 0x3E8);
            return;
        }
        recordOffset = ((((M(u8, scratch, 0x2AC) & 0xFF) % 24U) & 0xFF) * 0x3E8);

        record = base + recordOffset;
        selectedX = M(s16, M(u8 *, scratch, 0x2F4), 2);
        if (M(u8, record, 0x399) != 0) {
            if (selectedX >= 0) {
                goto block_42;
            }
            goto block_41;
        }
        if (selectedX > 0) {
    block_41:
            func_8004F58C(1);
            func_800171C4(9);
            func_8005A29C(record);
            M(u8, scratch, 0x2AD) = func_8005CE30(M(u8, scratch, 0x2AC));
            return;
        }
    block_42:
        func_8004F58C(2);
        func_800171C4(4);
        func_8004ED28(7);
        fallbackIndex = func_8005CE30(M(u8, scratch, 0x2AC));
        M(u8, scratch, 0x2AD) = fallbackIndex;
        chosenIndex = func_8007BA04(base + ((((fallbackIndex & 0xFF) % 24U) & 0xFF) * 0x3E8));
        M(u8, scratch, 0x2AD) = chosenIndex;
        recordOffset = ((((chosenIndex & 0xFF) % 24U) & 0xFF) * 0x3E8);

        record = base + recordOffset;
        choiceCounter = base + M(u8, record, 0x398);
        choiceCounter += 0x8ED2;

        M(u8, choiceCounter, 0) = M(u8, choiceCounter, 0) + 1;
    } else {
        lowStatus = M(u8, scratch, 0x2A8);
        if (lowStatus != 0) {
            bankRemainder = lowStatus % 24U;
            bankRemainder &= 0xFF;
            recordOffset = bankRemainder * 0x3E8;

            record = recordOffset + base;

            lowStatus = M(u8, record, 0x396);
            if (lowStatus == 5) return;
            if (lowStatus == 8) return;
        }
        maskedEntryZ = absoluteEntryZ & 0xFFFF;
        if (maskedEntryZ < 0x2141U || M(u32, scratch, 0x2B0) == 6) return;
        M(u16, scratch, 0x294) = 0x1E;
        func_8009F62C(0x20);
        recordOffset = (((M(u8, scratch, 0x2AC) % 24U) & 0xFF) * 0x3E8);

        record = recordOffset + base;
        func_800AB620(0x518);
        if (M(u8, scratch, 0x2E1) == 5) {
            M(u8, scratch, 0x2AD) = (u8) M(u8, record, 0x38D);
            outMode = 4;
            if (D_8010A326 == 0) {
                M(u32, scratch, 0x2C8) = 8;
                goto block_57;
            }
            M(u32, scratch, 0x2C8) = 0x10;
    block_52:
            func_800171C4(outMode);
            selectedActorByte = func_8007BA04(base + 0x3E8);
            return;
        }
        func_8004F58C(0);
        oppositeOffset = (M(u8, record, 0x399) ^ 1) * 2;
        oppositeFirst = M(u8, scratch, oppositeOffset + 0x31E);
        if (M(u8, base + ((((oppositeFirst & 0xFF) % 24U) & 0xFF) * 0x3E8), 0x391) < 6U) {
            M(u8, scratch, 0x2AD) = (u8) M(u8, scratch, oppositeOffset + 0x31F);
        } else {
            M(u8, scratch, 0x2AD) = oppositeFirst;
        }
        func_8004ED28(6);
    block_57:
        M(u16, scratch, 0x2BC) = (u16) M(s16, M(u8 *, scratch, 0x2F4), 2);
        outMode = 3;
        M(u16, scratch, 0x2BE) = (u16) M(s16, M(u8 *, scratch, 0x2F4), 6);
    block_58:
        func_800171C4(outMode);
    }
}
