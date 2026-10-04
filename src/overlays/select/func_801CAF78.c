#include "common.h"

extern u8 D_801D89F8[], D_801D8A08[];
extern u8 D_801D5091[], D_801D5093[], D_801D5094[];
extern u8 D_801D50D9[], D_801D50DB[], D_801D50DC[];
extern u8 D_801D5096[], D_801D50DE[];
extern u8 *func_8001D004(u32);

/* Indexed access views only; the complete record/table types are unknown.
 * Integer address additions retain PSX operand order, not a host pointer ABI. */
void func_801CAF78(u32 argument) {
    u32 selected = (u8)argument;
    u32 scaled = selected * 2;
    /* Bindings retain the measured output/record register reuse in both walks. */
    register u8 *records __asm__("$7") = func_8001D004(scaled + 0x8004);
    u32 counter = 0;
    u8 *mapping;
    s32 position;
    u8 *base = D_801D89F8;

    /* Empty inputs keep each table base setup before the scaled row calculation. */
    __asm__("" : : "r"(base));
    scaled += selected;
    mapping = (u8 *)(scaled * 2 + (u32)base);
    position = scaled * 60 - 126;
    do {
        u32 index = (u8)counter;
        u32 entry = mapping[index];
        u32 offset = entry * 12;
        register u8 *record __asm__("$4") = (u8 *)(index * 12 + (u32)records);
        u16 halfword;
        record[13] = D_801D5091[offset];
        record[15] = D_801D5093[offset];
        record[16] = D_801D5094[offset];
        counter++;
        halfword = *(u16 *)(offset + (u32)D_801D5096);
        *(u16 *)(record + 20) = index * 20 + position;
        *(u16 *)(record + 18) = halfword;
    } while ((u8)counter < 6);

    selected = (u8)argument;
    scaled = selected * 2;
    records = func_8001D004(scaled + 0x8005);
    counter = 0;
    base = D_801D8A08;
    __asm__("" : : "r"(base));
    scaled += selected;
    mapping = (u8 *)(scaled * 2 + (u32)base);
    position = scaled * 60 - 126;
    do {
        u32 index = (u8)counter;
        u32 entry = mapping[index];
        u32 offset = entry * 12;
        register u8 *record __asm__("$4") = (u8 *)(index * 12 + (u32)records);
        u16 halfword;
        record[13] = D_801D50D9[offset];
        record[15] = D_801D50DB[offset];
        record[16] = D_801D50DC[offset];
        counter++;
        halfword = *(u16 *)(offset + (u32)D_801D50DE);
        *(u16 *)(record + 20) = index * 20 + position;
        *(u16 *)(record + 18) = halfword;
    } while ((u8)counter < 6);
}
