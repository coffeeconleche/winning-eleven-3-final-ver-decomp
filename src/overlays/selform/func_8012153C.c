#include "common.h"

extern u8 D_800FF748[];
extern u8 *func_8001D004(u32);
extern s32 func_8006FA84(u32, u32);
extern void func_80121670(u8);

/* Byte/word access views only; original descriptor and record meanings unknown. */
void func_8012153C(u8 selector) {
    u8 *scratch = (u8 *)0x1F800000;
    u8 other;
    u8 *record;
    u8 *destination;
    u8 *value;
    u8 *base;
    /* Keep the reused second lookup argument in its measured argument register. */
    register u32 callId asm("$4");
    u32 i;

    /* Retain the early saved scratch base independently of the initial mode
     * address, instead of hoisting a full loop address later. No code emitted. */
    __asm__("" : "=r"(scratch) : "0"(scratch));
    other = *(u8 *)0x1F8002E0 ^ selector;
    record = func_8001D004(selector + 0x6A);
    record[0xA] = 91;
    record[0x16] = 91;
    func_8006FA84(selector + 0x10, 0);
    func_8006FA84(other + 0x1C, 0);
    func_80121670(selector);
    value = func_8001D004(0x1002);
    callId = 0x1002;
    base = D_800FF748;
    /* Preserve argument/base setup before calculating the 40-byte entry. */
    __asm__("" : : "r"(callId), "r"(base));
    destination = (u8 *)((selector + 3) * 40 + (u32)base);
    *(u8 **)(destination + 0x5DCC) = value;
    *(u16 *)(destination + 0x5DD0) = selector * 65;
    record = func_8001D004(callId);
    i = 0;
    /* The mode byte is deliberately reloaded after every prior byte store. */
    do {
        if (scratch[0x2E1] == 5) {
            record[(u8)i * 12 + 0xA] = 91;
        } else if ((u8)i == 0) {
            record[0xA] = 221;
        } else {
            record[(u8)i * 12 + 0xA] = 9;
        }
        i++;
    } while ((u8)i < 11);
}
