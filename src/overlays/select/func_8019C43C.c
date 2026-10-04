#include "common.h"

extern u8 D_800FF748[];
extern s16 D_801D8D78, D_801D8D7A, D_801D8D7C, D_801D8D7E;
extern s16 D_801D8D90, D_801D8D92, D_801D8D94, D_801D8D96;
extern s16 D_801D8DA8, D_801D8DAA, D_801D8DAC, D_801D8DAE;
extern u8 scratchMode __asm__("0x1F8002E1");
extern u8 D_801D8D80, D_801D8D81, D_801D8D82;
extern u8 D_801D8D98, D_801D8D99, D_801D8D9A;
extern u8 D_801D8DB0, D_801D8DB1, D_801D8DB2;
extern void func_801940EC(u32, u32, void *, u32, u32, u32);
extern void func_801941E0(u32, u32, void *, u32, u32, u32);
extern void func_8019C85C(void);

/* Field-width views only; complete descriptor types and meanings are unknown.
 * This function's scheduling profile retains the measured initial store/load
 * order without adding volatile access semantics to the fields. */
void func_8019C43C(void) {
    u8 *base;
    u32 mode;
    s32 width;
    s32 count;
    s32 firstOffset;
    s32 secondOffset;
    s32 fill;
    u32 color;
    u32 accent;

    D_801D8D78 = -128;
    D_801D8D7A = -32;
    D_801D8D7C = 256;
    D_801D8D7E = 64;
    D_801D8D80 = 128;
    D_801D8D81 = 128;
    D_801D8D82 = 64;
    D_801D8D90 = -94;
    D_801D8D92 = 36;
    D_801D8D94 = 14;
    {
        u32 height = 12;
        color = 96;
        mode = scratchMode;
        accent = 32;
        base = D_800FF748;
        D_801D8D96 = height;
    }
    D_801D8D98 = color;
    D_801D8D99 = color;
    D_801D8D9A = accent;
    if (mode == 1) {
        D_801D8DA8 = 80;
        width = 10;
    } else {
        D_801D8DA8 = 75;
        width = 4;
    }
    D_801D8DAA = 0;
    D_801D8DAC = width;
    D_801D8DAE = 0;
    D_801D8DB0 = color;
    D_801D8DB1 = color;
    D_801D8DB2 = accent;
    /* Empty barrier prevents resetting the first argument before this store. */
    __asm__ volatile("" : : : "memory");
    {
        /* Scoped ABI bindings and the two empty inputs preserve measured
         * argument setup before materializing the shared call constants. */
        register u32 arg0 __asm__("$4") = 0;
        register u32 arg1 __asm__("$5") = 0x60000000;
        void *arg2 = (void *)&D_801D8D78;
        register u32 arg3 __asm__("$7") = 0;
        u32 three;
        register u32 one __asm__("$17");
        __asm__ volatile("" : : "r"(arg0), "r"(arg1), "r"(arg2), "r"(arg3) : "memory");
        three = 3;
        func_801940EC(arg0, arg1, arg2, arg3, three, 0);
        arg0 = 1;
        arg1 = 0x60000000;
        arg2 = (void *)&D_801D8D90;
        arg3 = 0;
        __asm__ volatile("" : : "r"(arg0), "r"(arg1), "r"(arg2), "r"(arg3) : "memory");
        one = 1;
        func_801940EC(arg0, arg1, arg2, arg3, three, one);
        func_801941E0(2, 0x60000000, (void *)&D_801D8DA8, 0, three, one);
    }
    func_8019C85C();
    count = 0;
    fill = -512;
    secondOffset = 0x550;
    firstOffset = 0x4B0;
    do {
        u8 *second = base + secondOffset;
        u8 *first;
        secondOffset += 40;
        first = base + firstOffset;
        firstOffset += 40;
        count++;
        *(s16 *)(first + 0x5DD0) = fill;
        *(s16 *)(second + 0x5DD0) = fill;
    } while (count < 4);
}
