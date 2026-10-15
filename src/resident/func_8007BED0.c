#include "common.h"

extern u8 D_800FF748[];
extern u16 scratch294 __asm__("0x1F800294");
extern u8 scratch2AE __asm__("0x1F8002AE");
extern u8 scratch2AD __asm__("0x1F8002AD");
extern u16 scratch2BC __asm__("0x1F8002BC");
extern u16 scratch2BE __asm__("0x1F8002BE");
extern u32 scratch1F0 __asm__("0x1F8001F0");
extern u32 scratch1F8 __asm__("0x1F8001F8");
extern u16 scratch2EA __asm__("0x1F8002EA");
extern u8 scratch2E7 __asm__("0x1F8002E7");
extern u8 scratch1E8 __asm__("0x1F8001E8");
extern u8 scratch1EC __asm__("0x1F8001EC");
extern u8 scratch2C2 __asm__("0x1F8002C2");
extern u8 scratch2A1 __asm__("0x1F8002A1");
extern u8 D_80105D2C;
extern u8 D_80105D54;
extern void func_80098428(void);
/* Follow the existing no-input definition. Older 89CAC forwards four words;
 * its incompatible call view and nested B53D8 signedness need native cleanup. */
extern void func_80096050(void);
extern u32 func_800B1128(u32);
extern u32 func_8005B36C(s32, s32, s32, s32);
/* No new argument words are set here. Existing 2283C C instead forwards four
 * incoming words through 66A94; this measured no-argument call view is not a
 * compatible complete native API. Reconcile explicitly in a native adapter,
 * without inventing residual-register formal arguments in this function. */
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern void func_8005726C(u8 *);
extern void func_800171DC(void);

/* Partial PS1 byte/halfword/word views, not recovered native layouts.
 * Coordinate differences, squares, sum and result times9 wrap as u32 words.
 * Keep post-helper and post-store rereads; no nonalias assumptions.
 * B1128 is the original GTE/table helper, not a generic square root: its valid
 * table domain and GTE side effects need explicit native emulation. No caller
 * bound proves the wrapped squared sum is nonnegative. B36C uses
 * signed low halves; older narrow private declarations need reconciliation.
 * Scalar scratch externs allocate no storage. The low-half casts require the
 * PS1 little-endian layout; native strict aliasing needs an explicit adapter. */
void func_8007BED0(void)
{
    u8 *base;
    u8 *other;
    u32 slot;
    u32 dx;
    u32 dy;
    u32 distance;
    s32 referenceX;
    s32 referenceY;

    func_80098428();
    D_80105D2C = 0;
    D_80105D54 = 0;
    scratch294 = 0;
    func_80096050();
    base = D_800FF748;
    other = base + (scratch2AE % 24) * 1000;
    scratch2BC = *(u16 *)(other + 2);
    scratch2BE = *(u16 *)(other + 6);
    dx = scratch1F0 - (u32)*(s16 *)(other + 2);
    dy = scratch1F8 - (u32)*(s16 *)(other + 6);
    distance = func_800B1128(dx * dx + dy * dy);
    referenceX = *(s16 *)&scratch1F0;
    referenceY = *(s16 *)&scratch1F8;
    scratch2EA = (distance * 9U) / 10U;
    scratch2E7 = func_8005B36C(*(s16 *)(other + 2),
        *(s16 *)(other + 6), referenceX, referenceY);
    func_8002283C();
    func_8004A2D0();
    slot = scratch2AD;
    scratch1E8 = 1;
    scratch1EC = 0;
    scratch2C2 = 0;
    scratch2A1 = 0;
    func_8005726C(base + (u8)(slot % 24) * 1000);
    func_800171DC();
}
