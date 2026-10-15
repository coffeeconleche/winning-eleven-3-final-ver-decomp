#include "common.h"

/* Existing scratch storage, with byte-based record/vector access views.
 * Complete layouts, helper APIs, alias contracts and the historical return
 * declaration remain provisional; these declarations allocate no storage.
 * The two marked matching aids are measured scheduling/allocation choices,
 * not recovered historical source or hardware-volatility claims. */
extern s16 scratch124 __asm__("0x1F800124");
extern s16 scratch126 __asm__("0x1F800126");
extern s16 scratch128 __asm__("0x1F800128");
extern u16 scratch134 __asm__("0x1F800134");
extern u16 scratch136 __asm__("0x1F800136");
extern u16 scratch138 __asm__("0x1F800138");
extern u32 scratch13C __asm__("0x1F80013C");
extern u32 scratch140 __asm__("0x1F800140");
extern u32 scratch144 __asm__("0x1F800144");
extern u32 scratch14C __asm__("0x1F80014C");
extern u32 scratch150 __asm__("0x1F800150");
extern u32 scratch154 __asm__("0x1F800154");
extern u8 *func_8004E6D4(u8, u8);
extern void func_800B1488(void *, void *);
extern void func_800B1348(void *, void *);
extern void func_800B1318(void *, void *);
extern void func_800B12C8(void *, void *, void *);

void func_8005C2AC(u8 *record, u8 selector, u8 index,
                   u8 angle, u8 negate)
{
    /* negate is the byte loaded from the fifth argument's caller stack slot. */
    u8 *vector = func_8004E6D4(selector, index);
    /* Real scratch base, assigned below before every use. The binding retains
     * the measured allocation across the unchanged helper calls. */
    register u8 *scratch __asm__("$18");
    s32 rotation;
    s32 z;

    scratch13C = *(s16 *)(record + 2);
    scratch140 = *(s16 *)(record + 4);
    scratch = (u8 *)0x1F800000;
    rotation = 0x1C0 - angle;
    z = *(s16 *)(record + 6);
    scratch124 = 0;
    scratch144 = z;
    /* Byte angle bounds rotation to 193..448; remainder and scaling fit. */
    scratch126 = (rotation % 256) * 16;
    scratch128 = 0;
    scratch14C = *(u32 *)(record + 0x2C);
    scratch150 = *(u32 *)(record + 0x30);
    scratch154 = *(u32 *)(record + 0x34);
    func_800B1488((void *)0x1F800124, (void *)0x1F800104);
    func_800B1348((void *)0x1F800104, (void *)0x1F80014C);
    func_800B1318((void *)0x1F800104, (void *)0x1F80013C);
    if (negate == 0) {
        scratch134 = *(u16 *)(vector + 0);
    } else {
        scratch134 = -*(u16 *)(vector + 0);
    }
    scratch136 = *(u16 *)(vector + 2);
    scratch138 = *(u16 *)(vector + 4);
    /* Consume the actual initialized final halfword before argument setup.
     * This empty input emits no instructions or extra memory accesses. */
    __asm__ volatile ("" : : "m"(scratch138));
    func_800B12C8(scratch + 0x104, scratch + 0x134, scratch + 0x13C);
    /* Word additions wrap before the observed halfword output narrowing. */
    *(u16 *)(scratch + 0xF0) = *(u32 *)(scratch + 0x13C) + *(u16 *)(record + 2);
    *(u16 *)(scratch + 0xF2) = *(u32 *)(scratch + 0x140) + *(u16 *)(record + 4);
    *(u16 *)(scratch + 0xF4) = *(u32 *)(scratch + 0x144) + *(u16 *)(record + 6);
}
