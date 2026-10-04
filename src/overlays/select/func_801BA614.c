#include "common.h"

/* Local byte/halfword access view; the original node type is unknown. */
typedef struct NodeView {
    struct NodeView *next;
    u8 bytes[6];
    u16 fields[8];
} NodeView;

/* Word-sized caller view retains the original unsigned halfword widening and
 * signed-coordinate-plus-five arguments before the callee narrows them. */
extern void func_80196800(s32 word, s32 x, s32 y, u32 width, u32 height,
                         s32 byte0, s32 byte1, s32 byte2, s32 selector);

void func_801BA614(NodeView *node)
{
    u16 width;
    u16 height;
    s16 x;
    s16 y;

    if (node->bytes[0] == 255) {
        width = node->fields[2];
        height = node->fields[3];
        x = node->fields[0] - 1;
        y = node->fields[1] - 1;
        if (width && height) {
            width += 2;
            height += 2;
            func_80196800(0, x, y, width, height, 0, 0, 0, 6);
            func_80196800(0, x + 5, y + 5, width, height, 0, 0, 0, 6);
        }
    } else {
        /* Preserve child-first recursion and reread fields after the calls. */
        func_801BA614(node->next);
        width = node->fields[2];
        height = node->fields[3];
        x = node->fields[0] - 1;
        y = node->fields[1] - 1;
        if (width && height) {
            width += 2;
            height += 2;
            func_80196800(0, x, y, width, height, 0, 0, 0, 6);
            func_80196800(0, x + 5, y + 5, width, height, 0, 0, 0, 6);
        }
        width = node->fields[6];
        height = node->fields[7];
        x = node->fields[4] - 1;
        y = node->fields[5] - 1;
        /* This second field group accepts either nonzero dimension. */
        if ((width != 0) | (height != 0)) {
            width += 2;
            height += 2;
            func_80196800(0, x, y, width, height, 0, 0, 0, 6);
            func_80196800(0, x + 5, y + 5, width, height, 0, 0, 0, 6);
        }
    }
}
