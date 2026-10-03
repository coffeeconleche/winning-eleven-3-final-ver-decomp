#include "common.h"

/* Local access views; the complete original descriptor types are unknown. */
typedef struct {
    u16 halves[4];
    u8 bytes[12];
} Fields20;

typedef struct {
    u16 half0;
    u8 byte2, byte3;
    u32 word4;
    u16 halves[4];
    u8 bytes[12];
} Descriptor28;

extern Descriptor28 D_801D92A0[];

void func_801941E0(u8 index, u32 word, Fields20 *source, u8 byte2,
                   u16 half0, u8 byte3) {
    Descriptor28 *entry = &D_801D92A0[index];

    entry->word4 = word;
    /* Reread the source after each store; halfword results narrow modulo 65536. */
    entry->halves[0] = source->halves[0] - (source->halves[2] >> 1);
    entry->halves[1] = source->halves[1] - (source->halves[3] >> 1);
    entry->halves[2] = source->halves[2];
    entry->halves[3] = source->halves[3];
    entry->bytes[0] = source->bytes[0];
    entry->bytes[1] = source->bytes[1];
    entry->bytes[2] = source->bytes[2];
    entry->bytes[3] = source->bytes[3];
    entry->bytes[4] = source->bytes[4];
    entry->bytes[5] = source->bytes[5];
    entry->bytes[6] = source->bytes[6];
    entry->bytes[7] = source->bytes[7];
    entry->bytes[8] = source->bytes[8];
    entry->bytes[9] = source->bytes[9];
    entry->bytes[10] = source->bytes[10];
    entry->bytes[11] = source->bytes[11];
    entry->byte2 = byte2;
    entry->byte3 = byte3;
    entry->half0 = half0;
}
