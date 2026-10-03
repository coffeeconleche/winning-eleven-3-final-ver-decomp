#include "common.h"

/* Word-argument call view: the callee narrows its descriptor fields. The
 * original declaration is unknown; narrowing here changes the emitted words. */
extern void func_80196378(s32, s32, s32, s32, u32, u32, u32, u32, u32, u32);

void func_801A84C8(s32 x, s32 y, u8 index, u8 selector) {
    index--;
    func_80196378(0, x, y, 24, 24, index * 24 + 80, 56, 12,
                 index + 125, selector);
}
