#include "common.h"

/* Only the accessed descriptor prefix is known; its larger role is unknown. */
typedef struct {
    u16 half[4];
    u8 bytes[12];
} CBABFields20;

extern u8 D_800FF748[], D_801D59A4, D_801DAE50, D_801D8FA0, D_801D92DB;
extern u16 D_801DADB4, D_801DADB8, D_8010A5A4;
extern u8 *D_801D5874;
extern CBABFields20 D_801D8DA8;

/* Word/pointer caller ABI views retain the measured supplied arguments;
 * they do not establish the original complete helper prototypes. */
extern u32 func_8006EC80(u32);
extern void func_800AB620(s32), func_800171C4(u32), func_800B4958(s32, s32);
extern void func_801941E0(u32, u32, CBABFields20 *, u32, u32, u32);
extern void func_801942E0(u32, void *, s32, s32, s32, s32, s32, s32,
    s32, s32, s32, s32);

void func_801CBAB8(void)
{
    /* Retain 32 otherwise-unused local bytes for the measured 96-byte frame.
     * Removing this array changes only stack adjustment and save/restore
     * offsets. No array access is emitted; the original purpose is unknown. */
    u32 frameReserve[8];
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    CBABFields20 *record = &D_801D8DA8;
    s32 mode = scratch[0x29B];
    u32 current;
    s32 button, changed, coordinate;
    s32 audio;
    switch (mode) {
    case 0: {
        /* These two measured bindings and four input fences preserve the
         * scratch/counter/coordinate snapshot order without instructions. */
        register u32 oldXCapture __asm__("$4");
        u32 oldYCapture;
        register u32 nextCapture __asm__("$2");
        *(s16 *)&record->half[1] = -44;
        record->half[2] = 4;
        record->half[3] = 4;
        record->bytes[0] = 32;
        record->bytes[1] = 32;
        record->bytes[2] = 96;
        record->half[0] = 0;
        func_801941E0(2, 0x40000000, record, 0, 2, 1);
        nextCapture = 135;
        scratch[0x2A2] = nextCapture;
        __asm__ volatile ("" : : "r" (nextCapture));
        oldXCapture = *(u16 *)(base + 0xAC18);
        D_801D59A4 = 0;
        __asm__ volatile ("" : : "r" (oldXCapture));
        nextCapture = scratch[0x29B];
        __asm__ volatile ("" : : "r" (nextCapture));
        oldYCapture = *(u16 *)(base + 0xAC1A);
        nextCapture++;
        D_801DADB4 = oldXCapture;
        D_801DADB8 = oldYCapture;
        __asm__ volatile ("" : : "r" (oldYCapture));
        scratch[0x29B] = nextCapture;
    }
        /* State 0 deliberately continues through the state-1 update. */
    case 1:
        D_801D59A4++;
        current = record->half[2];
        if (current < 304) {
            record->half[2] = current + 30;
            goto submit;
        }
        current = record->half[3];
        if (current < 46) {
            record->half[3] = current + 6;
            goto submit;
        }
        func_801942E0(0, D_801D5874, -149, -62, 300, 0, 0, 2, 0, 3, 0, 1);
        scratch[0x29B]++;
        goto submit;
    case 2:
        /* Copy identities retain the loaded comparison value and its separate
         * arithmetic copy. The two empty control fences prevent GCC merging
         * opposite coordinate updates. None emits an instruction or access. */
        changed = 0;
        D_801DAE50 = 0;
        D_8010A5A4 = func_8006EC80(0);
        button = D_8010A5A4;
        switch (button) {
        case 0x8000: {
            s32 rawCoordinate = *(s16 *)(base + 0xAC18);
            s32 oldCoordinate;
            oldCoordinate = rawCoordinate;
            __asm__ volatile ("" : "=r" (oldCoordinate)
                : "0" (oldCoordinate), "r" (rawCoordinate));
            changed = 1;
            if (rawCoordinate < 167) break;
            rawCoordinate = oldCoordinate - 1;
            *(u16 *)(base + 0xAC18) = rawCoordinate;
            audio = 0x50D;
            goto moved;
        }
        case 0x2000: {
            s32 rawCoordinate = *(s16 *)(base + 0xAC18);
            s32 oldCoordinate;
            oldCoordinate = rawCoordinate;
            __asm__ volatile ("" : "=r" (oldCoordinate)
                : "0" (oldCoordinate), "r" (rawCoordinate));
            if (rawCoordinate < 198) {
                rawCoordinate = oldCoordinate + 1;
                *(u16 *)(base + 0xAC18) = rawCoordinate;
                __asm__ volatile ("" : :);
                audio = 0x50D;
                goto moved;
            }
            changed = 1;
            break;
        }
        case 0x1000: {
            s32 rawCoordinate = *(s16 *)(base + 0xAC1A);
            s32 oldCoordinate;
            oldCoordinate = rawCoordinate;
            __asm__ volatile ("" : "=r" (oldCoordinate)
                : "0" (oldCoordinate), "r" (rawCoordinate));
            changed = 1;
            if (rawCoordinate < 113) break;
            rawCoordinate = oldCoordinate - 1;
            *(u16 *)(base + 0xAC1A) = rawCoordinate;
            audio = 0x50D;
            goto moved;
        }
        case 0x4000: {
            s32 rawCoordinate = *(s16 *)(base + 0xAC1A);
            s32 oldCoordinate;
            oldCoordinate = rawCoordinate;
            __asm__ volatile ("" : "=r" (oldCoordinate)
                : "0" (oldCoordinate), "r" (rawCoordinate));
            if (rawCoordinate < 128) {
                rawCoordinate = oldCoordinate + 1;
                *(u16 *)(base + 0xAC1A) = rawCoordinate;
                __asm__ volatile ("" : :);
                audio = 0x50D;
                goto moved;
            }
            changed = 1;
            break;
        }
        case 16:
            audio = 0x50D;
            *(u16 *)(base + 0xAC18) = 182;
            *(u16 *)(base + 0xAC1A) = 120;
moved:
            func_800AB620(audio);
            changed = 1;
            break;
        case 32:
            func_800AB620(0x528);
            coordinate = *(s16 *)(base + 0xAC18);
            D_801DAE50 = 2;
            if (coordinate == (s16)D_801DADB4 &&
                *(s16 *)(base + 0xAC1A) == (s16)D_801DADB8) {
                changed = 1;
                break;
            }
            base[0x8F14] |= 1;
            changed = 1;
            break;
        case 64:
            func_800AB620(0x529);
            D_801DAE50 = 1;
            break;
        }
        if (changed)
            func_800B4958(*(s16 *)(base + 0xAC18),
                *(s16 *)(base + 0xAC1A));
        button = D_801DAE50;
        if (button < 3 && button != 0) goto advance;
        break;
    case 3: {
        /* Capture the byte counter before clearing the other byte; the input
         * fence keeps the later descriptor halfword read in measured order. */
        u32 counterCapture = D_801D59A4;
        u32 sizeCapture;
        D_801D8FA0 = 0;
        __asm__ volatile ("" : : "r" (counterCapture));
        sizeCapture = record->half[3];
        D_801D59A4 = counterCapture - 1;
        if (sizeCapture >= 5) {
            counterCapture = sizeCapture - 6;
            record->half[3] = counterCapture;
            goto submit;
        }
        sizeCapture = record->half[2];
        if (sizeCapture >= 5) {
            counterCapture = sizeCapture - 30;
            record->half[2] = counterCapture;
            goto submit;
        }
        current = D_801DAE50;
        D_801D92DB = 0;
        if (current == 1) {
            u32 restoreCapture = D_801DADB4;
            s32 restoredX;
            *(u16 *)(base + 0xAC18) = restoreCapture;
            /* Reload current X after its store, before storing restored Y. */
            restoreCapture = D_801DADB8;
            restoredX = *(s16 *)(base + 0xAC18);
            *(u16 *)(base + 0xAC1A) = restoreCapture;
            func_800B4958(restoredX, (s16)restoreCapture);
        }
    }
advance:
        scratch[0x29B]++;
        break;
submit:
        func_801941E0(2, 0, record, 0, 2, 1);
        break;
    case 4:
        scratch[0x330] = 0;
        func_800171C4(16);
        scratch[0x29B] = 0;
        base[0xABDA] = 0;
        break;
    }
}
