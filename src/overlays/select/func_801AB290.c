#include "common.h"

/* Scalar access views retain the early absolute scratch stores; byte and
 * table meanings are unknown. No new storage or volatile contract is implied. */
extern u8 scratchE3 __asm__("0x1F8002E3"), scratchE4 __asm__("0x1F8002E4"),
    scratchE5 __asm__("0x1F8002E5"), scratchE1 __asm__("0x1F8002E1");
extern u8 D_800FF748[], D_8010A5A8[];
extern u32 D_80108664;
extern u8 D_8010866A, D_8011CB38[], D_8011CB08[], D_8011CA64[];
extern s32 func_8001E6B8(s32);
extern void func_801A82F8(void), func_8005C49C(void), func_80198688(void),
    func_8002247C(void), func_800730F8(void);
extern void func_8018E538(u32), func_800501DC(u32);

void func_801AB290(u32 side) {
    u8 *base;
    /* Retain the measured state-pointer register lifetime; no emitted asm. */
    register u8 *state __asm__("$16");
    u8 *scratch;
    u32 flags;
    u32 choice;
    /* The random helper returns signed remainder bits: keep signed <2. */
    scratchE4 = func_8001E6B8(10) < 2;
    scratchE5 = func_8001E6B8(10) < 2;
    choice = func_8001E6B8(6);
    base = D_800FF748;
    state = D_8010A5A8;
    /* Both mask decisions use this single captured word, not later rereads. */
    flags = D_80108664;
    scratchE3 = choice;
    scratch = (u8 *)0x1F800000;
    if (!(flags & 0x4F000000)) {
        u32 index = D_8010866A;
        scratchE5 = D_8011CB38[index];
        scratchE3 = D_8011CB08[index];
    }
    choice = scratchE1;
    if ((choice == 2 && (flags & 0x60000000) == 0x40000000) || choice == 1) {
        u32 mapOffset = 0xAB80;
        u8 *map;
        u8 *selectedRow;
        u32 offset;
        u32 other;
        other = base[0x8F15];
        map = base + mapOffset;
        if (other != 0)
            selectedRow = map + base[0xABA1];
        else
            selectedRow = map + base[0xABA0];
        offset = *selectedRow * 36;
        selectedRow = base + offset;
        scratch[0x2E3] = D_8011CA64[selectedRow[0x8F25]];
    }
    if ((base[0x8F1F] & 15) == 0 && (base[0x8F22] >> 4) == 3) {
        scratch[0x2E5] = 1;
        scratch[0x2E3] = 5;
    }
    switch ((u8)side) {
    case 0:
        state[14] &= 0xF8;
        break;
    case 1:
        state[14] |= 7;
        break;
    }
    /* Preserve call boundaries and the byte/halfword reset order. */
    func_801A82F8();
    base[0xABDA] = 0;
    base[0xABD8] = 0;
    scratch[0x1EC] = 1;
    base[0xAC21] = 0;
    base[0xAC20] = 0;
    func_8018E538(0);
    scratch[0x330] = 0;
    *(u16 *)(base + 0xABD6) = 0;
    func_8005C49C();
    func_800501DC(0);
    func_800501DC(1);
    func_80198688();
    func_8002247C();
    func_800730F8();
    scratch[0x299] = 1;
}
