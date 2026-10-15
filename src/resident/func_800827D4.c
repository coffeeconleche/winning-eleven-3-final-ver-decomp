#include "common.h"

/* Private byte views of existing PS1 storage, not complete native layouts.
 * The scratch pointer is read again after 2283C; helpers may change it.
 * 2283C sets no argument words here, but its existing C definition forwards
 * four incoming words to 66A94. This private void-argument view is incompatible
 * with that C signature: measured PS1 calls retain register residues. 66A94
 * replaces a0 before 66BD8, which overwrites a1-a3 before use. A native port
 * must reconcile these APIs with an explicit adapter; no residue parameters
 * are invented here. Other nested APIs and runtime table8014A000 are provisional. */
extern void func_800477A0(u8 *, u32);
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern s32 func_8004FBC4(u32);
extern s32 func_8001E6B8(s32);
extern void func_8005BA30(u8 *, u32, u32);
extern void func_80097D6C(void);
extern void func_8004FD14(u32);
extern void func_800171C4(u32);
extern u8 D_800FF748[];
extern u8 *scratch2F4 __asm__("0x1F8002F4");
extern u16 scratch294 __asm__("0x1F800294");

void func_800827D4(void)
{
    s32 i;
    u16 timer;
    u8 *base;
    u8 *object;
    u8 *fields;
    s32 mark;

    func_800477A0(scratch2F4, 3);
    func_8002283C();
    scratch2F4[0x3B0] = 1;
    func_8004A2D0();
    timer = scratch294;
    base = D_800FF748;
    if (timer != 0) {
        scratch294 = timer - 1;
    } else if (func_8004FBC4(0) != 0) {
        object = base + 0x3E8;
        i = 0;
        mark = 0x2E;
        fields = base + 0x77F;
        do {
            func_8005BA30(object, 1, func_8001E6B8(0x15) & 0xFF);
            i++;
            fields[-1] = mark;
            fields[0] = 0;
            fields += 0x3E8;
            object += 0x3E8;
        } while (i < 0x16);
        func_80097D6C();
        func_8004FD14(1);
        func_800171C4(0xA);
    }
}
