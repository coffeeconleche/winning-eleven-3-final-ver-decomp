#include "common.h"

extern u8 D_800FF748[];
/* Existing scratch-word view, also used by func_80097D6C. No storage emitted. */
extern s32 D_1F8001FC __asm__("0x1F8001FC");
extern u8 D_80105F35;
extern u8 D_80105FC5;
extern u8 D_80106055;
extern u8 D_801060E5;
extern u8 D_80106175;
extern u8 D_80106205;
extern u8 D_80106295;
extern u8 D_80106325;
extern u8 D_801063B5;
extern u8 D_80106445;
extern u8 D_801064D5;
extern u8 D_80106565;
extern u8 D_801065F5;
extern u8 D_80106685;
extern u8 D_80106715;
extern u8 D_801067A5;
extern u8 D_80106835;
extern u8 D_8010A328;

/* Existing address/access views; complete native owners remain unrecovered. */
void func_8001C5A8(void)
{
    u8 *base = D_800FF748;
    u8 *scratch;
    s32 margin;
    s32 upperBound;
    s32 marginMask;
    u8 direction;
    s32 positionNow;
    s32 positionLast;
    s32 absPosition;
    s32 absMotion;
    s32 absMotionLast;
    s32 mode;
    u32 viewMode;
    u8 *actor;
    u8 *indicator;

    mode = *(u8 *)0x1F8001EC;
    scratch = (u8 *)0x1F800000;
    switch (mode) {
    case 0:
    default:
        D_8010A328 = 0;
        D_80105F35 = 0;
        D_80105FC5 = 0;
        D_80106055 = 0;
        D_801060E5 = 0;
        D_80106175 = 0;
        D_80106205 = 0;
        D_80106295 = 0;
        D_80106325 = 0;
        D_801063B5 = 0;
        D_80106445 = 0;
        D_801064D5 = 0;
        D_80106565 = 0;
        D_801065F5 = 0;
        D_80106685 = 0;
        D_80106715 = 0;
        D_801067A5 = 0;
        D_80106835 = 0;
        return;
    case 3:
        D_8010A328 = 1;
        D_80105F35 = 0;
        D_80105FC5 = 0;
        D_80106055 = 0;
        D_801060E5 = 0;
        D_80106175 = 0;
        D_80106205 = 0;
        D_80106295 = 0;
        D_80106325 = 0;
        D_801063B5 = 0;
        D_80106445 = 0;
        D_801064D5 = 0;
        D_80106565 = 1;
        D_801065F5 = 0;
        D_80106685 = 0;
        D_80106715 = 0;
        D_801067A5 = 0;
        D_80106835 = 1;
        if (*(s32 *)0x1F800204 > 0) {
            D_80106715 = 0;
            D_801067A5 = 1;
        } else {
            D_80106715 = 1;
            D_801067A5 = 0;
        }
        if (*(s32 *)(scratch + 0x1FC) > 0) {
            base[0x6F3D] = 0;
            base[0x6EAD] = 1;
            base[0x6BDD] = 1;
            base[0x6C6D] = 0;
        } else {
            base[0x6F3D] = 1;
            base[0x6EAD] = 0;
            base[0x6BDD] = 0;
            base[0x6C6D] = 1;
        }
        direction = *(u8 *)(scratch + 0x2E7);
        switch (direction & 255) {
        case 0x0:
            base[0x6EAD] = 1;
            return;
        case 0x80:
            base[0x6F3D] = 1;
            return;
        }
        break;
    case 1:
        indicator = base + 0x6F40;
        viewMode = *(u8 *)0x1F8002E6;
        D_8010A328 = 1;
        D_80105F35 = 0;
        D_80105FC5 = 0;
        D_80106055 = 0;
        D_801060E5 = 0;
        D_80106175 = 0;
        D_80106205 = 0;
        D_80106295 = 0;
        D_80106325 = 0;
        D_801063B5 = 0;
        D_80106445 = 0;
        D_801064D5 = 0;
        D_80106565 = 1;
        D_801065F5 = 0;
        D_80106685 = 0;
        D_80106715 = 0;
        D_801067A5 = 1;
        D_80106835 = 1;
        marginMask = -(viewMode == 3) & 0x900;
        if (viewMode < 4U) {
            s32 position;
            /* Preserve the actual 0/0x900 margin through the branch. */
            __asm__("" : "=r"(marginMask) : "0"(marginMask));
            margin = marginMask;
            upperBound = 0x1BE2 - margin;
            position = D_1F8001FC;
            if (position < upperBound) {
                indicator = base + 0x6BE0;
                D_80106685 = 1;
                D_801063B5 = 1;
            }
            if ((margin - 0x1BE2) < position) {
                indicator = base + 0x6B50;
                D_801065F5 = 1;
                D_80106325 = 1;
            }
            if (*(s32 *)0x1F800204 < -0x1000) {
                indicator[0x8D] = 1;
                positionNow = D_1F8001FC;
                D_80106175 = 1;
                absPosition = positionNow;
                if (positionNow < 0) {
                    /* Word negation wraps, including INT_MIN; never signed unary minus. */
                    __asm__("" : "=r"(absPosition) : "0"(absPosition));
                    absPosition = (s32)(0u - (u32)absPosition);
                }
                if (absPosition < 0x1BE2) {
                    actor = *(u8 **)0x1F8002F4;
                    absMotion = *(s32 *)(actor + 0xC);
                    if (absMotion < 0) {
                        absMotion = (s32)(0u - (u32)absMotion);
                    }
                    if (absMotion < 0x2E00) {
                        D_80105F35 = 1;
                        D_80105FC5 = 1;
                        D_80106445 = 1;
                        if (*(s16 *)(actor + 2) < -0xA00) {
                            D_801064D5 = 1;
                        }
                        goto block_34;
                    }
                } else {
                    if (positionNow < 0) {
                        D_80105FC5 = 1;
                        D_801064D5 = 1;
                    } else {
                        D_80105F35 = 1;
                        D_80106445 = 1;
                    }
                    goto block_34;
                }
            } else {
                indicator[0x8D] = 0;
                goto block_34;
            }
        } else {
            D_80106715 = 0;
block_34:
            absMotionLast = *(s32 *)(*(u8 **)(scratch + 0x2F4) + 0xC);
            if (absMotionLast < 0) {
                absMotionLast = (s32)(0u - (u32)absMotionLast);
            }
            if (absMotionLast < 0x2E00) {
                positionLast = *(s32 *)(scratch + 0x1FC);
                if (positionLast < -0xE00) {
                    base[0x699D] = 1;
                    return;
                }
                if (positionLast >= 0xE01) {
                    base[0x690D] = 1;
                }
            } else {
                return;
            }
        }
        break;
    }
}
