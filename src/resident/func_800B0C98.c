#include "common.h"

/* Existing declaration view from func_800AF1CC; full table API is unknown. */
typedef struct {
    u32 words[14];
    u32 (*callback)(u32, u32, u32, u32);
} CallbackView800AF1CC;
extern CallbackView800AF1CC *D_800CEABC;

/* Observed submit callback offset; this is not a complete table layout. */
typedef struct {
    u32 words[8];
    s32 (*submit)(void *, void *);
} SubmitView;

extern u32 *D_800CEBA8;
extern volatile u32 *D_800CEB9C;
extern u32 D_800CEBD0;
extern u32 D_800CEBD4;
extern char D_8001503C[];
extern void func_800AE59C(const char *, void *);
extern s32 func_800BA518(s32);
extern s32 func_800B0AB4(void);
extern u32 func_800B10B0(void);
/* Two explicit target call words; native callback forwarding needs review. */
extern u32 func_800BA798(u32, u32 (*)(void));

/* gcc281 -quiet -O2 -G0 -mno-split-addresses; natural 32-byte frame. */
s32 func_800B0C98(void *first, void *second)
{
    register u32 status __asm__("$2");

    func_800AE59C(D_8001503C, first);
    D_800CEBD0 = (u32)func_800BA518(-1) + 0xF0;
    D_800CEBD4 = 0;
    status = *(volatile u32 *)D_800CEBA8;
    goto check_status;
retry:
    if (func_800B0AB4()) {
        return -1;
    }
    status = *(volatile u32 *)D_800CEBA8;
check_status:
    if (status & 0x1000000) {
        goto retry;
    }
    if (!(*D_800CEB9C & 0x4000000)) {
        goto retry;
    }
    func_800BA798(2, func_800B10B0);
    ((SubmitView *)D_800CEABC)->submit(first, second);
    return 0;
}
