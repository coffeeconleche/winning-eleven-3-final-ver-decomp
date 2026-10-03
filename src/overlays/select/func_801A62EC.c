#include "common.h"

/* Access views only; original descriptor/source types and meanings are unknown. */
typedef struct {
    u32 word0;
    u16 half4, half6, half8, halfA;
    u8 byteC, byteD, byteE, byteF;
} Descriptor16;
typedef struct {
    u16 half0, half2;
    u8 remaining[140];
} Source144;

extern Descriptor16 D_801D8058[];
extern Source144 D_801D8080[];
extern u8 D_801D819C, D_801D819D;

void func_801A62EC(void) {
    s32 i = 0;
    u32 word = 0x40000000;
    u16 half8 = 0x154;
    u16 halfA = 0x2D;
    register u8 byte __asm__("$7") = 0x20;
    register Descriptor16 *row __asm__("$5");
    /* Keep constant setup before the row address, with the reference byte/cursor
     * registers. This empty input and the tied cursor below emit no code. */
    __asm__ volatile("" : : "r"(byte));
    row = D_801D8058;
    for (; i < 2; i++) {
        u16 second;
        D_801D8058[i].word0 = word;
        /* Retain the unbiased cursor and keep the leading store before loads. */
        __asm__ volatile("" : "=r"(row) : "0"(row));
        D_801D8058[i].half4 = D_801D8080[i].half0;
        second = D_801D8080[i].half2;
        D_801D8058[i].half8 = half8;
        D_801D8058[i].halfA = halfA;
        D_801D8058[i].half6 = second;
        row->byteE = byte;
        row->byteD = byte;
        row++;
        D_801D8058[i].byteC = byte;
    }
    D_801D819C = 0;
    D_801D819D = 0;
}
