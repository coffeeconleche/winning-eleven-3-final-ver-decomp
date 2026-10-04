#include "common.h"

extern u16 D_80189F88;
extern u8 D_801D8C64, D_801D8C65, D_801D8C66, D_801D8C67;
extern s32 func_8019E454(s32, s32);
/* Caller word view; the callee performs the measured halfword/byte narrowing. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32, s32);

void func_8019C85C(void) {
    /* Capture once before callbacks; the four argument bytes are reread later. */
    u32 captured = D_80189F88 >> 5;
    s32 result;

    /* Each helper result is narrowed independently before its descriptor call. */
    result = func_8019E454(D_801D8C64, 1);
    func_80193FB4(30, (u16)result, 0, 0, 0, 24, 0, 4096, 4096, -88, -33, 128, 128, 128, 0, 1, 1);
    func_80193FB4(34, 0x3022, 0, 0, 0, 24, 0, 4096, 4096, -88, -33, 128, 128, 128, 0, 1, 1);
    result = func_8019E454(D_801D8C65, 0);
    func_80193FB4(31, (u16)result, 0, 0, 0, 24, 0, 4096, 4096, -88, -33, captured, captured, captured, 0, 1, 1);
    func_80193FB4(35, 0x3023, 0, 0, 0, 24, 0, 4096, 4096, -88, -33, captured, captured, captured, 0, 1, 1);
    result = func_8019E454(D_801D8C66, 1);
    func_80193FB4(32, (u16)result, 0, 0, 0, 24, 0, 4096, 4096, -88, -33, 128, 128, 128, 0, 1, 0);
    func_80193FB4(36, 0x3022, 0, 0, 0, 24, 0, 4096, 4096, -88, -33, 128, 128, 128, 0, 1, 0);
    result = func_8019E454(D_801D8C67, 0);
    func_80193FB4(33, (u16)result, 0, 0, 51, 24, 0, 4096, 4096, -88, -33, captured, captured, captured, 0, 1, 1);
    func_80193FB4(37, 0x3023, 0, 0, 51, 24, 0, 4096, 4096, -88, -33, captured, captured, captured, 0, 1, 1);
}
