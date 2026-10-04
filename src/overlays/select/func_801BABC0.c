#include "common.h"

extern s16 D_801D88A8, D_801D88AA, D_801D88AC, D_801D88AE, D_801D88B0, D_801D88B2;
extern u8 D_801D88B4, D_801D88B5, D_801D88B6, D_801D88B7, D_801D88B8, D_801D88B9;
extern u8 D_801D88BA, D_801D88BB, D_801D88BC;
extern u8 D_801D88C0, D_801D88C4, D_801D88C8;
extern u8 c01 __asm__("D_801D88C0+1"), c02 __asm__("D_801D88C0+2");
extern u8 c41 __asm__("D_801D88C4+1"), c42 __asm__("D_801D88C4+2");
extern u8 c81 __asm__("D_801D88C8+1"), c82 __asm__("D_801D88C8+2");
/* Scalar aliases expose measured byte offsets without claiming complete
 * object layouts or nonaliasing. The callback declarations are word caller
 * ABI views; higher-level meanings and original prototypes remain
 * unknown. */
extern void func_80196E1C(u32, void *, u32);
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801BABC0(void)
{
    s16 *record = &D_801D88A8;
    u8 *first = &D_801D88C0;
    u8 *second = &D_801D88C4;
    /* Four bindings retain measured allocation: the third pointer and the
     * independent second-triplet snapshot below. They emit no instructions. */
    register u8 *third __asm__("$18") = &D_801D88C8;
    s32 left;
    /* Keep the before/after coordinate lifetimes distinct across callbacks. */
    s32 topBefore;
    s32 topAfter;
    s32 right;
    u32 a, b, c;
    register u32 d __asm__("$8"), e __asm__("$9"), f __asm__("$10");
    *first = 0;
    c01 = 20;
    c02 = 40;
    *second = 8;
    c41 = 72;
    c42 = 72;
    *third = 40;
    c81 = 216;
    c82 = 104;
    left = -192;
    topBefore = -120;
    *record = left;
    D_801D88AA = topBefore;
    D_801D88AC = 0;
    D_801D88AE = topBefore;
    D_801D88B0 = left;
    D_801D88B2 = 0;
    D_801D88B4 = 0;
    D_801D88B5 = 20;
    D_801D88B6 = 40;
    D_801D88B7 = 8;
    D_801D88B8 = 72;
    D_801D88B9 = 72;
    D_801D88BA = 8;
    D_801D88BB = 72;
    D_801D88BC = 72;
    func_80196E1C(0, record, 6);
    a = *third;
    b = c81;
    c = c82;
    *record = 0;
    D_801D88AA = 0;
    D_801D88B4 = a;
    D_801D88B5 = b;
    D_801D88B6 = c;
    func_80196E1C(0, record, 6);
    a = *third;
    b = c81;
    c = c82;
    right = 192;
    D_801D88B0 = right;
    D_801D88B2 = topBefore;
    D_801D88BA = a;
    D_801D88BB = b;
    D_801D88BC = c;
    func_80196E1C(0, record, 6);
    a = *second;
    b = c41;
    c = c42;
    D_801D88AC = right;
    D_801D88AE = 0;
    D_801D88B7 = a;
    D_801D88B8 = b;
    D_801D88B9 = c;
    func_80196E1C(0, record, 6);
    *record = 0;
    D_801D88AA = 0;
    D_801D88AC = left;
    a = *third;
    b = c81;
    c = c82;
    d = *second;
    e = c41;
    f = c42;
    topAfter = 120;
    D_801D88AE = topAfter;
    D_801D88B0 = left;
    D_801D88B2 = 0;
    D_801D88B4 = a;
    D_801D88B5 = b;
    D_801D88B6 = c;
    D_801D88B7 = a;
    D_801D88B8 = b;
    D_801D88B9 = c;
    D_801D88BA = d;
    D_801D88BB = e;
    D_801D88BC = f;
    func_80196E1C(0, record, 6);
    a = *second;
    b = c41;
    c = c42;
    D_801D88B0 = 0;
    D_801D88B2 = topAfter;
    D_801D88BA = a;
    D_801D88BB = b;
    D_801D88BC = c;
    func_80196E1C(0, record, 6);
    a = *second;
    b = c41;
    c = c42;
    D_801D88AC = right;
    D_801D88AE = 0;
    D_801D88B7 = a;
    D_801D88B8 = b;
    D_801D88B9 = c;
    func_80196E1C(0, record, 6);
    a = *first;
    b = c01;
    c = c02;
    *record = right;
    D_801D88AA = topAfter;
    D_801D88B4 = a;
    D_801D88B5 = b;
    D_801D88B6 = c;
    func_80196E1C(0, record, 6);
    /* Each triplet capture above follows the preceding callback; do not
     * replace these reads with the initial constant values. */
    func_80196800(0x60000000, -200, 400, -120, 240, 96, 96, 32, 7);
}
