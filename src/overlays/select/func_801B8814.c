#include "common.h"

/* Field meanings and the full record size are unknown; only offsets 0..8
 * are accessed here. The first word is used as a recursive predecessor. */
typedef struct Node801B8814 {
    struct Node801B8814 *previous;
    u8 byte4, byte5, byte6, byte7, byte8;
} Node801B8814;

extern u8 D_800FF748[];
extern u32 D_801DA064;

void func_801B8814(Node801B8814 *node, u8 selector) {
    u8 *base = D_800FF748;
    u32 value;
    if (node->byte4 != 255) func_801B8814(node->previous, selector);
    if (node->byte6 >> 7) return;
    if (selector == 1) {
        value = base[D_801DA064 + 0xAA4C];
        switch (node->byte6 = value) {
        case 0:
        default:
            node->byte7 = 255;
            node->byte8 = 255;
            break;
        case 5:
            node->byte7 = 255;
            node->byte8 = 255;
            break;
        }
    } else {
        value = base[D_801DA064 * 4 + 0xA9D0];
        switch (node->byte6 = value) {
        case 0:
            node->byte7 = 255;
            node->byte8 = 255;
            break;
        case 5:
            {
                u32 mapped = base[D_801DA064 * 4 + 0xA9D2];
                node->byte8 = 255;
                node->byte7 = mapped;
            }
            break;
        default:
            {
                u32 offset = D_801DA064 * 4;
                /* Empty ties retain the reference's base-first additions;
                 * the counter is reloaded after each potentially aliasing store. */
                __asm__("" : "=r"(offset) : "0"(offset));
                node->byte7 = *(u8 *)((u32)base + offset + 0xA9D2);
                offset = D_801DA064 * 4;
                __asm__("" : "=r"(offset) : "0"(offset));
                node->byte8 = *(u8 *)((u32)base + offset + 0xA9D3);
            }
            break;
        }
    }
    node->byte6 |= 128;
    D_801DA064++;
}
