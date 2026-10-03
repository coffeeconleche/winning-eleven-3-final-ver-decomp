#include "common.h"

/* Only the offsets observed in this recursive record walk are modeled. */
typedef struct Node {
    struct Node *previous;
    u8 terminal;
    u8 unknown;
    u8 state;
} Node;

void func_801B89D0(Node *node) {
    if (node->terminal != 255) {
        func_801B89D0(node->previous);
    }
    /* The original rereads the state after visiting the previous record. */
    node->state &= 0x7F;
}
