#include "common.h"

/* Only the coordinate fields of these 36-byte records are identified here. */
typedef struct {
    u8 unk00[8];
    s16 x0, y0;
    u8 unk0C[4];
    s16 x1, y1;
    u8 unk14[4];
    s16 x2, y2;
    u8 unk1C[4];
    s16 x3, y3;
} SelectCoordinateRecord;

extern SelectCoordinateRecord D_801D8078[2][4];

/* The selector's low byte chooses the group; coordinate stores truncate to 16 bits. */
void func_801A61FC(s32 selector, s32 x_arg, s32 y_arg) {
    SelectCoordinateRecord *record;
    /* Preserve the original selector copy, argument registers and lifetimes. */
    register s32 index asm("$2") = selector;
    register s32 x asm("$5") = x_arg;
    register s32 y_source asm("$6") = y_arg;
    register s32 y asm("$13");
    register s32 bottom asm("$7");
    register s32 bottom_outer asm("$4");
    register s32 offset asm("$3");
    register SelectCoordinateRecord *last asm("$3");
    register void *base asm("$8");
    __asm__ volatile ("" : "+r"(selector), "+r"(y_source) : "r"(index), "r"(x));

    if ((u8)selector < 2) {
        y = y_source;
        /* Keep the second mask after the branch and y's copy in its delay slot. */
        __asm__ volatile ("" : "+r"(index) : "r"(y));
        index = (u8)index;
        base = D_801D8078;
        /* Load the common base before forming the 144-byte selector stride. */
        __asm__ volatile ("" : : "r"(index), "r"(base));
        offset = index * 144;
        __asm__ volatile ("" : : "r"(offset));
        record = (SelectCoordinateRecord *)((u8 *)&D_801D8078[0][0] + offset);
        record->x0 = x - 170;
        record->y0 = y + 10;
        record->x1 = x + 170;
        record->y1 = y + 10;
        record->x2 = x - 167;
        record->y2 = y + 13;
        record->x3 = x + 167;
        record->y3 = y + 13;

        record = (SelectCoordinateRecord *)((u8 *)&D_801D8078[0][1] + offset);
        bottom = y + 52;
        bottom_outer = y + 55;
        record->x0 = x + 167;
        record->y0 = bottom;
        record->x1 = x + 167;
        record->y1 = y + 13;
        record->x2 = x + 170;
        record->y2 = bottom_outer;
        record->x3 = x + 170;
        record->y3 = y + 10;

        record = (SelectCoordinateRecord *)((u8 *)&D_801D8078[0][2] + offset);
        record->x0 = x + 170;
        record->y0 = bottom_outer;
        record->x1 = x - 170;
        record->y1 = bottom_outer;
        record->x2 = x + 167;
        record->y2 = bottom;
        record->x3 = x - 167;
        record->y3 = bottom;

        last = (SelectCoordinateRecord *)((u8 *)&D_801D8078[0][3] + offset);
        last->x0 = x - 170;
        last->y0 = y + 10;
        last->x1 = x - 170;
        last->y1 = bottom_outer;
        last->x2 = x - 167;
        last->y2 = y + 13;
        last->x3 = x - 167;
        last->y3 = bottom;
        /* Retain the coordinate registers and reuse the stride for the last record. */
        __asm__ volatile ("" : : "r"(bottom), "r"(bottom_outer), "r"(last));
    }
}
