#include "common.h"

extern u8 D_800FF748[];
extern u8 D_80108667;
extern u8 D_801D1A54[], D_801D1A55[], D_801D1A56[];
extern u16 D_8010A5A4;
/* Caller ABI views, not recovered complete prototypes: EC80 returns the
 * observed low halfword; the other predicates retain their full word result.
 * 93FB4 narrows its mixed-width descriptor fields internally. */
extern void func_8018E538(u32), func_800171C4(u32), func_800171FC(u32);
extern void func_800171DC(void), func_8004FC54(u32), func_800AB620(s32);
extern s32 func_80019B64(u32), func_8006F07C(u32), func_8006F0DC(u32, u32);
extern u16 func_8006EC80(u32);
extern void func_80193FB4(u32, u32, s32, s32, s32, u32, u32, u32,
                         u32, u32, u32, u32, u32, u32, u32, u32, u32);

void func_8018DF30(void) {
    /* Retain the measured persistent base and scratch-register allocations. */
    register u8 *base __asm__("$23") = D_800FF748;
    register u8 *scratch __asm__("$21") = (u8 *)0x1F800000;
    u32 code, green, blue;
    u8 red;
    s32 mode;
    u16 input;

    if (scratch[0x2E1] == 1) {
        code = 0x30FF;
        {
            register u32 initialRed __asm__("$8") = 100;
            /* Empty identity retains the byte-capture register and spill width. */
            __asm__ volatile("" : "=r"(initialRed) : "0"(initialRed));
            red = initialRed;
        }
        green = 120;
        blue = 120;
    } else {
        register u32 index __asm__("$3") = D_80108667 & 15;
        u32 offset = index * 3;
        {
            register u32 initialRed __asm__("$8") = D_801D1A54[offset];
            /* No instructions: keep the first table read before the key sum,
             * retaining the already-captured offset for the other two reads. */
            __asm__ volatile("" : "=r"(index) : "0"(index), "r"(initialRed));
            code = index + 0x30F9;
            red = initialRed;
        }
        green = D_801D1A55[offset];
        blue = D_801D1A56[offset];
    }
    /* Empty input preserves the scratch base across callback paths. */
    __asm__ volatile("" : : "r"(scratch));
    /* Capture dispatch once. Its seven table words all target these cases. */
    switch ((u8)scratch[0x29B]) {
    case 0:
        func_8018E538(0);
        scratch[0x330] = 0;
        goto resetTail;
    case 1:
        if (!func_80019B64(0xC9))
            break;
        func_80193FB4(1, code, 0, 0, 0, 24, 0, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 1, 1);
        func_80193FB4(55, 0x30EE, 0, 0, 0, 13, 211, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 6, 1);
        func_80193FB4(56, 0x30EF, 0, 0, 0, 14, 211, 4096, 4096, 0, 0,
                     128, 128, 128, 0, 6, 1);
        {
            register u32 capturedRed __asm__("$8") = red;
            /* Empty identity retains the measured post-call byte reload before
             * the ordered six stores; it emits no instructions or memory access. */
            __asm__ volatile("" : "=r"(capturedRed) : "0"(capturedRed));
            base[0x666F] = green;
            base[0x6670] = blue;
            base[0x666E] = capturedRed;
            base[0x6696] = capturedRed;
            base[0x6697] = green;
            base[0x6698] = blue;
        }
        func_800171DC();
        scratch[0x330] = 1;
        break;
    case 2:
        if (func_8006F07C(16))
            func_800171DC();
        break;
    case 3:
        input = func_8006EC80(0);
        D_8010A5A4 = input;
        if (input == 0x20 || input == 0x800) {
            func_800AB620(0x528);
            func_800171DC();
        }
        break;
    case 4:
        if (!func_8006F0DC(16, 0))
            break;
        func_8004FC54(0);
        scratch[0x330] = 0;
resetTail:
        scratch[0x29F] = 0;
        func_800171DC();
        break;
    case 5:
        if (func_80019B64(0xCA)) {
            scratch[0x330] = 1;
            func_800171DC();
        }
        break;
    case 6:
        func_800AB620(0x205);
        mode = base[0x8F1F];
        switch (mode & 15) {
        case 0:
            mode = 33;
            break;
        case 1:
            if (((u32)mode >> 6) & 1)
                goto defaultMode;
            mode = 35;
            break;
        case 6:
        case 7:
            mode = 32;
            break;
        default:
defaultMode:
            mode = 34;
            break;
        }
        func_800171C4(mode);
        func_800171FC(0);
        base[0xABDA] = 0;
        break;
    }
}
