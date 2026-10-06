#include "common.h"

/* Observed 20-byte prefix only; the complete descriptor meanings are unknown.
 * Signed halfword stores preserve the original immediate bit patterns. */
typedef struct {
    s16 halves[4];
    u8 bytes[12];
} Fields20;
extern u8 D_800FF748[], D_8010A322, D_801D8DFB, D_801D8DFC, D_801D92A3;
extern u16 D_8010A5A4, D_801D92AC;
extern Fields20 D_801D8D90;
extern s16 D_801D8D92, D_801D8D94, D_801D8D96;
extern u8 D_801D8D98, D_801D8D99, D_801D8D9A;
extern u8 *D_8011D5F4[];
/* Caller-word ABI views: descriptor callees independently narrow their fields.
 * Full original API prototypes are not claimed. */
extern void func_801941E0(s32, u32, Fields20 *, s32, s32, s32);
extern void func_801940EC(s32, u32, Fields20 *, s32, s32, s32);
extern s32 func_8018E994(s16 *, s32, s32), func_8018EA08(u16 *, s32, s32, u16 *);
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_8018EC60(s32, u8 *), func_8006FCFC(s32), func_800AB620(s32);
extern s32 func_8006EC80(s32), func_8018E5EC(s32, s32, s32), func_8006FA84(s32, s32);
extern s32 func_8006F0DC(s32, s32), func_8006F07C(s32);
extern void func_800171FC(s32), func_800171C4(s32), func_80199E8C(void), func_801C4DE8(void);
extern u8 *func_8001D004(s32);
extern s32 func_8018E720(s32, s32);

/* Sparse 52-entry dispatcher: 0/1/2/3/10/20/30/40/50/51 are active;
 * other in-range entries and larger values share the no-op exit. */
