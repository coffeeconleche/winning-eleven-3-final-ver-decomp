#include "common.h"
extern u8 D_800FF748[], D_801DA2F0, D_8010A2E8, D_8010A2E9;
extern s16 D_801DA5D2;
extern u32 scratch290 __asm__("0x1F800290");
extern void func_8019659C(u32, s32, s32, s32, u32, u32, u32, u32, u32);
extern void func_801964F8(u32, s32, s32, s32, u32, u32, u32, u32, u32);
extern void func_80196800(u32, s32, s32, s32, u32, u32, u32, u32, u32);
/* Call-site word views; helpers narrow coordinates, fields and selectors
 * internally. Complete original APIs and parameter names remain unknown. */
extern s32 func_801C1C5C(s32, s32);
extern void func_80196FE8(u32, u32, s32, s32, s32, s32, s32, u32);
extern void func_801A8848(s32, s32, u32, s32, u32, u32);
extern void func_80197200(u32, u32, s32, s32, s32, u32);
extern void func_801A89F0(s32, s32, u32, u32, s32, u32, u32, u32);

/* Build the observed lines and row fields. Literal colors/selectors and the
 * 30-unit coordinate expressions retain the measured invariant/stride code.
 * These byte offsets describe accesses, not complete records or table bounds. */
void func_801C2B50(void) {
    /* Ten scoped bindings and four empty captures preserve argument, address
     * and offset setup, including fresh bases after callbacks. They emit no
     * instructions or accesses and have no clobbers; frame space is natural. */
    func_8019659C(0, -169, -56, 336, 151, 166, 199, 200, 1);
    func_8019659C(0, -168, -55, 334, 149, 166, 199, 200, 1);
    func_8019659C(0, -169, -26, 336, 0, 166, 199, 200, 1);
    func_8019659C(0, -14, -56, 0, 151, 166, 199, 200, 1);
    func_8019659C(0, -170, -57, 338, 153, 0, 0, 0, 1);
    {
        s32 i = 0;
        for (; i < 4; ++i) {
            func_801964F8(0, -169, (i * 30 + 4), 155, 0, 166, 199, 200, 3);
            if (func_801C1C5C(i, D_801DA5D2) == 0) continue;
            if (func_801C1C5C(i, D_801DA5D2) == 3) break;
            {
                register u32 word __asm__("$5") = 0;
                register u8 *base __asm__("$8") = D_800FF748;
                register u8 *row __asm__("$16");
                u32 id;
                u32 map;
                register u8 *mapRow __asm__("$2");
                __asm__("" : "=r"(base) : "0"(base), "r"(word));
                /* Integer views retain the signed selector's word-wrapping
                 * offset before forming the actual base-relative pointer. */
                row = (u8 *)(u32)(s32)D_801DA5D2;
                row = (u8 *)((u32)row + i);
                row = (u8 *)((u32)base + (u32)row);
                id = row[0xAB50];
                map = *(u8 *)((u32)base + id + 0xAB80);
                mapRow = (u8 *)(map * 36);
                mapRow = (u8 *)((u32)base + (u32)mapRow);
                func_80196FE8(mapRow[0x8F25], word, -146, (i * 30 - 19), 0, 0, 1, 3);
                if (row[0xAB60] < 10)
                    func_801A8848(-170, (i * 30 - 18), row[0xAB60], 8, 2, 2);
                else
                    func_801A8848(-172, (i * 30 - 18), row[0xAB60], 6, 2, 2);
                if (!(D_801DA2F0 == 1 && (scratch290 & 16) &&
                    (id == D_8010A2E8 || id == D_8010A2E9))) {
                    register u8 *lateBase __asm__("$8") = D_800FF748;
                    u32 lateMap;
                    u32 code;
                    register u8 *mapRow __asm__("$2");
                    __asm__("" : "=r"(lateBase) : "0"(lateBase));
                    lateMap = *(u8 *)((u32)lateBase + id + 0xAB80);
                    mapRow = (u8 *)(lateMap * 36);
                    mapRow = (u8 *)((u32)lateBase + (u32)mapRow);
                    code = mapRow[0x8F24];
                    func_80197200(code & 0xC0, (code & 0x3F) + 1, -147, (i * 30 - 9), 0, 3);
                }
            }
        }
    }
    {
        func_801964F8(0, 14, -56, 0, 151, 166, 199, 200, 4);
        func_801964F8(0, 42, -56, 0, 151, 166, 199, 200, 4);
        func_801964F8(0, 70, -56, 0, 151, 166, 199, 200, 4);
        func_801964F8(0, 102, -56, 0, 151, 166, 199, 200, 4);
        func_801964F8(0, 134, -56, 0, 151, 166, 199, 200, 4);
    }
    {
        s32 i = 0;
        s16 *selector = &D_801DA5D2;
        for (; i < 4; ++i) {
            if (func_801C1C5C(i, *selector) == 0) continue;
            if (func_801C1C5C(i, *selector) == 3) break;
            {
                register s32 x __asm__("$4") = -10;
                u32 selected = (s32)*selector;
                register u8 *base __asm__("$8");
                register u8 *record __asm__("$16");
                u32 id;
                __asm__("" : "=r"(selected) : "0"(selected), "r"(x));
                base = D_800FF748;
                __asm__("" : "=r"(base) : "0"(base), "r"(x), "r"(selected));
                selected += i;
                id = *(u8 *)((u32)base + selected + 0xAB50);
                record = (u8 *)(id * 36);
                record = (u8 *)((u32)record + 0x8F24);
                record = (u8 *)((u32)base + (u32)record);
                func_801A89F0(x, (i * 30 - 14), 20, record[5], 10, 2, 6, 5);
                func_801A89F0(18, (i * 30 - 14), 20, record[6], 10, 2, 6, 5);
                func_801A89F0(46, (i * 30 - 14), 20, record[7], 10, 2, 6, 5);
                func_801A89F0(79, (i * 30 - 14), 20, *(u16 *)(record + 8), 10, 2, 6, 5);
                func_801A89F0(111, (i * 30 - 14), 20, *(u16 *)(record + 10), 10, 2, 6, 5);
                func_801A89F0(141, (i * 30 - 14), 20, record[4], 10, 2, 6, 5);
            }
        }
    }
    {
        s32 i = 0;
        u32 shade0 = 166;
        u32 shade1 = 199;
        u32 shade2 = 200;
        s32 y = -26;
        register u32 five __asm__("$17");
        for (; i < 5; ++i, y += 30) {
            five = 5;
            func_801964F8(0, -14, y, 181, 0, shade0, shade1, shade2, five);
        }
        func_80196800(0x60000000, -13, -25, 180, 120, 32, 32, 32, five);
    }
}
