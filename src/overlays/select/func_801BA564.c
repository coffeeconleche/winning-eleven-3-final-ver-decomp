#include "common.h"

extern u8 D_8010A2E8, D_8010A2E9, D_801DADB6;

/* Only the observed node prefix; original field meanings are unknown. */
typedef struct Node {
    struct Node *next;
    u8 field4, field5, field6, field7, field8;
} Node;

s32 func_801BA564(Node *node, u8 selector) {
    u32 state;

    if (node->field4 == 255) {
        return 0;
    }
    state = node->field6;
    if (state < 2) {
        return 0;
    }
    if (state == 2 || state == 5) {
        return 0;
    }
    if (node->field8 == selector) {
        if (D_8010A2E8 == selector || D_8010A2E9 == selector) {
            if (D_801DADB6 == 1) {
                return 0;
            }
        }
        return 1;
    }
    return func_801BA564(node->next, selector);
}
