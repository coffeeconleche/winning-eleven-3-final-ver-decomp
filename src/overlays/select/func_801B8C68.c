#include "common.h"

/* Only the accessed prefix is described; original node semantics are unknown. */
typedef struct Node {
    struct Node *next;
    u8 field4;
    u8 field5;
    u8 field6;
    u8 field7;
} Node;

void func_801B8C68(Node *node, u8 old_value, u8 new_value) {
    if (node->field4 != 255) {
        func_801B8C68(node->next, old_value, new_value);
    }
    /* Reread after recursion, including on the terminal node. No null/cycle
     * guard is present in the reference traversal. */
    if (node->field6 == old_value) {
        node->field6 = new_value;
    }
}
