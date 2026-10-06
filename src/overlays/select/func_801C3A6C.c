#include "common.h"

extern u8 D_8010A5B1, D_801D4298;
extern void *D_801D5848[];
/* Observed source prefix consumed by func_801941E0, not a complete object type. */
typedef struct {
    u16 half[4];
    u8 byte[12];
} Fields20;
extern Fields20 D_801D8D78;
extern u8 scratchA2 __asm__("0x1F8002A2");
/* Call-site word views. The helpers narrow stored fields internally; complete
 * original argument names and APIs are unknown. */
extern void func_80193FB4(u32, u32, u32, u32, u32, u32, u32, u32, u32,
    u32, u32, u32, u32, u32, u32, u32, u32);
extern void func_801942E0(u32, void *, u32, u32, u32, u32, u32, u32, u32,
    u32, u32, u32);
extern void func_801C3888(s32);
extern void func_801941E0(u32, u32, void *, u32, u32, u32);

/* Initialize the observed descriptor keys and the unsigned eight-entry pair
 * sequence. Selection is read unsigned for the pointer table, then reloaded
 * signed after the callback. No bounds or additional state guards are inferred. */
void func_801C3A6C(void) {
    u32 firstIndex = 55;
    register u32 firstKey __asm__("$5") = 0x3000;
    register u32 firstWord __asm__("$6") = 0x01000000;
    register u32 firstFourth __asm__("$7") = 0;
    u32 i = 0;
    u32 flag = (D_8010A5B1 >> 2) | 0xFC;
    /* Five call-register bindings and these two empty captures preserve the
     * first argument setup and the final prefix address. They emit no accesses,
     * instructions or clobbers; the 112-byte frame needs no reservation. */
    __asm__("" : "=r"(firstIndex) : "0"(firstIndex), "r"(firstKey), "r"(firstWord), "r"(firstFourth));
    func_80193FB4(firstIndex, firstKey, firstWord, firstFourth, 0, 13, flag,
        4096, 4096, 0, 0, 80, 80, 80, 0, 6, 1);
    func_80193FB4(56, 0x3001, 0x01000000, 0, 0, 14, flag,
        4096, 4096, 0, 0, 80, 80, 80, 0, 6, 1);
    func_80193FB4(57, 0x3002, 0x01000000, 0, 0, 15, flag,
        4096, 4096, 0, 0, 80, 80, 80, 0, 6, 1);
    func_80193FB4(1, 0x7003, 0, 0, 0, 26, 0,
        4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
    func_80193FB4(2, 0x7000, 0, 0, 0, 9, 0,
        4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
    func_80193FB4(10, 0x7002, 0, 0, 0, 12, 0,
        4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
    func_80193FB4(20, 0x7001, 0x40000000, 0, 0, 12, 0,
        4096, 4096, 0, 0, 112, 112, 112, 0, 4, 1);
    for (; (u8)i < 8; ++i) {
        u32 index = (u8)i;
        func_80193FB4(index + 11, index + 0x700C, 0, 0, 0, 12, 0,
            4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
        func_80193FB4(index + 21, index + 0x7004, 0x40000000, 0, 0, 12, 0,
            4096, 4096, 0, 0, 112, 112, 112, 0, 4, 1);
    }
    func_801942E0(0, D_801D5848[D_801D4298], -156, 62, 312, 0, 0, 0, 0, 3, 1, 1);
    func_801C3888((s8)D_801D4298);
    {
        register u32 packetIndex __asm__("$4") = 0;
        register u32 packetWord __asm__("$5") = 0;
        Fields20 *fields = &D_801D8D78;
        __asm__("" : "=r"(fields) : "0"(fields), "r"(packetIndex), "r"(packetWord));
        fields->half[1] = 78;
        fields->half[2] = 320;
        fields->half[3] = 34;
        fields->byte[9] = 32;
        fields->byte[6] = 32;
        fields->byte[3] = 32;
        fields->byte[0] = 32;
        fields->byte[10] = 32;
        fields->byte[7] = 32;
        fields->byte[4] = 32;
        fields->byte[1] = 32;
        fields->byte[11] = 96;
        fields->byte[8] = 96;
        fields->byte[5] = 96;
        fields->byte[2] = 96;
        fields->half[0] = 0;
        func_801941E0(packetIndex, packetWord, fields, 0, 2, 1);
    }
    scratchA2 = 128;
}

