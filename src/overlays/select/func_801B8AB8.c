#include "common.h"

/* Only the accessed record prefix is known; field meanings remain unknown. */
typedef struct Node {
    struct Node *next;
    u8 field4;
    u8 field5;
    u8 field6;
    u8 field7;
    u8 field8;
} Node;

extern u8 D_800FF748[];

void func_801B8AB8(Node *node) {
    u8 *base = D_800FF748;
    if (node->field4 != 255) {
        Node *child = node->next;
        func_801B8AB8(child);
        /* Retain the saved child pointer, but reread byte fields after the
         * recursive call. The reference has no null or cycle guards. */
        if (node->field6 == 3) {
            if (child->field6 == 5) {
                /* This load precedes field8's store even if records alias. */
                u8 value = node->field7;
                child->field8 = 255;
                child->field7 = value;
            }
            if (child->field7 == 255) {
                child->field7 = node->field7;
            } else if (child->field6 == 5) {
                goto finish;
            } else {
                child->field8 = node->field7;
            }
            if (child->field6 != 5) {
                child->field6 = 1;
            }
finish:
            node->field6 = 4;
            base[0x8F22] = child->field5 << 4;
        }
    }
}