void func_8019A804(void) {
    /* Dispatch captures one byte. Scratch/input bytes below are reread after
     * callbacks, whose effects may include the same tables and prefixes. */
    s32 state = D_8010A322;
    /* Bitwise accumulation always executes every callback. */
    s32 complete = 1;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 next;
    s32 command;
    /* Remaining nonvolatile empty captures retain measured load/argument
     * lifetimes and separate increments from common-tail folding. They emit
     * no instructions and make no hardware-volatile or synchronization claim.
     * The frame is the compiler's natural 104 bytes, with no reservation. */
    switch (state) {
    case 0: {
        Fields20 *fields = &D_801D8D90;
        /* The prefix pointer is a halfword access view, not an independent
         * cached structure assignment; retain its store before byte fields. */
        *(s16 *)fields = 0;
        D_801D8D98 = 32;
        D_801D8D99 = 32;
        D_801D8D9A = 96;
        D_801D8D92 = 0;
        D_801D8D94 = 0;
        D_801D8D96 = 0;
        func_801941E0(0, 0x40000000, fields, 0, 3, 1);
        next = base[0xABDA];
        next++;
        goto store;
    }
    case 1: {
        u16 *size;
        complete &= func_8018E994((s16 *)(base + 0x5E08), 4096, 256);
        complete &= func_8018E994((s16 *)(base + 0x5E30), 4096, 256);
        size = &D_801D92AC;
        complete &= func_8018EA08(size, 160, 10, size - 2);
        complete &= func_8018EA08(size + 1, 96, 6, size - 1);
        if (complete) {
            next = base[0xABDA];
            __asm__("" : "=r"(next) : "0"(next));
            next++;
            goto store;
        }
        break;
    }
    case 2: {
        func_80193FB4(3, 0x3021, 0, 0, D_801D8DFB * 32, 24, 0,
                       4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(29, 0x3020, 0, 0, 0, 24, 0,
                       4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);

        {
            register u8 **table = D_8011D5F4;
            register u32 value __asm__("$3") = D_801D8DFB;
            u32 ordinary = value + 36;
            register u32 offset __asm__("$2");

            if (scratch[0x2E1] == 1) offset = (value + 38) * 4;
            else offset = ordinary * 4;
            func_8018EC60(0, *(u8 **)(offset + (u32)table));
        }
        next = base[0xABDA];
        __asm__("" : "=r"(next) : "0"(next));
        next++;
        goto store;
    }
    case 3: {
        u16 input;
        func_8006FCFC(54);
        input = func_8006EC80(0);
        D_8010A5A4 = input;
        if (input == 4096 || input == 16384) {
            register u32 raw __asm__("$2");
            u32 value;
            func_800AB620(0x50D);
            raw = func_8018E5EC(D_801D8DFB, 0, 1);
            value = (u8)raw;
            __asm__("" : "=r"(value) : "0"(value), "r"(raw));
            D_801D8DFB = raw;
            {
                register u32 width __asm__("$2") = value * 32;
                register u8 **table = D_8011D5F4;
                u32 offset;
                u32 ordinary = value + 36;
                /* Capture the stored selection byte and both word views: keep
                  * the original store/scale/table order before the callback. */
                __asm__("" : "=r"(table), "=r"(width) : "0"(table), "1"(width), "m"(D_801D8DFB));
                *(u16 *)(base + 0x5E4A) = width;
                if ((u8)scratch[0x2E1] == 1) offset = (value + 38) * 4;
                else offset = ordinary * 4;
                func_8018EC60(0, *(u8 **)(offset + (u32)table));
            }
        }
        if (D_8010A5A4 == 32) {
            base[0xABDA] = 10;
            func_800AB620(0x528);
        }
        if (D_8010A5A4 == 64) {
            func_8006FA84(3, 0);
            func_8006FA84(29, 0);
            base[0xABDA] = 40;
            func_800AB620(0x529);
        }
        break;
    }
    case 10:
        switch (D_801D8DFB) {
        case 0:
            func_8006FA84(3, 0);
            func_8006FA84(29, 0);
            next = 20;
            goto store;
        case 1:
            D_801D8DFC = 0;
            command = 5;
            goto submit;
        }
        break;
    case 20: {
        u16 *size = &D_801D92AC;
        complete &= func_8018EA08(size, 0, 16, size - 2);
        complete &= func_8018EA08(size + 1, 0, 8, size - 1);
        if (complete) {
            register u32 rawMode __asm__("$2") = scratch[0x2E1];
            u32 mode;

            mode = (u8)rawMode;
            if (mode == 1) goto setCommand;
            {
                u32 second = 2;

                if (mode != second) goto clear;
            }
setCommand:
            command = 2;
            /* State 10 supplies 5; state 20 reaches this with 2. */
submit:
            func_800171FC(command);
            goto clear;
        }
        break;
clear:
        base[0xABDA] = 0;
        break;
    }
    case 30:
        if (func_8006F0DC(64, 1)) {
            D_801D8DFC = 0;
            func_800171FC(128);
        }
        break;
    case 40: {
        u16 *size;
        complete &= func_8018E994((s16 *)(base + 0x5E08), 0, 256);
        complete &= func_8018E994((s16 *)(base + 0x5E30), 0, 256);
        size = &D_801D92AC;
        complete &= func_8018EA08(size, 0, 10, size - 2);
        complete &= func_8018EA08(size + 1, 0, 6, size - 1);
        if (complete) {
            D_801D92A3 = 0;
            *(u8 **)(base + 0x5DF4) = func_8001D004(0x3004);
            func_80199E8C();
            func_800171C4(1);
            func_800171FC(3);
        }
        break;
    }
    case 50: {
        Fields20 *fields;
        s32 index;
        func_801C4DE8();
        *(u8 **)(base + 0x5DF4) = func_8001D004(scratch[0x2E1] + 0x3005);
        *(u16 *)(base + 0x5E30) = 4096;
        *(u16 *)(base + 0x5E08) = 4096;
        func_80193FB4(29, 0x3020, 0, 0, 0, 24, 0,
                       4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
        fields = &D_801D8D90;
        fields->halves[0] = -80;
        D_801D8D92 = -40;
        D_801D8D94 = 160;
        D_801D8D96 = 80;
        D_801D8D98 = 32;
        D_801D8D99 = 32;
        D_801D8D9A = 96;
        func_801940EC(0, 0x40000000, fields, 0, 3, 1);
        {
            s32 value = D_801D8DFB;
            index = value + 36;
            if (scratch[0x2E1] == 1) index = value + 38;
        }
        func_8018E720(3, index);
        next = base[0xABDA];
        __asm__("" : "=r"(next) : "0"(next));
        next++;
        goto store;
    }
    case 51:
        if (func_8006F07C(16)) {
            func_80193FB4(3, 0x3021, 0, 0, D_801D8DFB * 32, 24, 0,
                           4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
            next = 3;
            goto store;
        }
        break;
    }
    return;
store:
    base[0xABDA] = next;
}
