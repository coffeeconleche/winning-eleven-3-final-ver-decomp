#include "common.h"
extern u8 D_800FF748[], D_80108668, D_8010A2E9;
extern u8 D_801DA06B, D_801DA069, D_801DA06A, D_801DA068;
extern s16 D_801DA5D0, D_801DA5D2, D_801DA5D4, D_801DA5D6;

/* Access views only: the original field meanings and source types are unknown. */
void func_801C19EC(void (*callback)(void)) {
    u8 *base = D_800FF748;
    u32 mode = D_80108668;
    /* Empty identity preserves base-relative reads rather than folding absolute symbols. */
    __asm__("" : "=r"(base) : "0"(base));
    D_801DA06B = 0;
    D_801DA069 = 0;
    D_801DA06A = 0;
    D_801DA068 = 0;
    if (mode == 3) {
        D_801DA5D0 = 0;
        D_801DA5D2 = 0;
        D_801DA5D4 = 3;
        D_801DA5D6 = 3;
    } else {
        s16 *firstField = &D_801DA5D0;
        *firstField = 0;
        D_801DA5D4 = 4;
        D_801DA5D6 = 4;
        D_801DA5D2 = 0;
        if (mode >= 5) {
            /* Keep the initial byte and word update temporary in their measured roles. */
            register u32 first __asm__("$3") = base[0xAB80];
            u32 target = D_8010A2E9;
            u32 displacement;
            register u32 previous __asm__("$2");
            *firstField = 1;
            if (first != target) {
                displacement = 0xAB80;
                do {
                    u32 incremented;
                    u8 *entry;
                    /* Explicit word updates retain LHU/SH order and signed halfword indexing. */
                    previous = (u16)*firstField;
                    incremented = previous + 1;
                    entry = base + (s16)previous + displacement;
                    *firstField = incremented;
                    previous = *entry;
                } while (previous != target);
            }
            {
                s16 *secondField = &D_801DA5D0;
                register u32 secondTarget __asm__("$3");
                u32 oldFirst = (u16)*secondField;
                previous = (u16)D_801DA5D2;
                *secondField = oldFirst - 1;
                D_801DA5D2 = previous + 1;
                previous = *(base + (s16)previous + 0xAB80);
                secondTarget = base[0xABA0];
                secondField++;
                if (previous != secondTarget) {
                    u32 loopTarget;
                    displacement = 0xAB80;
                    loopTarget = secondTarget;
                    /* Keep the second target capture after its address setup. */
                    __asm__("" : : "r"(loopTarget));
                    do {
                        u32 incremented;
                        u8 *entry;
                        previous = (u16)*secondField;
                        incremented = previous + 1;
                        entry = base + (s16)previous + displacement;
                        *secondField = incremented;
                        previous = *entry;
                    } while (previous != loopTarget);
                }
            }
            {
                s16 *lastField = &D_801DA5D2;
                *lastField = (u16)*lastField - 1;
            }
        }
        {
            s16 *field = &D_801DA5D0;
            /* Preserve the initial signed bound, byte limit, and reused loop-limit roles. */
            register s32 extra __asm__("$5");
            register s32 limit __asm__("$6");
            s32 firstValue = *field;
            /* Retain the first signed halfword read before the following bound read. */
            __asm__ volatile("" : : "r"(firstValue) : "memory");
            extra = D_801DA5D4;
            limit = base[0x8F20];
            if (firstValue + extra > limit) {
                s32 loopExtra = extra;
                register s32 loopLimit __asm__("$5") = limit;
                u32 next;
                do {
                    /* Store the wrapped halfword before its signed comparison; reread each turn. */
                    next = (u16)*field - 1;
                    *field = next;
                    next = (s16)next;
                    next += loopExtra;
                } while ((s32)next > loopLimit);
            }
        }
        {
            s16 *field = &D_801DA5D2;
            /* Preserve the initial signed bound, byte limit, and reused loop-limit roles. */
            register s32 extra __asm__("$5");
            register s32 limit __asm__("$6");
            s32 firstValue = *field;
            /* Retain the first signed halfword read before the following bound read. */
            __asm__ volatile("" : : "r"(firstValue) : "memory");
            extra = D_801DA5D6;
            limit = base[0x8F20];
            if (firstValue + extra > limit) {
                s32 loopExtra = extra;
                register s32 loopLimit __asm__("$5") = limit;
                u32 next;
                do {
                    /* Store the wrapped halfword before its signed comparison; reread each turn. */
                    next = (u16)*field - 1;
                    *field = next;
                    next = (s16)next;
                    next += loopExtra;
                } while ((s32)next > loopLimit);
            }
        }
        callback();
    }
}
