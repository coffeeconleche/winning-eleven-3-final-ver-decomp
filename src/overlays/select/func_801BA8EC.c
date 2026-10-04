#include "common.h"

/* Only the accessed node prefix is known; no null/cycle guards are inferred. */
typedef struct Node {
    struct Node *next;
    u8 byte4, byte5, byte6, byte7;
    u16 half8;
    s16 half10, half12, half14, half16;
    s16 half18, half20, half22, half24;
} Node;

extern u8 D_800FF748[];
/* Word caller ABI views retain retail argument/return bits. E5B8 itself
 * narrows its range/result to u16; 96800 narrows descriptor fields.
 * Neither declaration claims the unknown complete original prototype. */
extern s32 func_8018E5B8(u32, s32);
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801BA8EC(Node *node, u32 dim) {
    u8 *base = D_800FF748;
    u32 terminal = node->byte4;
    Node *child = node->next;
    /* Scoped bindings retain the measured allocation across callbacks;
     * empty constraints below emit no instructions or memory accesses. */
    register s32 color2 __asm__("$16");
    s32 color1;
    register s32 color0 __asm__("$20");
    u32 selector;
    if (terminal != 255)
        func_801BA8EC(child, dim);
    if (dim) {
        color2 = 128;
        color1 = 128;
        color0 = 128;
        selector = 5;
    } else {
        color2 = 255;
        color1 = 255;
        color0 = 255;
        selector = 4;
    }
    switch (base[0x8F23]) {
    case 0:
    case 2:
        if (node->byte7 == base[0xABA0] || node->byte7 == base[0xABA1]) {
            s32 pulse = func_8018E5B8(128, 3);
            color2 = pulse;
            /* Keep the copied word opaque before reuse in both channels. */
            __asm__ volatile ("" : "=r"(color2) : "0"(color2));
            color0 = color2;
            color1 = pulse + 127;
            selector = 2;
        }
        break;
    case 1:
    case 3:
        if (node->byte7 == base[0xABA0] || node->byte7 == base[0xABA1]) {
            color0 = 255;
            color2 = func_8018E5B8(128, 3);
            color1 = color2;
            selector = 2;
        }
        break;
    }
    {
        u32 scratchState = *(u8 *)0x1F80029B;
        u32 two = 2;
        /* Retain the measured byte re-narrowing after the scratch load. */
        __asm__ volatile ("" : "=r"(scratchState) : "0"(scratchState));
        if ((u8)scratchState == two) {
            if (node->byte7 == base[0xABA8]) {
                color2 = 128;
                color0 = 255;
                color1 = func_8018E5B8(128, 1) - 128;
                {
                    s32 second = func_8018E5B8(128, 1);
                    register u32 range __asm__("$4") = 128;
                    register s32 shift __asm__("$5") = 1;
                    /* Set up the next call before saving the preceding result. */
                    __asm__ volatile ("" : : "r"(range), "r"(shift));
                    color2 = second;
                    color2 = (color2 >> 1) + (func_8018E5B8(range, shift) >> 2);
                }
                selector = 2;
            } else {
                color2 = 128;
                color1 = 128;
                color0 = 128;
            }
        }
    }
    if (node->byte6 != 3 && node->byte6 == 4) {
        register s32 zero __asm__("$4") = 0;
        u32 submitSelector;

        u32 byte0 = (u8)color0;
        register u32 byte1 __asm__("$20") = (u8)color1;
        u32 byte2 = (u8)color2;
        s32 x = node->half10, y = node->half12, width = node->half14,
            height = node->half16;
        /* Keep selector narrowing late without constraining the height;
         * its argument store must remain eligible for the call delay slot. */
        __asm__ volatile ("" : "=r"(selector) : "0"(selector));
        submitSelector = (u8)selector;

        func_80196800(zero, x, y, width, height,
            byte0, byte1, byte2, submitSelector);
        {
            s32 childState = child->byte6;
            s32 upper = childState < 5;
            if (upper) {
                if (childState >= 3 && node->byte7 == child->byte7) {
                    func_80196800(0, child->half10, child->half12, child->half14, child->half16,
                        byte0, byte1, byte2, submitSelector);
                    func_80196800(0, node->half18, node->half20, node->half22, node->half24,
                        byte0, byte1, byte2, submitSelector);
                }
            }
        }
    }
}
