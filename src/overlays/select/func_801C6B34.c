#include "common.h"

/* GCC 2.7.2's register allocation and scheduling differ from the original
 * without the real-value register bindings and empty constraints below. The
 * constraints contain no instructions and do not create values. The host
 * branch removes them; it requires guest addresses mapped to the same numeric
 * host addresses, matching aliases, and adapters for scratchpad and native
 * helper calls. Guest address arithmetic wraps at 32 bits in both branches. */
#if defined(_PSYQ) && defined(__mips__) && (__GNUC__ == 2)
#define REG_BIND(name) __asm__(name)
#define MATCH_ASM __asm__
#define MATCH_VOLATILE __asm__ volatile
typedef u32 GuestAddress;
#define SIGNED_WORD(value) ((s32)(value))
#define SCRATCH_BASE ((u8 *)0x1F800000)
#else
#define REG_BIND(name)
#define MATCH_ASM(...)
#define MATCH_VOLATILE(...)
typedef u32 GuestAddress;
static s32 signed_word_reference(u32 value) {
    if (value <= 0x7FFFFFFFU) return (s32)value;
    return -1 - (s32)(~value);
}
#define SIGNED_WORD(value) signed_word_reference((u32)(value))
extern u8 *we3_reference_scratch;
#define SCRATCH_BASE (we3_reference_scratch)
#endif
#define GUEST_PTR(base, offset) ((u8 *)((GuestAddress)(base) + (GuestAddress)SIGNED_WORD(offset)))
#define GUEST_BYTE(base, offset) (*GUEST_PTR(base, offset))

extern u8 D_800FF748[], D_800C8568[], D_801D1BF9[];
extern u8 D_801DA2FF[], D_801DA300[], D_801DA337[], D_801DA338[];
extern u8 D_801DA308, D_801DA309, D_801DA341;
#if defined(_PSYQ) && defined(__mips__) && (__GNUC__ == 2)
extern volatile u8 D_801DA300_FIRST __asm__("D_801DA300");
#else
#define D_801DA300_FIRST (*(volatile u8 *)D_801DA300)
#endif
extern u8 D_8010A322, D_801D8B15, D_801D8B17, D_801D8DFD, D_801D8DFE;
extern u8 D_801DA330, D_801DA5C8, D_801DADBA, D_801DADCA, D_801DAE50;
extern u16 D_800AD638, D_8010A5A4;
extern s32 D_801DA058, D_801DA05C;
extern u32 func_8006EE60(u32), func_801C8D00(void), func_801C9110(u32,u32);
extern void func_800AB620(s32), func_801C84E8(void);
/* The native word views reproduce the measured argument extension and call
 * scheduling. The reference declarations match the recovered C callees. */
#if defined(_PSYQ) && defined(__mips__) && (__GNUC__ == 2)
extern u32 func_801C8CB4(void);
extern void func_801C88BC(u32,u32);
extern void func_801942E0(s32,u8*,s32,s32,s32,s32,s32,s32,s32,s32,s32,s32);
#else
extern u8 func_801C8CB4(void);
extern void func_801C88BC(u8,u8);
extern void func_801942E0(u8,u8*,u16,u16,u16,u8,u8,u8,u8,u8,u16,u8);
#endif
extern void func_800AD5F8(u8*,u8*), func_800AD618(u8*,u8*), func_800AD628(u8*,u8*,s32);

