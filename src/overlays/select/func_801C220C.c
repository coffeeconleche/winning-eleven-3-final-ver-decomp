#include "common.h"

extern u8 D_800FF748[], D_80108668, D_801DA2F0, D_8010A2E8, D_8010A2E9;
extern s16 D_801DA5D0, D_801DA5D2;

/* Word-wide call-site views; complete original helper APIs remain unknown. */
extern void func_8019659C(u32, s32, s32, s32, u32, u32, u32, u32, u32);
extern void func_801964F8(u32, s32, s32, s32, u32, u32, u32, u32, u32);
extern void func_80196800(u32, s32, s32, s32, u32, u32, u32, u32, u32);
extern s32 func_801C1C5C(s32, s32);
extern void func_80196FE8(u32, u32, s32, s32, s32, s32, s32, u32);
extern void func_80197200(u32, u32, s32, s32, s32, u32);
extern s32 func_801AA778(u8, u8);
extern void func_801A84C8(s32, s32, u8, u8);

/* Only this byte access is known, not the complete backing object's layout. */
typedef struct {
    u8 pad[0xAB80];
    u8 mapped;
} Map;

#define scratch290 (*(u32 *)0x1F800290)

/* Draw row/column entries and their relation matrix. Scoped bindings and
 * transparent captures preserve real argument, index and pointer lifetimes.
 * Callback-dependent reads and observed unchecked paths remain explicit. */
