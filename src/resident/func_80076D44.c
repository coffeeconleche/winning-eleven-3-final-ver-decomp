#include "common.h"

/* Existing scratch and roster views allocate no storage or volatility.
 * Helper signatures agree with current production definitions. 171C4 uses
 * only its real state argument; the loop leaves a1/a2 residues, not formals.
 * Roster bytes and aligned word at70F0 are partial PS1 layout views; a native
 * port must map scratch addresses and preserve aliasing and record extent. */

extern void func_80096050(void);
extern void func_8004FAC0(s32, u32);
extern void func_8004F25C(void);
extern void func_80050510(u32);
extern void func_800171C4(u32);
extern u8 D_800FF748[];
extern u8 D_8010A392;
extern u8 scratch332 __asm__("0x1F800332");
extern u16 scratch194 __asm__("0x1F800194");
extern u8 scratch2C1 __asm__("0x1F8002C1");
extern u8 scratch2E1 __asm__("0x1F8002E1");
extern u32 scratch2C8 __asm__("0x1F8002C8");
extern u8 scratch2C2 __asm__("0x1F8002C2");

void func_80076D44(void)
{
    u8 *scratch;
    u8 *base;
    u8 *fields;
    s32 i;
    s32 first;
    s32 second;

    func_80096050();
    scratch332 = 0;
    D_8010A392 = 0;
    scratch194 = 0;
    scratch2C1 = 0;
    func_8004FAC0(0x10, 0);
    base = D_800FF748;
    scratch = (u8 *)0x1F800000;
    if (scratch2E1 == 5) {
        scratch2C8 = 0x300;
        scratch2C2 = 0;
    } else {
        func_8004F25C();
        scratch2C2 = 1;
    }
    base[0x65E4] = 1;
    base[0x660C] = 1;
    *(u16 *)(scratch + 0x2EE) = 6;
    if (scratch[0x2E6] >= 5U) {
        scratch[0x1EC] = 3;
    } else {
        scratch[0x1EC] = 1;
    }
    func_80050510(0);
    i = 0;
    first = 0xC;
    second = 0x18;
    fields = base + 0x78E;
    scratch[0x1E8] = 0;
    base[0xAC4E] = 0xFF;
    base[0xAC4F] = 0xFF;
    *(u32 *)(base + 0x70F0) = 1;
    do {
        i++;
        fields[0x2D] = 0;
        fields[-1] = first;
        fields[0] = second;
        fields += 0x3E8;
    } while (i < 0x17);
    func_800171C4(1);
}
