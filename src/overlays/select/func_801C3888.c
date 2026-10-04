#include "common.h"

extern u8 D_8010A5B1;
extern u8 *func_8001D004(s32);

/* Offsets are access views of the returned records, not recovered field names. */
void func_801C3888(s32 selectionArgument) {
    s32 selection = selectionArgument;
    u32 gate = D_8010A5B1;
    u32 color = 106;
    u8 *record;
    s32 i;
    s32 j;
    s32 selected;
    /* This binding and the final loop's $2 intermediate retain separate
     * arithmetic and stored-coordinate lifetimes in the measured output. */
    register u32 coordinate __asm__("$18");
    if (gate & 12) color = 145;
    record = func_8001D004(0x7001);
    record[22] = color;
    record[10] = color;
    for (i = 0; (u8)i < 8; i++) {
        record = func_8001D004((u8)i + 0x7004);
        for (j = 0; (u8)j < 6; j++) record[(u8)j * 12 + 10] = color;
    }
    if ((u8)selection < 9) {
        if ((s8)selection == 0) {
            record = func_8001D004(0x7001);
            record[22] = 105;
            record[10] = 105;
        } else {
            record = func_8001D004((s8)selection + 0x7003);
            for (i = 0; (u8)i < 6; i++) record[(u8)i * 12 + 10] = 105;
        }
    }
    record = func_8001D004(0x7002);
    if ((s8)selection == 0) {
        record[10] = 196;
        *(s16 *)(record + 8) = -82;
    } else {
        record[10] = 197;
        *(s16 *)(record + 8) = -81;
    }
    i = 1;
    /* Empty constraints retain signed narrowing, per-loop index/constant
     * scheduling and the second byte-index copy; none emit instructions. */
    __asm__ volatile("" : : "r"(i));
    {
        s32 shifted = (u32)selection << 24;
        __asm__("" : "=r"(shifted) : "0"(shifted));
        selected = shifted >> 24;
    }
    for (; (u8)i < 9; i++) {
        u32 bias;
        u32 index = (u8)i;
        register u32 computed __asm__("$2");
        __asm__("" : "=r"(index) : "0"(index));
        j = index == selected ? 196 : 197;
        computed = index * 14;
        __asm__ volatile("" : "=r"(computed) : "0"(computed), "r"(j));
        bias = 0xFFB4;
        __asm__ volatile("" : "=r"(bias) : "0"(bias));
        computed += bias;
        if (index == selected) coordinate = computed - 1;
        else coordinate = computed;
        __asm__ volatile("" : "=r"(i) : "0"(i), "r"(coordinate));
        record = func_8001D004((u8)i + 0x700B);
        record[10] = j;
        *(u16 *)(record + 8) = coordinate;
        if ((u8)i < 5) {
            record[22] = j;
            *(u16 *)(record + 20) = coordinate;
        }
    }
}
