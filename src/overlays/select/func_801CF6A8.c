#include "common.h"

extern u8 D_800FF748[], D_801D59E8[], D_801DA2C8[];
extern void func_80192594(u32);
extern s32 func_80192720(u32);
extern s32 func_800ACEC8(void *, void *);

/* Preserve indefinite polling and the distinct negative result paths. The
 * complete transfer record types and gameplay meaning are not established. */
s32 func_801CF6A8(s32 previous) {
    u8 *base = D_800FF748;
    s32 result;
    if (previous == 0) {
        func_80192594(0);
        do {
            result = func_80192720(0);
        } while (result == 0);
        switch (result) {
        case -2:
            base[0x8F1E] = 0;
            /* Fall through to the shared negative-result return. */
        case -3:
        case -1:
            /* Keep the shared case return instead of threading its copy into
             * each comparison's delay slot; this empty input emits no code. */
            __asm__ volatile("" : : "r"(result));
            return result;
        }
    }
    {
        s32 transferred = func_800ACEC8(D_801D59E8, D_801DA2C8);
        /* Keep the independent call-result condition and return-value register
         * with the observed delay-slot initialization. The input below is empty. */
        register s32 answer __asm__("$2") = 17;
        if (transferred == 0) {
            answer = 1;
        }
        __asm__ volatile("" : : "r"(answer));
        return answer;
    }
}
