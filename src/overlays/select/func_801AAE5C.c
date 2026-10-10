#include "common.h"

extern u8 D_8011CB68[];
extern u8 D_801D81D0[];
extern s32 func_8001E6B8(s32);

/* Only the low byte of the incoming argument is observable; its original C ABI type is unknown. */
u8 *func_801AAE5C(u8 mode)
{
    s32 second = 0;
    u32 player0;
    u32 player1;
    u8 players[2];
    u8 ratings[2];
    u8 rolls[2];
    /* The two observed byte slots are eight bytes apart; the intervening bytes are never accessed. */
    struct {
        u8 input;
        u8 padding[7];
        u8 selected;
    } state;
    u8 other;
    register u32 lookup __asm__("$2");
    u32 selectedValue;
    register u32 rating0 __asm__("$4");
    u32 rating1;
    s32 rawSide;
    register s32 side __asm__("$21");
    register s32 rawDifference __asm__("$23");
    u32 difference;
    u8 *ratingCursor;
    register s32 rollLimit __asm__("$4");
    s32 first = 0;
    register s32 resultKind __asm__("$22");
    u32 finalDifference;
    u32 finalKind;
    s32 attempts;

    player0 = *(u8 *)0x1F8002DD;
    player1 = *(u8 *)0x1F8002DE;
    state.input = mode;
    selectedValue = 255;
    state.selected = selectedValue;
    players[0] = player0;
    __asm__("" : "=r"(player0) : "0"(player0));
    lookup = D_8011CB68[(u8)player0];
    rating0 = lookup >> 1;
    ratings[0] = rating0;
    other = 255;
    players[1] = player1;
    __asm__("" : "=r"(player1) : "0"(player1));
    lookup = D_8011CB68[(u8)player1];
    rating1 = lookup >> 1;
    ratings[1] = rating1;
    attempts = 0;

    if (rating0 >= rating1) {
        rawDifference = rating0 - rating1;
        rawSide = 1;
    } else {
        rawDifference = rating1 - rating0;
        rawSide = 0;
    }
    do {
        side = rawSide & 0xFF;
        ratingCursor = &ratings[side];
        difference = rawDifference & 0xFF;
        rollLimit = difference + 3;
        rolls[0] = func_8001E6B8(*ratingCursor + rollLimit);
        rolls[1] = func_8001E6B8(*ratingCursor + 3);
        selectedValue = state.input;
        lookup = selectedValue - 1;
    } while ((u8)lookup < 2 && (rating1 = rolls[0]) == rolls[1]);

    if (rolls[0] == rolls[1]) {
        resultKind = 3;
        if (func_8001E6B8(10) < 2)
            first = func_8001E6B8(4);
        else
            first = func_8001E6B8(2);
    } else if (rolls[1] < rolls[0]) {
        /* Preserve the measured lifetime of the real players base across this branch. */
        register u8 *playerBase __asm__("$2") = players;
        state.selected = playerBase[side];
        resultKind = 1;
        other = playerBase[rawSide ^ 1];
        do {
            s32 checkedAttempts = attempts++;
            if ((u8)checkedAttempts >= 101) {
                first = 3;
                second = 0;
            } else {
                first = func_8001E6B8(((u8)rawDifference + 1) / 4 + 1);
                second = func_8001E6B8(3);
            }
        } while ((u8)first <= (u8)second);
        __asm__("" : : "r"(rawSide), "r"(side));
    } else {
        state.selected = players[rawSide ^ 1];
        other = players[side];
        resultKind = 1;
        if (difference >= 9) {
            do {
                s32 checkedAttempts = attempts++;
                if ((u8)checkedAttempts >= 101) {
                    first = 1;
                    second = 0;
                } else {
                    first = func_8001E6B8(2) + 1;
                    second = func_8001E6B8(2);
                }
            } while ((u8)first <= (u8)second);
        } else if (difference >= 4) {
            do {
                s32 checkedAttempts = attempts++;
                if ((u8)checkedAttempts >= 101) {
                    first = 1;
                    second = 0;
                } else {
                    first = func_8001E6B8(3) + 1;
                    second = func_8001E6B8(3);
                }
            } while ((u8)first <= (u8)second);
        } else {
            do {
                s32 checkedAttempts = attempts++;
                if ((u8)checkedAttempts >= 101) {
                    first = 2;
                    second = 1;
                } else {
                    first = func_8001E6B8(4) + 1;
                    second = func_8001E6B8(3);
                }
            } while ((u8)first <= (u8)second);
        }
        __asm__("" : : "r"(rawSide), "r"(difference));
    }

    rollLimit = state.input;
    switch (rollLimit) {
    case 0:
        finalDifference = (u8)rawDifference;
        if (finalDifference < 4) {
            if (func_8001E6B8(10) >= 4)
                break;
        } else if (finalDifference < 6) {
            if (func_8001E6B8(10) >= 3)
                break;
        } else if (finalDifference < 11) {
            if (func_8001E6B8(10) >= 2)
                break;
        } else {
            break;
        }
        {
            resultKind = 3;
            first = func_8001E6B8(2);
        }
        break;
    case 1:
        break;
    case 2:
        first = 1;
        second = 0;
        break;
    }

    finalKind = (u8)resultKind;
    if (finalKind == 3) {
        D_801D81D0[0] = 3;
        D_801D81D0[3] = first;
    } else {
        lookup = 1;
        {
            /* Capture the actual output byte before the stores, matching its observed allocation. */
            register u32 selectedOutput __asm__("$5") = state.selected;
            D_801D81D0[0] = lookup;
            D_801D81D0[2] = other;
            D_801D81D0[3] = first;
            D_801D81D0[4] = second;
            D_801D81D0[1] = selectedOutput;
        }
    }
    __asm__("" : : "r"(resultKind), "r"(rawDifference));
    return D_801D81D0;
}
