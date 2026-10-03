#include "common.h"

/* Only the accessed prefix is known; complete node/table meanings are not. */
typedef struct Node {
    struct Node *next;
    u8 field4;
    u8 field5;
    u8 field6;
    u8 field7;
    u8 field8;
} Node;

extern u8 D_800FF748[];
extern u8 D_801DA618;
extern u8 D_8010A2E8;
extern u8 D_8010A2E9;
extern u8 D_8010A2F1;
extern u8 D_8010866A;
extern Node *D_801D8A4C;

void func_801B8D70(Node *node) {
    u8 *base = D_800FF748;

    if (D_801DA618 != 1) {
        if (node->field6 == 2) {
            u8 first;
            u8 second;
            u8 field5;
            u8 packed;
            u8 *address;

            D_801DA618 = 1;
            first = node->field7;
            D_8010A2E8 = first;
            second = node->field8;
            D_8010A2E9 = second;
            /* Separate the first indexed address: nesting both lookups reserves
             * an extra compiler temporary beyond the measured 32-byte frame. */
            address = base + first;
            *(u8 *)0x1F8002DD = base[0x8F25 + address[0xAB80] * 36];
            *(u8 *)0x1F8002DE = base[0x8F25 + base[0xAB80 + second] * 36];
            /* Do not preload node->next before the scratch-byte stores. The
             * empty memory barrier preserves this order without emitted code. */
            __asm__ volatile ("" : : : "memory");
            D_8010A2F1 = node->next->field5;
            /* Capture both bytes before the potentially aliasing word store. */
            field5 = node->field5;
            packed = D_8010866A;
            D_801D8A4C = node;
            D_8010866A = (field5 << 4) | (packed & 15);
        } else if (node->field4 == 255) {
            D_801D8A4C = 0;
        } else {
            func_801B8D70(node->next);
        }
    }
}
