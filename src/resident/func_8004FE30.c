#include "common.h"

/* Numeric scalar access views allocate no storage; their meanings are unknown. */
extern u8 scratch1EC __asm__("0x1F8001EC");
extern u32 scratch19C __asm__("0x1F80019C");
extern u32 scratch198 __asm__("0x1F800198");
extern u16 scratch294 __asm__("0x1F800294");
extern u8 scratch29F __asm__("0x1F80029F");
extern s32 func_800B6D78(void);
extern void func_800AB620(s32);
extern void func_8004FC54(u32);
extern void func_8001E138(u32, u32, u32);
extern void func_8001CEE0(u32, u32, u32, u32, u32, u32, u32, u32);
extern u8 *func_8001D004(u32);

/* Preserve ordered callbacks, full-word stack arguments and mixed-width stores.
 * The returned pointer is only an access view; APIs and original return
 * contract remain provisional (the pointer remains as result-register residue). */
void func_8004FE30(void)
{
    u32 one = 1;
    u8 *result;
    u32 selector;

    func_800B6D78();
    func_800AB620(17);
    func_800AB620(15);
    scratch1EC = 1;
    func_8004FC54(0);
    func_8001E138(0, 0, 0);
    func_8001CEE0(0, 50, 0, 0, 0, 10, 0, one);
    selector = 50;
    /* Empty real-selector identity preserves its original setup before these
     * stores. No register binding or instruction is needed; removing this
     * identity moves setup into the call delay slot and loses four bytes. */
    __asm__("" : "=r"(selector) : "0"(selector));
    scratch19C = one;
    scratch198 = 0;
    scratch294 = 0;
    scratch29F = 0;
    result = func_8001D004(selector);
    result[1] = 0;
    result[13] = 0;
}
