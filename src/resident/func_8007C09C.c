#include "common.h"

typedef struct {
    u8 before38E[0x38E];
    u16 key38E;
    u8 between390[6];
    u8 mode396;
    u8 state397;
} RecordView;

extern u8 D_800FF748[];
extern void func_8004FD5C(void);
extern s32 func_800537D0(RecordView *);
extern void func_800477A0(u8 *, u32);
/* Measured no-new-arguments call view. Existing C declares four forwarding
 * words for 2283C -> 66A94; this is not a compatible complete native API.
 * 66A94 overwrites a0 and its first callee sets its own other inputs.
 * Preserve the original call without inventing residual-register arguments;
 * a native build must reconcile that forwarding declaration explicitly. */
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern void func_80051810(void);
extern void func_800AB620(s32);
extern s32 func_8001E6B8(s32);
extern s32 func_8004FBC4(u32);
extern void func_800171DC(void);

/* Partial pool/record and fixed PS1 scratch views, not recovered native layout.
 * 537D0 uses its existing compatible field view; its older nested BA30 view
 * still differs from the shared byte-pointer declaration and needs adaptation.
 * Older unsigned AB620 and four-word 51810 declarations are also provisional.
 * Timer addition is bounded then explicitly narrowed to its wrapping halfword.
 * Helpers may mutate memory; keep reads after their calls and no restrict.
 * Random remainder by positive 2 is defined even for a negative random word. */
void func_8007C09C(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *base;
    u8 *record;
    u8 *state;
    s32 index;
    s32 mode;
    u32 slot;
    u16 timer;

    func_8004FD5C();
    base = D_800FF748;
    record = base + 1000;
    index = 0;
    mode = 50;
    state = base + 0x77F;
    do {
        if (func_800537D0((RecordView *)record) != 0) {
            state[-1] = mode;
            state[0] = 0;
        }
        index++;
        state += 1000;
        record += 1000;
    } while (index < 22);
    slot = scratch[0x2AE];
    func_800477A0(base + (u8)(slot % 24) * 1000, 5);
    func_8002283C();
    func_8004A2D0();
    func_80051810();
    timer = *(u16 *)(scratch + 0x294) + 1;
    *(u16 *)(scratch + 0x294) = timer;
    switch (timer & 65535) {
    case 16:
        scratch[0x2C0] = 0;
        func_800AB620(0x516);
        break;
    case 20:
        if (func_8001E6B8(2) != 0) {
            func_800AB620(0x522);
        } else {
            func_800AB620(0x51B);
        }
        break;
    case 32:
        func_800AB620(0x517);
        break;
    default:
        if (*(u16 *)(scratch + 0x294) >= 72U && func_8004FBC4(0) != 0) {
            func_800171DC();
        }
        break;
    }
}