void func_801C220C(void) {
    s32 i;
    /* Measured unknown-purpose extent: removing it changes only the 22 stack
     * adjustment/save/restore words, reducing the frame from 88 to 80 bytes.
     * Nothing reads or consumes this storage; original purpose is unknown. */
    u8 unknown_frame[8];
    s32 j;
    u32 id, code, flags;
    s32 rowA;
    s32 col, z;
    s32 y5;
    register s32 w __asm__("$18");
    s16 *cursor, *rows;

    if (D_80108668 == 3) {
        register s32 incoming __asm__("$20");
        /* This path uses incoming s4 before local counter initialization.
         * Capture that actual register residue, not an invented zero or
         * parameter. The known caller holds its base in s4 at this call. */
        __asm__("" : "=r"(incoming));
        func_801964F8(0, (s32)((u32)incoming * 45U - 13U),
            65, 44, 30, 166, 199, 200, 1);
        for (i = 0; i < 3; i++) {
            func_801964F8(0, i * 45 - 13, 65, 45, 30, 166, 199, 200, 1);
            func_801964F8(0, 122, i * 30 - 25, 45, 30, 166, 199, 200, 1);
        }
        func_801964F8(0, 122, 65, 45, 30, 166, 199, 200, 1);
        func_801964F8(0, 122, -54, 44, 28, 166, 199, 200, 1);
        func_801964F8(0, -167, 65, 154, 29, 166, 199, 200, 1);
    }
    func_8019659C(0, -169, -56, 336, 151, 166, 199, 200, 1);
    func_8019659C(0, -168, -55, 334, 149, 166, 199, 200, 1);
    func_8019659C(0, -169, -26, 336, 0, 166, 199, 200, 1);
    func_8019659C(0, -14, -56, 0, 151, 166, 199, 200, 1);
    func_8019659C(0, -170, -57, 338, 153, 0, 0, 0, 1);

    i = 0;
    {
        s32 selector = 3;
        cursor = &D_801DA5D2;
        for (; i < 4; i++) {
            func_801964F8(0, -169, i * 30 + 4, 155, 0, 166, 199, 200, selector);
            if (func_801C1C5C(i, *cursor) == 0) continue;
            if (func_801C1C5C(i, *cursor) == selector) break;
            {
                register u32 word __asm__("$5") = 0;
                s32 start = *cursor;
                __asm__("" : : "r"(start));
                rowA = start + i;
                {
                    register u8 *base __asm__("$8") = D_800FF748;
                    __asm__("" : "=r"(base) : "0"(base), "r"(word));
                    id = ((Map *)(base + rowA))->mapped;
                    {
                        register u32 offset __asm__("$2") = id * 36;
                        offset = (u32)base + offset;
                        code = *(u8 *)(offset + 0x8F25);
                    }
                    func_80196FE8(code, word, -146, i * 30 - 19, 0, 0, 1, selector);
                    if (!(D_801DA2F0 == 1 && (scratch290 & 16) &&
                          (id == D_8010A2E8 || id == D_8010A2E9))) {
                        register u8 *lateBase __asm__("$8") = D_800FF748;
                        __asm__("" : "=r"(lateBase) : "0"(lateBase));
                        {
                            register u32 offset __asm__("$2") =
                                ((Map *)(lateBase + id))->mapped * 36;
                            offset = (u32)lateBase + offset;
                            flags = *(u8 *)(offset + 0x8F24);
                        }
                        func_80197200(flags & 0xC0, (flags & 0x3F) + 1,
                            -146, i * 30 - 9, 0, selector);
                    }
                }
            }
        }
    }

    i = 0;
    rows = &D_801DA5D0;
    for (; i < 4; i++) {
        func_801964F8(0, i * 45 + 31, -56, 0, 30, 166, 199, 200, 4);
        if (func_801C1C5C(i, *rows) == 0) continue;
        if (func_801C1C5C(i, *rows) == 3) break;
        {
            register u32 word __asm__("$5") = 0;
            s32 start = *rows;
            __asm__("" : : "r"(start));
            rowA = start + i;
            {
                register u8 *base __asm__("$8") = D_800FF748;
                __asm__("" : "=r"(base) : "0"(base), "r"(word));
                id = ((Map *)(base + rowA))->mapped;
                {
                    register u32 offset __asm__("$2") = id * 36;
                    offset = (u32)base + offset;
                    code = *(u8 *)(offset + 0x8F25);
                }
                func_80196FE8(code, word, i * 45 - 2, -52, 1, 0, 1, 3);
                if (!(D_801DA2F0 == 1 && (scratch290 & 16) &&
                      (id == D_8010A2E8 || id == D_8010A2E9))) {
                    register u8 *lateBase __asm__("$8") = D_800FF748;
                    __asm__("" : "=r"(lateBase) : "0"(lateBase));
                    {
                        register u32 offset __asm__("$2") =
                            ((Map *)(lateBase + id))->mapped * 36;
                        offset = (u32)lateBase + offset;
                        flags = *(u8 *)(offset + 0x8F24);
                    }
                    func_80197200(flags & 0xC0, (flags & 0x3F) + 1,
                        i * 45 + 2, -37, 0, 3);
                }
            }
        }
    }

    i = 0;
    {
        register s16 *table __asm__("$8") = &D_801DA5D2;
        __asm__("" : "=r"(table) : "0"(table));
        cursor = (s16 *)((u32)table - 2);
    }
    for (col = 0; i < 4; i++, col += 30) {
        if (func_801C1C5C(i, D_801DA5D2) == 0) continue;
        {
            s32 result = func_801C1C5C(i, D_801DA5D2);
            register s32 three __asm__("$8") = 3;
            if (result == three) break;
        }
        j = 0;
        y5 = col;
        z = -1;
        rowA = D_801DA5D2 + i;
        for (; j < 4; z += 45, j++) {
            if (func_801C1C5C(j, *cursor) == 0) continue;
            {
                s32 result = func_801C1C5C(j, *cursor);
                register s32 three __asm__("$8") = 3;
                if (result == three) break;
            }
            id = *cursor + j;
            if (rowA == id) {
                func_801964F8(0, j * 45 - 14, y5 - 26, 45, 30, 166, 199, 200, 5);
            }
            {
                register u8 *base __asm__("$8") = D_800FF748;
                __asm__("" : "=r"(base) : "0"(base));
                {
                    u8 *address;
                    u32 first;
                    u32 second;
                    address = base + rowA;
                    first = address[0xAB80];
                    address = base + id;
                    second = address[0xAB80];
                    {
                        s32 mode = func_801AA778(first, second);
                        if (mode == 2) goto relation2;
                        if (mode < 3) {
                            if (mode == 1) goto relation1;
                        } else {
                            register s32 threeCase __asm__("$8") = 3;
                            if (mode == threeCase) goto relation3;
                        }
                        goto relationDone;
relation1:
                        func_801A84C8(z, y5 - 20, 1, 5);
                        goto relationDone;
relation2:
                        func_801A84C8(z, y5 - 20, 2, 5);
                        goto relationDone;
relation3:
                        func_801A84C8(z, y5 - 20, 3, 5);
relationDone:
                        ;
                    }
                }
            }
        }
    }

    for (i = 0; i < 5; i++) {
        func_801964F8(0, -14, i * 30 - 26, 181, 0, 166, 199, 200, 5);
        {
            s32 arg0 = 0;
            s32 arg1 = i * 45 - 14;
            s32 arg2 = -26;
            s32 arg3 = 0;
            w = 120;
            func_801964F8(arg0, arg1, arg2, arg3, w, 166, 199, 200, 5);
        }
    }
    func_80196800(0x60000000, -13, -25, 180, w, 32, 32, 32, 5);
}
