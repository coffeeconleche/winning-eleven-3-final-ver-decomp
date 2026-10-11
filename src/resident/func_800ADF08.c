#include "common.h"

/* Access views only; complete historical packet and rectangle APIs are provisional. */
typedef struct {
    u8 tag[3];
    u8 length;
    u32 command;
    u32 marker;
    u32 xy;
    u32 coordinates;
    u32 dimensions;
} PacketView;

typedef struct {
    u32 xy;
    union {
        struct { s16 width, height; } fields;
        u32 word;
    } dimensions;
} RectangleView;

void func_800ADF08(PacketView *packet, RectangleView *rectangle, u32 x, u32 y)
{
    PacketView *dest = packet;
    /* Initialized real value; removing this sole binding changes allocation. */
    register u32 length __asm__("$4") = 5;
    u32 xy;

    if (rectangle->dimensions.fields.width == 0 || rectangle->dimensions.fields.height == 0) length = 0;
    dest->command = 0x01000000;
    dest->marker = 0x80000000;
    dest->length = length;
    /* Capture before the possibly aliasing coordinates store. */
    xy = rectangle->xy;
    dest->coordinates = (y << 16) | (x & 0xFFFF);
    dest->xy = xy;
    dest->dimensions = rectangle->dimensions.word;
}
