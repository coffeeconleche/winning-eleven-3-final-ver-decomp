#include "common.h"

typedef struct {
    u16 half0, half2, half4, half6;
    u8 byte8, byte9, byte10, byte11, byte12, byte13, byte14, byte15;
    u8 byte16;
    u8 padding[3];
    u8 *pointer20;
} Descriptor24;

extern Descriptor24 D_801D8F90[];
extern void func_80194790(u8 *);

void func_801942E0(u8 index, u8 *pointer, u16 half2, u16 half4, u16 half6,
                   u8 byte8, u8 byte9, u8 byte10, u8 byte12, u8 byte11,
                   u16 half0, u8 byte16) {
    Descriptor24 *entry = &D_801D8F90[index];
    /* The halfword destination receives only the argument's low byte. */
    u8 narrowed = half0;

    entry->half2 = half2;
    entry->half4 = half4;
    entry->byte13 = 0x80;
    entry->byte14 = 0x80;
    entry->byte15 = 0x80;
    entry->pointer20 = pointer;
    entry->byte11 = byte11;
    entry->half0 = narrowed;
    entry->byte16 = byte16;
    entry->half6 = half6;
    entry->byte8 = byte8;
    entry->byte10 = byte10;
    entry->byte9 = byte9;
    entry->byte12 = byte12;
    if (byte11 == 3 || byte11 == 12) {
        func_80194790(pointer);
    }
}
