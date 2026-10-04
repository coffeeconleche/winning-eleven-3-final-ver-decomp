#include "common.h"

extern u8 D_800FF748[], D_8010865C, D_80107FEC;

/* Byte/halfword views only: original record types and field meanings unknown.
 * Address sums keep the measured operand order without changing the accesses. */
void func_80120314(void) {
    u32 index = *(u8 *)0x1F8002AD % 24U;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *record = (u8 *)((u8)index * 1000 + (u32)base);
    u8 value = record[0x392];

    if (*(u8 *)0x1F8002DD != *(u8 *)0x1F8002DE) {
        D_8010865C |= 1;
    }
    switch (*(u8 *)0x1F80029A) {
    case 4: {
        u32 side = record[0x399];
        s32 movement = *(s16 *)0x1F8002BE;
        if (side ? movement > 0 : movement < 0) {
            ((u8 *)((u32)base + ((u8 *)((u32)scratch + record[0x398]))[0x2DD]))[0x8A3E] = value;
        } else {
            ((u8 *)((u32)base + ((u8 *)((u32)scratch + record[0x398]))[0x2DD]))[0x8A13] = value;
        }
        break;
    }
    case 2: {
        s32 distance;
        if (D_80107FEC == 3) {
            base[0x8A69 + ((u8 *)0x1F8002DD)[record[0x398]]] = value;
        } else {
            distance = *(s16 *)(*(u8 **)0x1F8002F4 + 2);
            if (!record[0x399]) {
                distance -= 0x3320;
            } else {
                distance += 0x3320;
            }
            if (distance < 0) {
                distance = -distance;
            }
            /* Keep multiplication after the absolute-value join, rather than
             * in its branch delay slot. This matching constraint emits no code. */
            __asm__("" : "=r"(distance) : "0"(distance));
            if (distance * distance <= 0x3FFFFFF) {
                ((u8 *)((u32)base + ((u8 *)((u32)scratch + record[0x398]))[0x2DD]))[0x8ABF] = value;
            } else {
                ((u8 *)((u32)base + ((u8 *)((u32)scratch + record[0x398]))[0x2DD]))[0x8A94] = value;
            }
        }
        break;
    }
    }
}
