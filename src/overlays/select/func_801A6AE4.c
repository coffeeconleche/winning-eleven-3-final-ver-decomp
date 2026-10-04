#include "common.h"

/* Access views and caller-level ABI only; original descriptor fields and types
 * are unknown. Six local volatile write views retain the measured store order,
 * with no extra accesses or claim about an original volatile/MMIO contract.
 */
typedef struct {
    u16 halves[4];
    u8 bytes[12];
} Fields20;
extern u8 D_801D81C8;
extern u32 D_801DA05C, D_801DA058;
extern volatile Fields20 D_801D8D78;
extern volatile Fields20 D_801D8D90;
extern volatile s16 D_801D8D7A;
extern u16 D_801D8D7C, D_801D8D7E;
extern volatile u16 D_801D8D92;
extern u16 D_801D8D94, D_801D8D96;
extern u8 D_801D8D80, D_801D8D81, D_801D8D82, D_801D8D83, D_801D8D84, D_801D8D85;
extern u8 D_801D8D98, D_801D8D99, D_801D8D9A, D_801D8D9B, D_801D8D9C, D_801D8D9D;
extern volatile u16 D_80105720;
extern volatile u16 D_80105748;
extern u16 D_801056D0, D_801056F8;
extern void func_80193FB4(u32, u32, u32, s16, s16, u8, u8, s16, s16, s16, s16, u8, u8, u8, u32, u8, u8);
extern void func_801940EC(u8, u32, volatile Fields20*, u8, u16, u8);
extern u32 func_8018E69C(u32);
extern void func_801A735C(s32), func_801A77A0(void), func_801A7A4C(void), func_801A8124(void);

void func_801A6AE4(void) {
    s32 i, index;
    u32 initial = D_801D81C8;
    D_801DA05C = initial;
    D_801DA058 = initial;
    func_80193FB4(3, 0x3080, 0, -512, 0, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 1, 1);
    func_80193FB4(5, 0x3081, 0, -512, 0, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(6, 0x3082, 0, -512, 0, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(7, func_8018E69C(0)+0x3084, 0, -512, 0, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(8, func_8018E69C(1)+0x3084, 0, -512, 16, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    for (i = 15, index = 0; i < 23; i++, index++) {
        func_80193FB4(i, index+0x308B, 0, -512, 0, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    }
    for (i = 23, index = 0; i < 33; i++, index++) {
        func_80193FB4(i, index+0x3093, 0, -512, 0, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    }
    D_801D8D78.halves[0] = 542;
    D_801D8D7A = -63;
    D_801D8D7C = 140;
    D_801D8D7E = 88;
    D_801D8D80 = 32;
    D_801D8D81 = 32;
    D_801D8D82 = 32;
    D_801D8D83 = 128;
    D_801D8D84 = 128;
    D_801D8D85 = 160;
    func_801940EC(0, 0, &D_801D8D78, 1, 3, 1);
    func_801A735C(0);
    D_80105720 = 512;
    D_80105748 = 512;
    D_801D8D90.halves[0] = 542;
    D_801D8D92 = 28;
    D_801D8D94 = 140;
    D_801D8D96 = 72;
    D_801D8D98 = 32;
    D_801D8D99 = 32;
    D_801D8D9A = 32;
    D_801D8D9B = 128;
    D_801D8D9C = 128;
    D_801D8D9D = 160;
    func_801940EC(1, 0, &D_801D8D90, 1, 3, 1);
    func_80193FB4(9, func_8018E69C(0)+0x3084, 0, 602, -45, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 1, 1);
    func_80193FB4(10, func_8018E69C(1)+0x3084, 0, 671, -45, 27, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 1, 1);
    func_801A77A0();
    D_801056D0 = 512;
    D_801056F8 = 512;
    func_801A7A4C();
    func_801A8124();
}
