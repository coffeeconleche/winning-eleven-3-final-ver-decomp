#include "common.h"

/* Only the observed prefix is modeled; complete record meanings are unknown. */
typedef struct Node {
    struct Node *next;
    u8 field4;
    u8 field5;
    u8 field6;
    u8 field7;
    u8 field8;
} Node;

extern u32 D_801DA064;
extern u8 D_800FF748[];

void func_801B85E4(Node *node, u8 selector) {
    u8 *base = D_800FF748;
    u32 state;

    if (node->field4 != 255) {
        func_801B85E4(node->next, selector);
    }
    /* Reread after recursion, including on the terminal node. No null/cycle
     * guard is present in the reference. */
    state = node->field6;
    if ((state >> 7) == 0) {
        if (selector == 1) {
            base[0xAA4C + D_801DA064] = state;
        } else {
            /* Keep independent word-counter reads across the byte stores. */
            base[0xA9D0 + D_801DA064 * 4] = state;
            base[0xA9D2 + D_801DA064 * 4] = node->field7;
            base[0xA9D3 + D_801DA064 * 4] = node->field8;
        }
        /* Reread field6 and then the counter after the preceding stores. */
        node->field6 |= 0x80;
        D_801DA064++;
    }
}
