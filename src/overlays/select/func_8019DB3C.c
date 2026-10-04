#include "common.h"

extern u8 D_801DA2F4, D_801D8DFA, D_801D8DF7;
extern void func_8018E4AC(u8, u8, u8);
extern u8 *func_8001D004(u32);
/* Preserve the 17 word-sized call arguments before the callee narrows fields.
 * The original descriptor names and source prototype remain unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32, s32);

void func_8019DB3C(void) {
    u32 key;
    u8 *packet;
    u8 *field;
    u32 quotientValue;
    /* Retain the measured word remainder register before its byte narrowing. */
    register u32 remainderValue __asm__("$4");
    func_8018E4AC(38, 49, 0);
    {
        register u32 argument __asm__("$4") = D_801DA2F4 + 0x3038;
        /* Empty identity keeps the lookup argument live before the saved key copy. */
        __asm__("" : "=r"(argument) : "0"(argument));
        key = argument;
        packet = func_8001D004(argument);
    }
    /* This subtraction/division is signed, including byte values greater than 152. */
    func_80193FB4(38, key, 0, (152 - packet[1]) / 2, 0, 27, 0,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(39, 0x303F, 0, 0, 0, 27, 0,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(40, 0x304D, 0, 0, 0, 25, 0,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(43, 0x304E, 0, 0, 0, 10, 0,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 2, 1);
    /* The returned access view is byte-addressed; its complete format is unknown.
     * Reread each global after the preceding packet store, which can alias it. */
    packet = func_8001D004(0x304E);
    field = &D_801D8DFA;
    quotientValue = *field;
    packet[3] = (u8)(quotientValue / 10) * 16;
    remainderValue = *field;
    packet[15] = (u8)(remainderValue % 10) * 16;
    quotientValue = D_801D8DF7;
    packet[27] = (u8)(quotientValue / 10) * 16;
    remainderValue = D_801D8DF7;
    packet[39] = (u8)(remainderValue % 10) * 16;
}
