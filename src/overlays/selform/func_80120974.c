#include "common.h"

extern u8 D_80123020[];
extern u8 *D_80123044;
extern u8 D_80123048, D_80123049;
extern u8 *func_8001D004(u32);
extern s32 func_8006F3E0(u32, s32, s32);
extern s32 func_8006FA84(u32, u32);
extern void func_80121670(u8);

/* Access views only: original record types and field meanings are unknown. */
void func_80120974(u8 selector) {
    u8 *source;
    u8 count;
    /* Retain the measured raw-byte argument register and separate narrowing. */
    register u32 rawCount asm("$5");
    u32 current;

    D_80123044 = (u8 *)(selector * 18 + (u32)D_80123020);
    *(u16 *)(D_80123044 + 2) = 0;
    source = func_8001D004(selector + 0x6C);
    if (selector == D_80123049) {
        rawCount = D_80123048;
        /* Hide the load range so the reference byte re-narrowing is retained. */
        __asm__("" : "=r"(rawCount) : "0"(rawCount));
        count = rawCount;
        if (count) {
            register u32 smaller asm("$2");
            current = *(u16 *)(D_80123044 + 0xC);
            smaller = current < rawCount;
            /* Keep the comparison in v0 while preserving both subtraction
             * inputs for the branch-delay computation; this emits no code. */
            __asm__("" : : "r"(smaller));
            if (smaller) {
                u8 *record = (u8 *)((count - current) * 12 + (u32)source);
                func_8006F3E0(7, *(s16 *)(record - 6), *(s16 *)(record - 4));
            } else {
                func_8006FA84(7, 0);
            }
        }
    }
    func_80121670(selector);
}
