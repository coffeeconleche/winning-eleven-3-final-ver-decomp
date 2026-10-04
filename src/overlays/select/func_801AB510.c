#include "common.h"

/* Only the 36-byte copy size and byte alignment are known; field meanings
 * and the original record type are unknown. */
typedef struct { u8 bytes[36]; } Record801AB510;

extern u8 D_800FF748[];
extern Record801AB510 D_801D81E0[];

void func_801AB510(u8 *indices) {
    s32 i;
    u8 *base = D_800FF748;
    for (i = 0; i < 32; i++) {
        D_801D81E0[i] = *(Record801AB510 *)(base + indices[i] * 36 + 0x8F24);
    }
    for (i = 0; i < 32; i++) {
        *(Record801AB510 *)(base + i * 36 + 0x8F24) = D_801D81E0[i];
    }
}
