#include "common.h"

extern u8 D_8010A2C8[], D_8010866D[], D_801D2728[];
extern u8 *D_801D1D18[];
extern u8 D_8010A320, D_8010865D;
extern volatile u8 D_801DAE50;
/* Same retained byte, with a distinct store view so the two increment paths
 * keep their original separate stores rather than a compiler-merged tail. */
extern volatile u8 modeStore __asm__("D_8010A320");
extern volatile u8 scratchDD __asm__("0x1F8002DD"), scratchDE __asm__("0x1F8002DE");
/* Measured four halfwords followed by twelve bytes; original type unknown. */
typedef struct {
    s16 h[4];
    u8 b[12];
} Fields20;
extern volatile u8 D_801D86BD, D_801D8A8F, D_8010A369, D_8010A368;
extern volatile s16 D_8010A370, D_8010A372, D_8010A376, D_8010A374,
    D_8010A37A, D_8010A378, D_8010A384, D_8010A37C;
extern volatile u8 D_801D92A3, D_801D92BF, D_801D92DB, D_801D8FA0, D_801D8FB8, D_801D8FD0;
extern volatile s16 D_801D8D78, D_801D8D7A, D_801D8D7C, D_801D8D7E;
extern volatile u8 D_801D8D80, D_801D8D81, D_801D8D82, D_801D8D83,
    D_801D8D84, D_801D8D85, D_801D8D86, D_801D8D87, D_801D8D88,
    D_801D8D89, D_801D8D8A, D_801D8D8B;
extern void func_80096050(void), func_8005C49C(void), func_800501DC(u32);
extern void func_801941E0(u32, u32, void *, u32, u32, u32);
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern s32 func_8018EAF4(s32, s32, u8);

s32 func_801AC9D8(u8 first, u8 second) {
    u32 firstOffset = D_8010A2C8[first] * 36;
    u32 secondOffset = D_8010A2C8[second] * 36;
    u8 firstValue = D_8010866D[firstOffset];
    u8 secondValue = D_8010866D[secondOffset];
    s32 mode;
    u8 swapFirst, swapSecond, flag;

    Fields20 *fields;
    /* Original frame is 112 bytes, with 40 bytes never accessed. This compiler
     * already allocates eight unused bytes; retain the remaining measured 32.
     * Their original purpose and local-object type are unknown. */
    u8 frameSlot[32];
    __asm__("" : : "m"(frameSlot[0]));

    /* Keep both record-byte captures ahead of the mode-byte snapshot. */
    __asm__("" : : : "memory");
    {
        /* Retain the raw mode snapshot independently of its narrowed selector. */
        register s32 capture __asm__("$4") = D_8010A320;
        D_801DAE50 = 0;
        mode = capture;
    }
    /* Preserve the measured comparison order, including unsupported modes. */
    {
        s32 selector = (u8)mode;
        if (selector == 1) goto advance;
        if (selector < 2) {
            if (selector == 0) goto zero;
            return 0;
        }
        if (selector == 2) goto advance;
        if (selector == 3) goto poll;
        return 0;
    }
zero:
        D_801D86BD = 0; D_801D8A8F = 0;
        *(u8 *)0x1F8001EC = 0;
        func_80096050();
        func_8005C49C();
        flag = D_8010865D;
        D_8010A370 = -64;
        D_8010A372 = 64;
        D_8010A376 = 8;
        D_8010A374 = 8;
        D_8010A37A = 0x300;
        D_8010A378 = 0x300;
        D_8010A384 = -32;
        D_8010A37C = -32;
        D_8010A369 = 1;
        D_8010A368 = 1;
        if (flag) {
            swapFirst = scratchDE;
            swapSecond = scratchDD;
            scratchDD = swapFirst;
            scratchDE = swapSecond;
        }
        func_800501DC(0);
        func_800501DC(1);
        fields = (Fields20 *)&D_801D8D78;
        *(volatile s16 *)&fields->h[0] = 0; D_801D8D7A = -6; D_801D8D7C = 280; D_801D8D7E = 96;
        D_801D8D80 = 0; D_801D8D81 = 0; D_801D8D82 = 0;
        D_801D8D83 = 192; D_801D8D84 = 192; D_801D8D85 = 192;
        D_801D8D86 = 0; D_801D8D87 = 0; D_801D8D88 = 0;
        D_801D8D89 = 0; D_801D8D8A = 0; D_801D8D8B = 0;
        func_801941E0(0, 0x50000000, fields, 1, 2, 1);
        D_801D8D80 = 0; D_801D8D81 = 0; D_801D8D82 = 0;
        D_801D8D83 = 48; D_801D8D84 = 0; D_801D8D85 = 128;
        D_801D8D86 = 48; D_801D8D87 = 0; D_801D8D88 = 128;
        D_801D8D89 = 0; D_801D8D8A = 0; D_801D8D8B = 0;
        func_801941E0(1, 0, fields, 2, 2, 1);
        func_801942E0(0, D_801D2728, -100, -50, 200, 3, 0, 0, 0, 1, 1, 1);
        func_801942E0(1, D_801D1D18[firstValue], -140, 17, 128, 3, 0, 0, 0, 1, 0, 1);
        func_801942E0(2, D_801D1D18[secondValue], 12, 17, 128, 3, 0, 0, 0, 1, 0, 1);
        {
            /* Reload after all callbacks; this value is not the entry snapshot.
             * Keep the short-lived counter in the measured return register. */
            register u32 next __asm__("$2") = D_8010A320;
            next++;
            modeStore = next;
        }
        return 0;
advance:
        D_8010A320 = mode + 1;
        return 0;
poll:
        if (!func_8018EAF4(1, 1, 0)) return 0;
        {
            /* A non-one flag returns the loaded byte, not a boolean. Retaining
             * its word-sized return-register view avoids a redundant narrowing. */
            register u32 result __asm__("$2") = D_801DAE50;
            if (result != 1) return result;
        }
        D_8010A369 = 0; D_8010A368 = 0;
        D_801D92A3 = 0; D_801D92BF = 0; D_801D92DB = 0;
        D_801D8FA0 = 0; D_801D8FB8 = 0; D_801D8FD0 = 0;
        /* Reread after the clears; do not substitute the earlier value one. */
        return D_801DAE50;
}
