#include "common.h"

extern u8 D_800FF748[], D_8010A5A8[], D_8010A322;
extern u8 D_801DAE50;
/* Ordered byte views at proved RAM addresses retain repeated captures and
 * store chronology, not an original volatile or MMIO contract. These scalar
 * assembly names allocate no data and add no linker symbols. */
extern volatile u8 D_801D81C4 __asm__("0x801D81C4");
extern volatile u8 D_801D81C5 __asm__("0x801D81C5");
extern volatile u8 D_801D81C6 __asm__("0x801D81C6");
extern volatile u8 D_801D81C7 __asm__("0x801D81C7");
extern volatile u8 D_801D81C8 __asm__("0x801D81C8");
extern volatile u8 D_801D81C9 __asm__("0x801D81C9");
extern u16 D_800AD638, D_8010A5A4;
extern u32 D_801DA058, D_801DA05C;
/* Caller-word ABI views only; full original helper types are unknown. */
extern void func_801A82F8(void), func_801A6AE4(void);
extern void func_801A735C(s32), func_801A7A8C(s32, s32);
extern void func_801A8124(void), func_801A77A0(void), func_800AB620(s32);
extern s32 func_801A6FC8(void), func_801A7188(void), func_8006EC80(s32);
extern s32 func_8018E5EC(s32, s32, s32), func_8018E640(s32, s32, s32);

/* Five outer states and eleven selection entries. Unsupported outer states
 * return zero; inner defaults retain the common post-selection callbacks.
 * Complete workspace layouts and gameplay meanings remain unknown.
 * The 32-byte frame is natural, with no artificial reservation. Nine measured
 * bindings remain after cumulative and joint removal checks; no empty sites. */