u32 func_801C6B34(void) {
    u8 *menu = D_800FF748;
    u8 *scratch = SCRATCH_BASE;
    s32 var_a2_5;
    s32 temp_v0_2;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 temp_v1_2;
    register s32 temp_v1_6 REG_BIND("$3");
    register s32 var_a0_3 REG_BIND("$4");
    register s32 var_a2 REG_BIND("$6");
    register s32 var_a2_10 REG_BIND("$6");
    register s32 var_a2_11 REG_BIND("$6");
    register s32 var_a2_12 REG_BIND("$6");
    register u32 var_a2_13 REG_BIND("$6");
    register s32 var_a2_2 REG_BIND("$6");
    register s32 var_a2_3 REG_BIND("$6");
    register s32 var_a2_4 REG_BIND("$6");
    register s32 var_a2_6 REG_BIND("$6");
    register s32 var_a2_7 REG_BIND("$6");
    register s32 var_a2_8 REG_BIND("$6");
    register s32 var_a2_9 REG_BIND("$6");
    register s32 var_s2 REG_BIND("$18");
    register s32 var_v0_2 REG_BIND("$2");
    register s32 var_v0_9 REG_BIND("$2");
    register s32 var_v1_4 REG_BIND("$3");
    u8 *var_v0_4;
    register u8 *var_v0_5 REG_BIND("$2");
    u8 *var_v0_8;
    u8 *var_v1;
    u8 *var_v1_2;
    s8 var_v0_3;
    register s32 var_v0_6 REG_BIND("$2");
    u16 temp_v0_3;
    register u8 *var_a0 REG_BIND("$4");
    register u8 *var_a0_2 REG_BIND("$4");
    u8 *var_v0_7;
    register u8 *var_v1_3 REG_BIND("$3");
    register u8 *var_v1_5 REG_BIND("$3");
    register u8 *var_v1_6 REG_BIND("$3");
    register u32 temp_s0 REG_BIND("$16");
    register u8 *records REG_BIND("$7");
    register u32 temp_s0_2 REG_BIND("$16");
    register u32 temp_s0_3 REG_BIND("$16");
    register u32 temp_s0_4 REG_BIND("$16");
    register u32 temp_s0_5 REG_BIND("$16");
    register u32 temp_s4 REG_BIND("$20");
    u8 temp_v0;
    register u32 temp_v0_4 REG_BIND("$2");
    register u32 temp_v0_5 REG_BIND("$2");
    u8 temp_v0_7;
    register u32 var_s0 REG_BIND("$16");
    register u32 var_s1 REG_BIND("$17");
    register s32 var_s2_2 REG_BIND("$18");
    register u32 var_s4 REG_BIND("$20");
    register u32 var_v0 REG_BIND("$2");

    switch (menu[0xABDA]) {                           /* switch 1 */
    case 0:                                         /* switch 1 */
        var_a2 = 9;
        var_v1 = &D_801DA309;
        D_801D8B17 = 1;
        D_801DA058 = 0;
        D_801DA05C = 0;
        do {
            *var_v1 = 0;
            var_a2 -= 1;
            var_v1 = (u8 *)((GuestAddress)var_v1 - 1U);
        } while (var_a2 >= 0);
        D_801DADCA = 0;
        D_801DADBA = 0;
        D_801D8DFD = 0;
        D_801D8DFE = 1;
        {
            u32 updated = func_801C8D00();
            MATCH_VOLATILE("" : : "r"(updated));
            (void)updated;
        }
        var_a2_2 = 0;
        records = D_800C8568;
loop_5:
        {
            register u32 mode REG_BIND("$3") = D_801DA330;
            register u32 slot REG_BIND("$4") = D_801D8B15;
            register GuestAddress row REG_BIND("$2") = mode * 11;
            register GuestAddress recordOffset REG_BIND("$5") = row * 16;
            register u32 displacement REG_BIND("$3");
            row = row * 2 + (GuestAddress)menu;
            MATCH_VOLATILE("" : : "r"(row));
            displacement = 0x8AEA;
            /* Preserve the real offset separately from the row and menu address. */
            MATCH_ASM("" : "=r"(displacement) : "0"(displacement));
            row += displacement;
            row += slot;
            row = *(u8 *)row;
            recordOffset += (GuestAddress)records;
            row = row * 8 + recordOffset;
            temp_s0 = *(u8 *)(row + var_a2_2);
        }
        temp_v1 = temp_s0 & 0xFF;
        GUEST_BYTE(D_801DA300, var_a2_2) = temp_s0;
        if (temp_v1 != 0) {
            if ((u32) ((temp_s0 + 0x7A) & 0xFF) < 0x1AU) {
                D_801DADCA += 0xA;
                var_a2_2 += 1;
            } else {
                register u32 threshold REG_BIND("$2") = temp_s0 + 0x60;
                if ((threshold & 0xFF) < 0x40U) {
                    D_801DADCA += 8;
                    var_a2_2 += 1;
                } else {
                    register s32 index REG_BIND("$2") = temp_v1 - 0x20;
                    MATCH_ASM("" : "=r"(index) : "0"(index));
                    D_801DADCA += GUEST_BYTE(D_801D1BF9, index * 2);
                    MATCH_VOLATILE("" : : "m"(D_801DADCA));
                    var_a2_2 += 1;
                }
            }
            D_801DADBA += 1;
            D_801DA05C = SIGNED_WORD((u32)D_801DA05C + 1U);
            if (var_a2_2 < 8) {
                goto loop_5;
            }
        }
        GUEST_BYTE(D_801DA300, var_a2_2) = 0;
        goto block_143;
    case 1:                                         /* switch 1 */
        var_a2_3 = 9;
        var_v1_2 = &D_801DA341;
        D_801DA058 = ((u32) *(u32 *)(scratch + 0x290) >> 4) & 1;
        do {
            *var_v1_2 = 0;
            var_a2_3 -= 1;
            var_v1_2 = (u8 *)((GuestAddress)var_v1_2 - 1U);
        } while (var_a2_3 >= 0);
        if (D_801DA058 != 0) {
            GUEST_BYTE(D_801DA338, D_801DA05C) = 0x7C;
        }
        var_s2 = 0;
        var_a2_4 = 0;
        {
        register u32 marker REG_BIND("$5") = 0x7C;
        MATCH_VOLATILE("" : : "r"(marker));
        var_a0 = D_801DA300;
        var_v1_3 = D_801DA338;
        do {
            if (GUEST_BYTE(D_801DA338, var_s2) == marker) {
                var_v1_3 = (u8 *)((GuestAddress)var_v1_3 + 1U);
                var_s2 += 1;
            } else {
                temp_v0 = *var_a0;
                var_a0 = (u8 *)((GuestAddress)var_a0 + 1U);
                var_a2_4 += 1;
                var_s2 += 1;
                *var_v1_3 = temp_v0;
                var_v1_3 = (u8 *)((GuestAddress)var_v1_3 + 1U);
            }
        } while (var_a2_4 < 9);
        }
        var_a2_5 = -0xA4;
        if (D_801DA058 != 0) {
            var_a2_5 = -0xA3;
        }
        func_801942E0(0x1F, D_801DA338, var_a2_5, (D_800AD638 * 0x10) - 0x49, 0x42, 3, 0, 0, 0, 2, 5, 1);
        func_801C84E8();
        temp_v0_2 = func_8006EE60(0);
        D_801DAE50 = 0;
        temp_v0_3 = temp_v0_2 | (*(u16 *)(scratch + 0x230) & 0xC);
        D_8010A5A4 = temp_v0_3;
        var_s0 = func_801C9110(temp_v0_3 & 0xFFFF, 0);
        var_s4 = func_801C8D00();
        if (D_8010A5A4 == 0x800) {
            var_s0 = 2;
            D_801D8DFD = 0xC;
            D_801D8DFE = 0;
            var_s4 = 0x14;
        } else if (D_8010A5A4 == 0x100) {
            var_s0 = 2;
            var_s4 = 0xDE;
        }
        {
            u32 bucket = func_801C8CB4();
            MATCH_VOLATILE("" : : "r"(bucket));
            func_801C88BC(0, bucket & 0xFF);
        }
        MATCH_ASM("" : "=r"(var_s0) : "0"(var_s0));
        var_v1_4 = var_s0 & 0xFF;
        if ((u32) ((var_s4 - 0x10) & 0xFF) < 5U) {
            {
                u32 bucket = func_801C8CB4();
                MATCH_VOLATILE("" : : "r"(bucket));
                func_801C88BC(1, bucket & 0xFF);
            }
            MATCH_ASM("" : "=r"(var_s0) : "0"(var_s0));
            var_v1_4 = var_s0 & 0xFF;
        }
        switch (var_v1_4) {
        case 2:
            var_s1 = var_s4;
            if ((u32)((var_s4 - 0x12) & 0xFF) < 3U) {
                u32 bucket = func_801C8CB4();
                MATCH_VOLATILE("" : : "r"(bucket));
                func_801C88BC(2, bucket & 0xFF);
                MATCH_ASM("" : "=r"(var_s1) : "0"(var_s1));
            }
            break;
        case 3:
            var_s1 = 0;
            var_v0_3 = 8;
            goto reset_column;
        case 4:
            var_s1 = 0;
            var_v0_3 = 4;
reset_column:
            D_801D8DFD = var_v0_3;
            D_801D8DFE = 0;
            {
                u32 updated = func_801C8D00();
                MATCH_VOLATILE("" : : "r"(updated));
                (void)updated;
            }
            MATCH_ASM("" : "=r"(var_s1) : "0"(var_s1));
            break;
        default:
            var_s1 = var_s0;
            break;
        }
        var_v0_2 = var_s1 & 0xFF;
        MATCH_ASM("" : "=r"(var_v0_2) : "0"(var_v0_2));
        switch (var_v0_2) {                         /* switch 2 */
        case 16:                                    /* switch 2 */
            func_801C88BC(2, 0);
            if (D_801DA05C > 0) {
                func_800AB620(0x528);
                D_801DA05C = SIGNED_WORD((u32)D_801DA05C - 1U);
            } else {
                goto block_48;
            }
            goto block_143;
        case 17:                                    /* switch 2 */
            func_801C88BC(2, 1);
            if (D_801DA05C < (s32) D_801DADBA) {
                func_800AB620(0x528);
                D_801DA05C = SIGNED_WORD((u32)D_801DA05C + 1U);
            } else {
                goto block_48;
            }
            goto block_143;
block_48:
            func_800AB620(0x512);
            goto block_143;
        case 18:                                    /* switch 2 */
            func_800AB620(0x528);
            var_a2_6 = 8;
            var_v0_4 = &D_801DA308;
            do {
                *var_v0_4 = 0;
                var_a2_6 -= 1;
                var_v0_4 = (u8 *)((GuestAddress)var_v0_4 - 1U);
            } while (var_a2_6 >= 0);
            D_801DA05C = 0;
            D_801DADCA = 0;
            D_801DADBA = 0;
            var_v0 = menu[0xABDA] + 1;
            goto block_144;
        case 19:                                    /* switch 2 */
            func_800AB620(0x529);
            {
                register u32 state REG_BIND("$3") = menu[0xABDA];
                register u32 one REG_BIND("$2") = 1;
                D_801DAE50 = one;
                D_801DA058 = 0;
                menu[0xABDA] = state + 1;
            }
            return 0U;
        case 20:                                    /* switch 2 */
            if (D_801DADBA != 0) {
                func_800AB620(0x528);
                var_a2_7 = 7;
                {
                    register u32 displacement REG_BIND("$4") = 0x8AEA;
                    register u32 mode REG_BIND("$2");
                    register u32 slot REG_BIND("$5");
                    register GuestAddress addr REG_BIND("$2");
                    register GuestAddress table REG_BIND("$4");
                    MATCH_VOLATILE("" : "=r"(displacement) : "0"(displacement));
                    mode = D_801DA330;
                    slot = D_801D8B15;
                    var_v1_5 = (u8 *)(GuestAddress)(mode * 11);
                    MATCH_ASM("" : "=r"(var_v1_5) : "0"(var_v1_5));
                    addr = (GuestAddress)var_v1_5 * 2 + (GuestAddress)menu + displacement + slot;
                    MATCH_VOLATILE("" : : "r"(addr));
                    var_v1_5 = (u8 *)((GuestAddress)var_v1_5 * 16);
                    addr = *(u8 *)addr;
                    table = (GuestAddress)D_800C8568;
                    addr = addr * 8 + table;
                    var_v1_5 = (u8 *)((GuestAddress)var_v1_5 + addr);
                }
                var_v0_5 = var_v1_5 + 7;
                do {
                    *var_v0_5 = 0;
                    var_a2_7 -= 1;
                    var_v0_5 = (u8 *)((GuestAddress)var_v0_5 - 1U);
                } while (var_a2_7 >= 0);
                {
                register u32 first REG_BIND("$2") = D_801DA300_FIRST;
                MATCH_VOLATILE("" : : "r"(first));
                if (first != 0) {
                    var_a0_2 = D_801DA300;
                    do {
                        temp_v0_4 = *(volatile u8 *)var_a0_2;
                        MATCH_ASM("" : "=r"(var_a0_2) : "0"(var_a0_2), "r"(temp_v0_4));
                        var_a0_2 = (u8 *)((GuestAddress)var_a0_2 + 1U);
                        *var_v1_5 = temp_v0_4;
                        var_v1_5 = (u8 *)((GuestAddress)var_v1_5 + 1U);
                    } while (*(volatile u8 *)var_a0_2 != 0);
                }
                }
                D_801DA058 = 0;
                var_v0 = menu[0xABDA] + 1;
                D_801DAE50 = 2;
                goto block_144;
            }
            goto block_102;
        case 22:                                    /* switch 2 */
            func_800AB620(0x528);
            D_801DAE50 = 0;
            temp_v0_5 = D_801DA5C8 ^ 1;
            D_801DA5C8 = temp_v0_5;
            if (temp_v0_5 == 1) {
                var_v0_6 = 0xB;
            } else {
                var_v0_6 = 0xD;
            }
            D_801D8DFD = var_v0_6;
            goto block_143;
        case 1:                                     /* switch 2 */
            if (D_801DA05C != 0) {
                func_800AB620(0x529);
                temp_s4 = GUEST_BYTE(D_801DA2FF, D_801DA05C);
                if ((u32) ((temp_s4 + 0x7A) & 0xFF) < 0x1AU) {
                    D_801DADCA -= 0xA;
                } else {
                    register u32 threshold REG_BIND("$2") = temp_s4 + 0x5A;
                    if ((threshold & 0xFF) < 0x38U) {
                        D_801DADCA -= 8;
                    } else {
                        register s32 index REG_BIND("$2") = (temp_s4 & 0xFF) - 0x20;
                        MATCH_ASM("" : "=r"(index) : "0"(index));
                        D_801DADCA -= GUEST_BYTE(D_801D1BF9, index * 2);
                    }
                }
                var_a2_8 = D_801DA05C;
                D_801DADBA -= 1;
                if (var_a2_8 < 0xA) {
                    do {
                        GUEST_BYTE(D_801DA2FF, var_a2_8) = GUEST_BYTE(D_801DA300, var_a2_8);
                        var_a2_8 += 1;
                    } while (var_a2_8 < 0xA);
                }
                {
                    register u32 value REG_BIND("$2") = D_801DA05C;
                    value -= 1U;
                    MATCH_ASM("" : "=r"(value) : "0"(value));
                    D_801DA05C = SIGNED_WORD(value);
                }
                return 0U;
            }
            D_801DADCA = 0;
            D_801DADBA = 0;
            var_a2_9 = 7;
            if (D_801DA300[0] != 0) {
                var_v0_7 = GUEST_PTR(D_801DA300, 7);
                do {
                    *var_v0_7 = 0;
                    var_a2_9 -= 1;
                    var_v0_7 = (u8 *)((GuestAddress)var_v0_7 - 1U);
                } while (var_a2_9 >= 0);
                return 0U;
            }
            var_a2_10 = 0;
            records = D_800C8568;
loop_77:
        {
            register u32 mode REG_BIND("$3") = D_801DA330;
            register u32 slot REG_BIND("$4") = D_801D8B15;
            register GuestAddress row REG_BIND("$2") = mode * 11;
            register GuestAddress recordOffset REG_BIND("$5") = row * 16;
            register u32 displacement REG_BIND("$3");
            row = row * 2 + (GuestAddress)menu;
            MATCH_VOLATILE("" : : "r"(row));
            displacement = 0x8AEA;
            /* Preserve the real offset separately from the row and menu address. */
            MATCH_ASM("" : "=r"(displacement) : "0"(displacement));
            row += displacement;
            row += slot;
            row = *(u8 *)row;
            recordOffset += (GuestAddress)records;
            row = row * 8 + recordOffset;
            temp_s0_2 = *(u8 *)(row + var_a2_10);
        }
            temp_v1_2 = temp_s0_2 & 0xFF;
            GUEST_BYTE(D_801DA300, var_a2_10) = temp_s0_2;
        if (temp_v1_2 != 0) {
            if ((u32) ((temp_s0_2 + 0x7A) & 0xFF) < 0x1AU) {
                D_801DADCA += 0xA;
                var_a2_10 += 1;
            } else {
                register u32 threshold REG_BIND("$2") = temp_s0_2 + 0x60;
                if ((threshold & 0xFF) < 0x40U) {
                    D_801DADCA += 8;
                    var_a2_10 += 1;
                } else {
                    register s32 index REG_BIND("$2") = temp_v1_2 - 0x20;
                    MATCH_ASM("" : "=r"(index) : "0"(index));
                    D_801DADCA += GUEST_BYTE(D_801D1BF9, index * 2);
                    MATCH_VOLATILE("" : : "m"(D_801DADCA));
                    var_a2_10 += 1;
                }
            }
            D_801DADBA += 1;
            D_801DA05C = SIGNED_WORD((u32)D_801DA05C + 1U);
            if (var_a2_10 < 8) {
                goto loop_77;
            }
        }
            GUEST_BYTE(D_801DA300, var_a2_10) = 0;
            return 0U;
        default:                                    /* switch 2 */
            {
            register u32 action REG_BIND("$3") = var_s0 & 0xFF;
            MATCH_ASM("" : "=r"(action) : "0"(action));
            if (action == 2) {
                MATCH_ASM("" : "=r"(action) : "0"(action));
                var_a0_3 = 1;
                var_a2_11 = 1;
                if ((u32) ((var_s4 + 0x7A) & 0xFF) < 0x1AU) {
                    var_s2_2 = 0xA;
                } else {
                    var_s2_2 = 8;
                    if ((u32) ((var_s4 + 0x5A) & 0xFF) >= 0x38U) {
                        if ((u32) ((var_s4 + 0x22) & 0xFF) < 2U) {
                            var_a0_3 = 0;
                            if (D_8010A5A4 != 0x100) goto simple_modifier;
                            {
                                register s32 cursor REG_BIND("$2") = D_801DA05C;
                                temp_s0_3 = GUEST_BYTE(D_801DA2FF, cursor);
                            }
                            {
                                register u32 comparison REG_BIND("$2") = 0xB3;
                                MATCH_ASM("" : "=r"(temp_s0_3) : "0"(temp_s0_3), "r"(comparison));
                                if ((temp_s0_3 & 0xFF) == comparison) goto simple_modifier;
                            }
                            var_s2_2 = 2;
                            if (((u32) ((temp_s0_3 + 0x4A) & 0xFF) >= 0xFU) && ((u32) ((temp_s0_3 + 0x36) & 0xFF) >= 5U)) {
                                var_s2_2 = 0;
                                if ((u32) ((temp_s0_3 + 0x6B) & 0xFF) >= 5U) {
                                    register u32 threshold REG_BIND("$2");
                                    var_s2_2 = -2;
                                    threshold = temp_s0_3 + 0x7A;
                                    if ((u32) (threshold & 0xFF) >= 0x1AU) {
                                        var_s2_2 = 0;
                                        var_a2_11 = 0;
                                    }
                                }
                            }
                            goto modifier_done;
simple_modifier:
                            var_s2_2 = 2;
modifier_done:
                            ;
                        } else {
                            register s32 index REG_BIND("$2") = (var_s4 & 0xFF) - 0x20;
                            MATCH_ASM("" : "=r"(index) : "0"(index));
                            var_s2_2 = GUEST_BYTE(D_801D1BF9, index * 2);
                        }
                    }
                }
                if ((var_a2_11 != 0) && ((D_801DADCA + var_s2_2) < 0x41) && ((D_801DADBA + var_a0_3) < 9)) {
                    goto valid_character;
                }
block_102:
                func_800AB620(0x512);
                return 0U;
valid_character:
                func_800AB620(0x528);
                var_a2_12 = 9;
                var_v0_8 = &D_801DA341;
                do {
                    *var_v0_8 = 0;
                    var_a2_12 -= 1;
                    var_v0_8 = (u8 *)((GuestAddress)var_v0_8 - 1U);
                } while (var_a2_12 >= 0);
                temp_v0_6 = var_s4 + 0x22;
                if (D_801DA05C != 0) {
                    if ((u32) (temp_v0_6 & 0xFF) < 2U) {
                        register u8 *stage REG_BIND("$19") = D_801DA338;
                        register u8 *outarg REG_BIND("$4") = stage;
                        register u8 *input REG_BIND("$17");
                        MATCH_VOLATILE("" : "=r"(outarg) : "0"(outarg));
                        input = D_801DA2FF;
                        temp_s0_4 = GUEST_BYTE(D_801DA2FF, D_801DA05C);
                        func_800AD618(outarg, GUEST_PTR(input, 1));
                        if (D_8010A5A4 == 0x100) {
                            register s32 cursor REG_BIND("$4") = D_801DA05C;
                            register GuestAddress address REG_BIND("$2") = (GuestAddress)input + (GuestAddress)cursor;
                            MATCH_ASM("" : "=r"(address) : "0"(address));
                            temp_s0_5 = *(u8 *)address;
                            MATCH_ASM("" : "=r"(temp_s0_5) : "0"(temp_s0_5));
                            {
                            register u32 check REG_BIND("$2") = (temp_s0_5 + 0x4A) & 0xFF;
                            MATCH_ASM("" : "=r"(stage) : "0"(stage), "r"(check));
                            var_v1_6 = (u8 *)((GuestAddress)stage - 1U);
                            if (check < 0xFU) {
                                var_v1_6 = (u8 *)((GuestAddress)SIGNED_WORD(cursor) + (GuestAddress)var_v1_6);
                                *var_v1_6 -= 0x30;
                                goto staging_complete;
                            }
                            if ((u32)((temp_s0_5 + 0x7A) & 0xFF) < 0xFU) goto add_30;
                            var_v1_6 = (u8 *)((GuestAddress)SIGNED_WORD(cursor) + (GuestAddress)var_v1_6);
                            if ((u32)((temp_s0_5 + 0x36) & 0xFF) < 5U) {
                                *var_v1_6 -= 0x35;
                                goto staging_complete;
                            }
                            MATCH_ASM("" : "=r"(stage) : "0"(stage));
                            var_v1_6 = (u8 *)((GuestAddress)stage - 1U);
                            if ((u32)((temp_s0_5 + 0x6B) & 0xFF) < 5U) {
                                var_v1_6 = (u8 *)((GuestAddress)SIGNED_WORD(cursor) + (GuestAddress)var_v1_6);
                                *var_v1_6 += 5;
                                goto staging_complete;
                            }
                            MATCH_ASM("" : "=r"(stage) : "0"(stage));
                            {
                            if ((u32)((temp_s0_5 + 0x66) & 0xFF) >= 5U) goto special_byte;
add_30:
                            var_v1_6 = (u8 *)((GuestAddress)SIGNED_WORD(cursor) + (GuestAddress)var_v1_6);
                            *var_v1_6 += 0x30;
                            goto staging_complete;
special_byte:
                            {
                            register u32 sentinel REG_BIND("$2") = 0x9F;
                            temp_v1_6 = temp_s0_5 & 0xFF;
                            MATCH_ASM("" : "=r"(temp_v1_6) : "0"(temp_v1_6));
                            if (temp_v1_6 == sentinel) {
                                register u8 *dst REG_BIND("$2");
                                dst = (u8 *)((GuestAddress)stage - 1U);
                                MATCH_ASM("" : "=r"(dst) : "0"(dst), "r"(stage));
                                dst = (u8 *)((GuestAddress)SIGNED_WORD(cursor) + (GuestAddress)dst);
                                *dst = 0xB3;
                            } else if (temp_v1_6 == 0xB3) {
                                register u8 *dst REG_BIND("$2");
                                dst = (u8 *)((GuestAddress)stage - 1U);
                                MATCH_ASM("" : "=r"(dst) : "0"(dst), "r"(stage));
                                dst = (u8 *)((GuestAddress)SIGNED_WORD(cursor) + (GuestAddress)dst);
                                *dst = 0x9F;
                            }
                            }
                            }
                            }
                        } else if ((u32) ((temp_s0_4 + 0x4A) & 0xFF) < 0xFU) {
                            if ((var_s4 & 0xFF) == 0xDE) {
                                register GuestAddress address REG_BIND("$2") = (GuestAddress)D_801DA05C;
                                register GuestAddress value REG_BIND("$3");
                                MATCH_ASM("" : "=r"(stage) : "0"(stage), "r"(address));
                                value = (GuestAddress)stage - 1U;
                                MATCH_ASM("" : "=r"(value) : "0"(value));
                                address += value;
                                MATCH_ASM("" : "=r"(address) : "0"(address));
                                value = temp_s0_4 + 0xD0;
                                *(u8 *)address = value;
                            } else {
                                var_v0_9 = temp_s0_4 + 0x36;
                                goto block_125;
                            }
                        } else {
                            var_v0_9 = temp_s0_4 + 0x36;
block_125:
                            if ((u32) (var_v0_9 & 0xFF) < 5U) {
                                if ((var_s4 & 0xFF) == 0xDE) {
                                    register u32 cursor REG_BIND("$3") = (u32)D_801DA05C;
                                    register u32 value REG_BIND("$2");
                                    MATCH_ASM("" : "=r"(temp_s0_4) : "0"(temp_s0_4), "r"(cursor));
                                    value = temp_s0_4 + 0xCB;
                                    MATCH_ASM("" : "=r"(value) : "0"(value));
                                    *(u8 *)((GuestAddress)D_801DA337 + (GuestAddress)SIGNED_WORD(cursor)) = value;
                                } else {
                                    register u32 value REG_BIND("$2") = temp_s0_4 + 0xD0;
                                    register u32 cursor REG_BIND("$3") = (u32)D_801DA05C;
                                    *(u8 *)((GuestAddress)D_801DA337 + (GuestAddress)SIGNED_WORD(cursor)) = value;
                                }
                            } else {
                                register u32 oldChar REG_BIND("$3") = temp_s0_4 & 0xFF;
                                MATCH_ASM("" : "=r"(oldChar) : "0"(oldChar));
                                if ((oldChar == 0xB3) && ((var_s4 & 0xFF) == 0xDE)) {
                                    GUEST_BYTE(D_801DA337, D_801DA05C) = 0x9F;
                                } else {
                                    func_800AB620(0x512);
                                    var_s2_2 = 0;
                                }
                            }
                        }
                    } else {
                        func_800AD628(D_801DA338, D_801DA300, D_801DA05C);
                        GUEST_BYTE(D_801DA338, D_801DA05C) = var_s4;
                        func_800AD628(GUEST_PTR(D_801DA338, (u32)D_801DA05C + 1U), GUEST_PTR(D_801DA300, D_801DA05C), SIGNED_WORD((u32)D_801DADBA - (u32)D_801DA05C));
                    }
                } else if ((u32) (temp_v0_6 & 0xFF) < 2U) {
                    func_800AD618(D_801DA338, D_801DA300);
                    func_800AB620(0x512);
                } else {
                    D_801DA338[0] = var_s4;
                    func_800AD5F8(D_801DA338, D_801DA300);
                }
staging_complete:
                D_801DA300[0] = D_801DA338[0];
                var_a2_13 = 0;
                if (D_801DA338[0] != 0) {
                    do {
                        var_a2_13 += 1;
                        temp_v0_7 = GUEST_BYTE(D_801DA338, var_a2_13);
                        GUEST_BYTE(D_801DA300, var_a2_13) = temp_v0_7;
                    } while (temp_v0_7 != 0);
                    MATCH_VOLATILE("" : : "r"(var_a2_13));
                }
                D_801DADCA += var_s2_2;
                MATCH_VOLATILE("" : : "m"(D_801DADCA));
                {
                    register u32 threshold REG_BIND("$2") = var_s4 + 0x22;
                    u32 modifier;
                    MATCH_ASM("" : "=r"(threshold) : "0"(threshold));
                    modifier = (threshold & 0xFF) < 2U;
                    if (modifier) return 0U;
                    {
                        register u32 count REG_BIND("$2") = D_801DADBA;
                        register u32 cursor REG_BIND("$3") = (u32)D_801DA05C;
                        MATCH_VOLATILE("" : : "r"(count), "r"(cursor));
                        count += 1U;
                        cursor += 1U;
                        MATCH_ASM("" : "=r"(count), "=r"(cursor) : "0"(count), "1"(cursor));
                        D_801DADBA = count;
                        D_801DA05C = SIGNED_WORD(cursor);
                        {
                            const u32 result = 0;
                            MATCH_VOLATILE("" : : "i"(0));
                            return result;
                        }
                    }
                }
            }
            return 0U;
            }
        }
        break;
    case 2:                                         /* switch 1 */
    case 3:                                         /* switch 1 */
    case 4:                                         /* switch 1 */
    case 5:                                         /* switch 1 */
    case 6:                                         /* switch 1 */
block_143:
        var_v0 = menu[0xABDA] + 1;
block_144:
        menu[0xABDA] = var_v0;
        return 0U;
    case 7:                                         /* switch 1 */
        menu[0xABDA] = 1U;
        return D_801DAE50;
    default:                                        /* switch 1 */
        return 0U;
    }
}
