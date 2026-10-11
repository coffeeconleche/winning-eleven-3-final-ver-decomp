#include "common.h"

/* Existing storage addresses only; these are not complete backing layouts. */
extern u8 D_8010A5A8[], D_8010A5E0[], D_800FF748[], D_800E8208[];
extern u8 D_8010A364;
extern u16 D_8010A5B4;

/* Provisional consumed-argument views of the original BIOS trampolines and
 * final callback. The caller ignores the last callback's register residue. */
extern void func_800AD658(void *destination, u32 size);
extern void func_800AD668(void *destination, u32 value, u32 size);
extern void func_800ACF08(u32 value);
extern void func_8001E310(void);

void func_8001DBE8(void)
{
    func_800AD658(D_8010A5A8, 0x10);
    func_800AD658(D_8010A5E0, 0x3D4);
    func_800AD658((void *)0x1F800000, 0x400);
    func_800AD668((void *)0x807F0000, 0, 0xF000);
    func_800ACF08(0);
    *(u8 **)0x1F8002F4 = D_800FF748;
    *(u8 **)0x1F800190 = D_800E8208;
    D_8010A364 = 0;
    D_8010A5B4 = 2;
    func_8001E310();
}
