#include "common.h"

typedef struct NodeBA7EC {
    struct NodeBA7EC *next;
    u8 bytes4to9[6];
    s16 half10, half12, half14, half16;
    s16 half18, half20, half22, half24;
} NodeBA7EC;

/* Word ABI views preserve the supplied signed-halfword bits. The complete
 * node layout and the original draw declaration are not established here. */
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801BA7EC(NodeBA7EC *node) {
    if (node->bytes4to9[0] == 255) {
        func_80196800(0, node->half10, node->half12, node->half14,
                     node->half16, 48, 16, 160, 5);
    } else {
        func_801BA7EC(node->next);
        func_80196800(0, node->half10, node->half12, node->half14,
                     node->half16, 48, 16, 160, 5);
        func_80196800(0, node->half18, node->half20, node->half22,
                     node->half24, 48, 16, 160, 5);
    }
}
