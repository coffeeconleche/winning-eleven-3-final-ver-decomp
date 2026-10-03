#include "common.h"

extern u8 D_8010A364;
extern s16 D_8010A31E;
extern u8 D_801D8DBD;
extern s16 D_8010A5B4;
extern u8 D_801D4299;

extern void func_8004FC54(s32);
extern void func_80198E20(void);
extern void func_801C4DE8(void);
extern void func_80199E8C(void);
extern void func_801929B4(s32);

void func_8018DE7C(void) {
    u8 *scratch;
    /* The original reuses v0 for the signed load and selected state byte. */
    register s32 state asm("$2");

    func_8004FC54(0);
    *(u8 *)0x1F800330 = 0;
    D_8010A31E = 0;
    D_801D8DBD = 0;
    D_8010A364++;
    scratch = (u8 *)0x1F800000;
    func_80198E20();
    /* Retain the scratchpad high word in s0 across the call. */
    __asm__ volatile ("" : "=r"(scratch) : "0"(scratch));
    state = D_8010A5B4;
    __asm__ volatile ("" : "=r"(state) : "0"(state));
    if (state == 0) {
        state = 0x31;
    } else {
        state = 0x30;
    }
    /* Finish state selection before forming the fixed scratchpad store. */
    __asm__ volatile ("" : "=r"(state) : "0"(state));
    *(u8 *)0x1F80029A = state;
    /* Preserve the state store before the next global read. */
    __asm__ volatile ("" : : : "memory");
    if (D_801D4299 != 0) {
        scratch[0x330] = 0;
        scratch[0x2E1] = 6;
        func_801C4DE8();
        func_80199E8C();
    } else {
        func_801929B4(0);
    }
}
