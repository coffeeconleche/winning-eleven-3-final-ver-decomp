#include "common.h"

/* Existing declaration view from func_800AF1CC; full table API is unknown. */
typedef struct {
    u32 words[14];
    u32 (*callback)(u32, u32, u32, u32);
} CallbackView800AF1CC;
extern CallbackView800AF1CC *D_800CEABC;

/* Observed callback offset and word argument, not a complete table layout. */
typedef struct {
    u32 words[6];
    void (*submit)(u32);
} SubmitView;

extern s32 (*D_800CEAC0)(const char *, ...);
extern u8 D_800CEAC6;
extern u32 *D_800CEBA8;
extern volatile u32 *D_800CEB9C;
extern u32 D_800CEBD0;
extern u32 D_800CEBD4;
extern char D_80014FA8[];
extern s32 func_800BA518(s32);
extern s32 func_800B0AB4(void);
extern u32 func_800B10B0(void);
/* Two explicit target call words; native callback forwarding needs review. */
extern s32 func_800BA798(u32, u32 (*)(void));

/* gcc281 -quiet -O2 -G0 -mno-split-addresses; natural 24-byte frame. */
s32 func_800B0FB4(u32 value)
{
    register u32 status __asm__("$2");

    if (D_800CEAC6 >= 2) {
        D_800CEAC0(D_80014FA8, value);
    }
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
    ((SubmitView *)D_800CEABC)->submit(value);
    return 0;
}