u32 func_801A6400(void) {
    /* Capture the dispatch byte once; other fields are reread after callbacks. */
    u32 state = D_8010A322;
    u8 *base = D_800FF748;
    /* Ordered access to the observed bytes of this otherwise unknown prefix. */
    volatile u8 *fields = D_8010A5A8;
    u8 *scratch = (u8 *)0x1F800000;
    register u32 nextState __asm__("$2");
    register u32 flagWord __asm__("$3");
    u32 flagStore;
    switch (state) {
    case 0: {
        u32 first, second, third, a, b, c;
        base[0x8F15] = 0;
        first = fields[9] & 1;
        second = fields[9] >> 1;
        D_801D81C4 = first;
        a = base[0xAC1D];
        b = base[0xAC1E];
        third = fields[9] >> 4;
        D_801D81C5 = second & 1;
        D_801D81C6 = a;
        D_801D81C7 = b;
        c = base[0xAC1F];
        D_801D81C8 = third & 7;
        D_801D81C9 = c;
        func_801A82F8();
        D_800AD638 = 0;
        D_801DAE50 = 0;
        func_801A6AE4();
        nextState = base[0xABDA];
        D_801DA058 = 0;
        D_801DA05C = 0;
        nextState++;
        goto storeState;
    }
    case 1:
        if (func_801A6FC8()) {
            nextState = base[0xABDA];
            nextState++;
            goto storeState;
        }
        return 0;
    case 2:
        func_801A7A8C(*(u8 *)&D_800AD638, 1);
        nextState = base[0xABDA];
        nextState++;
        goto storeState;
    case 3: {
        u16 input;
        /* These words wrap before the signed helper argument view. */
        if (D_801DA05C) {
            D_801DA058 += D_801DA05C;
            func_801A735C((s32)D_801DA058);
            if (!D_801DA058) D_801DA05C = 0;
        }
        input = func_8006EC80(0);
        D_8010A5A4 = input;
        if (input == 4096 || input == 16384) {
            u32 selected;
            func_801A7A8C(*(u8 *)&D_800AD638, 0);
            selected = func_8018E5EC(D_800AD638, 0, 10);
            D_800AD638 = selected;
            func_801A7A8C((u8)selected, 1);
            goto sound;
        }
        if (input == 32768 || input == 8192) {
            u32 selected = D_800AD638;
            switch (selected) {
            case 0: break;
            case 1:
                D_801D81C4 = func_8018E640(D_801D81C4, 0, 1);
                break;
            case 2:
                D_801D81C5 = func_8018E640(D_801D81C5, 0, 1);
                break;
            case 3:
                D_801D81C6 = func_8018E640(D_801D81C6, 0, 5);
                break;
            case 4:
                D_801D81C7 = func_8018E640(D_801D81C7, 0, 2);
                break;
            case 5:
                if (!D_801DA058) {
                    func_800AB620(0x50D);
                    D_801D81C8 = func_8018E640(D_801D81C8, 0, 5);
                    func_801A8124();
                    if (D_8010A5A4 == 32768) {
                        D_801DA058 = 80;
                        D_801DA05C = (u32)-5;
                    } else {
                        D_801DA058 = (u32)-80;
                        D_801DA05C = 5;
                    }
                }
                break;
            case 6:
                flagWord = D_801D81C9;
                if (flagWord & 1) flagWord &= 254;
                else flagWord |= 1;
                D_801D81C9 = flagWord;
                if (~flagWord & 1) {
                    flagStore = flagWord & 253;
storeFlag:
                    D_801D81C9 = flagStore;
                }
                break;
            case 7:
                flagWord = D_801D81C9;
                if ((flagWord >> 1) & 1) flagWord &= 253;
                else flagWord |= 2;
                D_801D81C9 = flagWord;
                if ((flagWord >> 1) & 1) {
                    flagStore = flagWord | 1;
                    goto storeFlag;
                }
                break;
            case 8:
                flagWord = D_801D81C9;
                flagStore = (flagWord >> 2) & 1;
                if (flagStore) {
                    flagStore = flagWord & 251;
                    goto storeFlag;
                }
                flagStore = flagWord | 4;
                goto storeFlag;
            case 9:
                if (base[0x8F16] == 0) base[0x8F16] = 3;
                else base[0x8F16] = 0;
                goto redraw;
            case 10:
                if (base[0x8F17] == 0) base[0x8F17] = 3;
                else base[0x8F17] = 0;
redraw:
                func_801A77A0();
                break;
            default:
                goto selectionDone;
            }
            selected = D_800AD638;
selectionDone:
            if (selected == 5) return 0;
            func_801A8124();
sound:
            func_800AB620(0x50D);
            return 0;
        }
        if (input == 32) {
            u32 selected;
            func_800AB620(0x528);
            selected = D_800AD638;
            if (selected) {
                func_801A7A8C((u8)selected, 0);
                D_800AD638 = 0;
                func_801A7A8C(0, 1);
                return 0;
            }
            nextState = base[0xABDA];
            D_801DAE50 = 2;
            nextState++;
storeState:
            base[0xABDA] = nextState;
            return 0;
        }
        if (input == 64) {
            nextState = base[0xABDA];
            D_801DAE50 = 1;
            nextState++;
            base[0xABDA] = nextState;
            func_800AB620(0x529);
        }
        return 0;
    }
    case 4: {
        register u32 result __asm__("$2");
        u32 oldFlags;
        u32 bits;
        register u32 c6 __asm__("$5"), c7 __asm__("$6"), c9 __asm__("$7");
        register u32 s4 __asm__("$8"), s5 __asm__("$9"), s8 __asm__("$10");
        register u32 b6, b7, b9;
        if (!func_801A7188()) return 0;
        base[0xABDA] = 0;
        if (D_801D81C4) fields[9] |= 1;
        else fields[9] &= 254;
        if (D_801D81C5) fields[9] |= 2;
        else fields[9] &= 253;
        /* Return snapshot precedes the upper-flag clear. Nine further loads
         * follow that clear and precede the final OR and remaining writebacks. */
        result = D_801DAE50;
        oldFlags = fields[9] & 143;
        bits = (D_801D81C8 << 4) & 112;
        fields[9] = oldFlags;
        c6 = D_801D81C6;
        c7 = D_801D81C7;
        c9 = D_801D81C9;
        s4 = D_801D81C4;
        s5 = D_801D81C5;
        s8 = D_801D81C8;
        b6 = D_801D81C6;
        b7 = D_801D81C7;
        b9 = D_801D81C9;
        fields[9] = oldFlags | bits;
        fields[0] = c6;
        fields[1] = c7;
        fields[14] = c9;
        scratch[0x2E5] = s4;
        scratch[0x2E4] = s5;
        scratch[0x2E3] = s8;
        base[0xAC1D] = b6;
        base[0xAC1E] = b7;
        base[0xAC1F] = b9;
        return result;
    }
    }
    return 0;
}
