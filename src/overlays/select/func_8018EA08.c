#include "common.h"

s32 func_8018EA08(u16 *current, u16 target, u16 step, u16 *coupled) {
    s32 initial;
    s32 distance;
    s32 movement;

    if (step == 0) {
        return 1;
    }
    initial = *current;
    distance = target - initial;
    if (distance == 0) {
        return 1;
    }
    movement = step;
    if (distance < 0) {
        movement = -movement;
    }
    /* Preserve the independent sign checks for movement and distance. */
    __asm__ volatile ("" : "=r"(distance) : "0"(distance));
    if (distance < 0) {
        distance = -distance;
    }
    /* Keep the magnitude comparison after the second sign branch. */
    __asm__ volatile ("" : "=r"(distance) : "0"(distance));
    if (distance >= step) {
        *current = initial + movement;
        if (coupled != 0) {
            *coupled -= movement >> 1;
        }
    } else {
        *current = target;
        if (coupled != 0) {
            /* The snap path subtracts half the magnitude in either direction. */
            *coupled -= distance >> 1;
        }
    }
    return 0;
}
