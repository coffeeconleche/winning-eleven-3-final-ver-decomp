#include "common.h"

extern u8 D_801D8A8F, D_8010865D, D_800FF748[];
extern s16 D_8010A370, D_8010A372;
extern u8 D_801D8D90[];
extern s16 D_801D8D92, D_801D8D94, D_801D8D96;
extern u8 D_801D8D98, D_801D8D99, D_801D8D9A, D_801D8D9B, D_801D8D9C, D_801D8D9D;
extern u8 D_801D94E8[], D_801D9515[];
extern u8 scratchState __asm__("0x1F8002A2");
extern u8 scratchLate __asm__("0x1F8001EC");
extern void func_8018E538(u32), func_801A8E08(void), func_80096050(void), func_8005C49C(void), func_800501DC(u32);
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801941E0(s32, s32, void *, s32, s32, s32);
extern void func_801942E0(s32, void *, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern u32 func_801B4FA8(u32);
extern u8 *func_801A9168(u8 *, u32, u32, u32);
extern void func_801B9574(u32), func_801B9DCC(u32);

/* Caller word/pointer access views, not recovered original prototypes. E538
 * ignores its observed zero argument. The other callbacks narrow selected
 * arguments internally; the supplied words and the byte result use are retained.
 * The state, record and appended-byte meanings remain unidentified.
 */
u32 func_801B9144(u32 input) {
    register u32 status __asm__("$23");
    u32 side;
    u32 item;
    u8 *base;
    u8 *cursor, *pair;
    register u8 *rows __asm__("$22");
    s32 i;
    s32 offset;
    /* Scoped bindings reproduce measured register lifetimes. Empty constraints
     * emit no instructions: the input identity keeps byte narrowing after the
     * scratch store, and the true-arm input retains the original key branch.
     */
    D_801D8A8F = 0;
    func_8018E538(0);
    scratchState = 17;
    __asm__ volatile("" : "=r"(input) : "0"(input));
    {
        register u32 condition __asm__("$2") = (u8)input < 2;
        register u32 field __asm__("$3");
        field = D_8010865D;
        condition ^= 1;
        status = field ^ condition;
    }
    func_801A8E08();
    base = D_800FF748;
    scratchLate = 0;
    func_80096050();
    func_8005C49C();
    if (status) {
        D_8010A370 = 90;
        D_8010A372 = -90;
    } else {
        D_8010A370 = -90;
        D_8010A372 = 90;
    }
    *(s16 *)(base + 0xAC2E) = 24;
    *(s16 *)(base + 0xAC2C) = 24;
    *(s16 *)(base + 0xAC32) = 600;
    *(s16 *)(base + 0xAC30) = 600;
    *(s16 *)(base + 0xAC3C) = -32;
    *(s16 *)(base + 0xAC34) = -32;
    base[0xAC20] = 1;
    base[0xAC21] = 1;
    func_800501DC(0);
    func_800501DC(1);
    {
        u32 key;
        u32 kind = 3;
        if ((u8)input < 2) {
            __asm__ volatile("" : : "r"(input), "r"(kind));
            key = 0x30F2;
        } else {
            key = 0x30F3;
        }
        func_80193FB4(kind, key, 0, 0, 0, 6, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    }
    {
        /* The initial-value tie consumes the already formed call arguments.
         * Three constant identities retain the measured setup order; the later
         * memory barrier separates ordered color-store groups. These emit no
         * instructions and reserve no frame storage.
         */
        register s32 callId __asm__("$4") = 1;
        register u32 callWord __asm__("$5") = 0x70000000;
        u8 *rectangle = D_801D8D90;
        register u8 *callPointer __asm__("$6") = rectangle;
        register s32 callFlag __asm__("$7") = 1;
        s32 initial;
        register s32 top __asm__("$20");
        register s32 width __asm__("$19");
        register s32 height __asm__("$18");
        register s32 one __asm__("$16");
        initial = -104;
        __asm__ volatile("" : "=r"(initial) : "0"(initial), "r"(callId), "r"(callWord), "r"(callPointer), "r"(callFlag));
        top = -51;
        __asm__ volatile("" : "=r"(top) : "0"(top));
        width = 128;
        __asm__ volatile("" : "=r"(width) : "0"(width));
        height = 18;
        __asm__ volatile("" : "=r"(height) : "0"(height));
        *(s16 *)rectangle = initial;
        D_801D8D98 = 192;
        D_801D8D99 = 192;
        D_801D8D9A = 240;
        __asm__ volatile("" : : : "memory");
        {
            register s32 color __asm__("$2") = 128;
            one = 1;
            D_801D8D92 = top;
            D_801D8D94 = width;
            D_801D8D96 = height;
            D_801D8D9B = color;
            D_801D8D9C = color;
            D_801D8D9D = color;
        }
        func_801941E0(callId, callWord, callPointer, callFlag, one, one);
        *(s16 *)rectangle = 104;
        D_801D8D92 = top;
        D_801D8D94 = width;
        D_801D8D96 = height;
        func_801941E0(2, 0x70000000, rectangle, 1, one, one);
    }
    i = 0;
    do {
        D_801D94E8[i] = 0;
        D_801D9515[i] = 0;
        i++;
    } while (i < 45);
    /* Narrow only this first side; both rows reread the scratch byte after
     * callbacks. No range for the resulting table index is invented.
     */
    side = (u8)status;
    i = 0;
    offset = 0;
    do {
        rows = D_801D94E8;
        cursor = (u8 *)((u32)offset + (u32)rows);
        offset += 45;
        {
            u8 *high = (u8 *)0x1F800000;
            /* PSX word-address expression preserves measured operand ordering.
             * side comes from a byte and its xor-one update, so negation cannot
             * reach signed INT_MIN. This is not a native pointer ABI view.
             */
            pair = (u8 *)((u32)high - (u32)(-(s32)side));
        }
        i++;
        {
            u32 rowIndex = (u8)func_801B4FA8(pair[0x2DD]);
            u8 *address = (u8 *)((u32)base + rowIndex);
            u32 mapped = address[0xAB80];
            u8 *entry = (u8 *)((u32)base + mapped * 36);
            item = entry[0x8F24];
        }
        cursor = func_801A9168(cursor, 2, item & 192, (item & 63) + 1);
        *cursor++ = 32;
        *cursor++ = 9;
        *cursor++ = 48;
        *cursor = 28;
        /* Keep this reload after the callback and the four preceding stores. */
        cursor[1] = pair[0x2DD];
        side ^= 1;
    } while (i < 2);
    func_801942E0(1, rows, -160, -58, 256, 1, 1, 0, 0, 2, 1, 1);
    func_801942E0(2, rows + 45, 48, -58, 256, 1, 1, 0, 0, 2, 1, 1);
    if ((u8)input < 4) {
        func_801B9574((u8)input);
    } else {
        func_801B9DCC((u8)input);
    }
    return status;
}
