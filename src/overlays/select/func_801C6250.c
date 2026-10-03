#include "common.h"

/* Only the descriptor fields passed to the observed callee are known. */
typedef struct {
    u32 word0;
    u16 half4, half6, half8, halfA;
    u8 byteC, byteD, byteE, byteF, byte10, byte11;
} Descriptor20;

extern u8 D_800F1018[];
extern void func_800B3618(Descriptor20 *, u8 *, u16);

void func_801C6250(u32 word0, u16 half4, u16 half6, u16 half8, u16 halfA,
                   u8 byteC, u8 byteD, u8 byteE, u8 byteF, u8 byte10,
                   u8 byte11, u8 selector) {
    Descriptor20 descriptor;
    descriptor.word0 = word0;
    descriptor.half4 = half4;
    descriptor.half6 = half6;
    descriptor.half8 = half8;
    descriptor.halfA = halfA;
    descriptor.byteC = byteC;
    descriptor.byteD = byteD;
    descriptor.byteE = byteE;
    descriptor.byteF = byteF;
    descriptor.byte10 = byte10;
    descriptor.byte11 = byte11;
    func_800B3618(&descriptor, D_800F1018 + *(u8 *)0x1F80029D * 20, selector);
}
