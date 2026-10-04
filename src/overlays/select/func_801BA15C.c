#include "common.h"
extern u8 D_800FF748[], D_80108668, D_801DA2F0;
extern u8 scratchState __asm__("0x1F80029B");
extern u32 scratchWord __asm__("0x1F800290");
extern s16 *D_8011CE58[];
extern u8 *D_8018B1F0[];
/* Caller access views preserve the supplied words. The child helpers narrow
 * bytes/halfwords internally; their complete original prototypes are unknown. */
extern s32 func_801BA564(void *, u32);
extern void func_80196FE8(u32, u32, s32, s32, s32, s32, s32, u32);
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801BA8EC(void *, u32), func_801BA7EC(void *), func_801BA614(void *);
extern void func_80197200(u32, u32, s32, s32, s32, u32);

/* Three mode-selected pointer-table passes. Record and ranking meanings are
 * unknown; callbacks may alter the nodes, coordinate rows and mode byte. */
void func_801BA15C(void) {
    /* These 24 bytes reproduce the measured 104-byte frame. Retail never
     * accesses them; the original local purpose is unknown. The final empty
     * output reserves space without emitting an instruction or memory access. */
    u8 frame[24];
    u32 gate = D_80108668;
    u8 *base = D_800FF748;
    /* Measured saved-coordinate/constant/status allocation and entry pointer
     * capture; removing these bindings changes the body or introduces spills. */
    register s16 *coordinates __asm__("$18");
    register s16 *initialCoordinates __asm__("$2") = D_8011CE58[gate];
    s32 i = 0;
    s32 mode;
    /* Retail saves s7 but never initializes it before three signed <10 tests.
     * The observed caller supplies no argument and discards the result. Retain
     * that target-register residue, not an invented initial value: this is not
     * defined host-C behavior, and a native port needs a separate policy. */
    register s32 residue __asm__("$23");
    register s32 status __asm__("$20");
    register s32 two __asm__("$21");
    s32 one;
    register u32 mappingOffset __asm__("$22");
    u8 *node;
    if (gate != 0) {
        /* Empty scheduling ties keep the map offset before the two constants
         * and retain the measured one/two allocation; no instructions emitted. */
        mappingOffset = 0xAB80;
        __asm__ volatile("" : : "r"(mappingOffset));
        one = 1;
        two = 2;
        __asm__ volatile("" : "=r"(one) : "0"(one), "r"(mappingOffset));
        coordinates = initialCoordinates;
        do {
            u32 packed;
            u32 row;
            u32 kind, number;
            s32 returned;
            u32 code;
            s32 x, y;
firstPass:
            /* Keep this mode read independent of the previous bound read. */
            __asm__ volatile("" : : : "memory");
            mode = base[0x8F20];
            {
                u8 **rowTable = (u8 **)((u32)D_8018B1F0 + mode * 64);
                node = rowTable[i];
            }
            returned = func_801BA564(node, node[7]);
            {
                /* The zero argument's scoped a1 binding preserves capture/
                 * submission order; it does not keep a register live later. */
                register u32 zero __asm__("$5") = 0;
                u32 key = node[7];
                s32 x0 = coordinates[0];
                s32 y0;
                u8 *mapping;
                mapping = base + key;
                mapping += mappingOffset;
                row = *mapping;
                y0 = coordinates[1];
                /* 32-bit PSX address view retains base-plus-scaled-index order.
                 * This is not a portable pointer-arithmetic contract. */
                {
                    u8 *address = (u8 *)(row * 36);
                    code = address[(u32)base + 0x8F25];
                }
                /* Finish the byte/halfword captures before saving the callback
                 * result, then keep that result in the measured saved register. */
                __asm__ volatile("" : "=r"(returned) : "0"(returned), "r"(code), "r"(x0), "r"(y0));
                status = returned;
                __asm__ volatile("" : "=r"(status) : "0"(status));
                func_80196FE8(code, zero, x0, y0, one, status, one, two);
            }
            func_80196800(0, coordinates[0] + 5, coordinates[1] + 5,
                24, 16, 0, 0, 0, 6);
            if (scratchState != 0)
                func_801BA8EC(node, status);
            if (D_801DA2F0 == one && (scratchWord & 16) &&
                scratchState != 0) {
                u32 field = node[7];
                if (field == base[0xABA0])
                    goto next;
                if (field == base[0xABA1])
                    goto next;
            }
            if (base[0x8F20] < 10) {
                /* Scoped a0/v0 captures and v0 map-address allocation reproduce
                 * the branch-delay comparison and byte/halfword load order. */
                register s32 less __asm__("$4") = residue < 10;
                register u32 key __asm__("$2");
                u32 selected;
                register u8 *mapping __asm__("$2");
                u32 byte;
                key = node[7];
                x = coordinates[0];
                y = coordinates[1];
                mapping = base + key;
                mapping += mappingOffset;
                selected = *mapping;
                x += less;
                mapping = base + selected * 36;
                byte = mapping[0x8F24];
                y += 20;
                func_80197200(byte & 192, (byte & 63) + 1, x, y, status, two);
            } else {
                x = coordinates[0];
                if (x < 0) {
                    {
                        u8 *mapped;
                        u32 selected;
                        mapped = base + node[7];
                        selected = mapped[mappingOffset];
                        mapped = base + selected * 36;
                        packed = mapped[0x8F24];
                    }
                    kind = packed & 192;
                    number = (packed & 63) + 1;
                    if (residue < 10)
                        x += 35;
                    else
                        x += 34;
                } else {
                    {
                        u8 *mapped;
                        u32 selected;
                        mapped = base + node[7];
                        selected = mapped[mappingOffset];
                        mapped = base + selected * 36;
                        packed = mapped[0x8F24];
                    }
                    kind = packed & 192;
                    number = (packed & 63) + 1;
                    if (residue < 10)
                        x -= 23;
                    else
                        x -= 24;
                }
                y = coordinates[1] + 12;
                func_80197200(kind, number, x, y, status, two);
            }
next:
            {
                s32 limit = base[0x8F20];
                /* Capture the fresh bound before incrementing the word counter;
                 * the empty identity retains that measured scheduling. */
                __asm__ volatile("" : "=r"(i) : "0"(i), "r"(limit));
                i++;
                coordinates += 2;
                if (i < limit)
                    goto firstPass;
            }
        } while (0);
    }
    {
        s32 mode = base[0x8F20];
        i = 0;
        if (mode == 0)
            goto thirdGate;
        do {
            u8 **table = (u8 **)((u32)D_8018B1F0 + mode * 64);
            func_801BA7EC(table[i]);
            i++;
            mode = base[0x8F20];
        } while (i < mode);
        /* The third gate has its own read after the final child callback. */
        __asm__ volatile("" : : : "memory");
        mode = base[0x8F20];
thirdGate:
        /* Preserve the common gate (including the second-pass zero edge)
         * rather than folding that edge directly into the epilogue. */
        __asm__ volatile("" : "=r"(mode) : "0"(mode));
        i = 0;
        if (mode != 0) {
            do {
                u8 **table = (u8 **)((u32)D_8018B1F0 + mode * 64);
                func_801BA614(table[i]);
                i++;
                mode = base[0x8F20];
            } while (i < mode);
        }
    }
    __asm__ volatile("" : "=m"(frame));
}
