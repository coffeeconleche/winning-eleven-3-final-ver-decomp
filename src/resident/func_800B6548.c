#include "common.h"

/* Existing PS1 word/halfword access views. Preserve the interleaved loads
 * and stores: source and destination are not assumed disjoint. Word pairs
 * cache the original inputs before halfword overwrites; this is consistent
 * with a 3x3 halfword transpose, including the in-place case. Native ports
 * need aligned, effective-type-safe accesses to the same little-endian layout.
 * All bindings hold actual loaded data or the used destination pointer.
 * The single destination identity emits no instructions or memory effects. */
u8 *func_800B6548(u8 *source, u8 *output)
{
    register u8 *destination asm("$5") = output;
    register u32 first asm("$9");
    register u32 second asm("$10");
    register u32 third asm("$11");
    u8 *result = destination;

    asm("" : "=r"(destination) : "0"(destination));
    first = *(u32 *)(source + 0);
    second = *(u32 *)(source + 4);
    *(u32 *)(destination + 4) = first;
    *(u32 *)(destination + 0) = second;
    *(u16 *)(destination + 0) = first;
    third = *(u32 *)(source + 8);
    first = *(u32 *)(source + 12);
    *(u32 *)(destination + 12) = third;
    *(u32 *)(destination + 8) = first;
    *(u16 *)(destination + 12) = second;
    *(u16 *)(destination + 8) = third;
    second = *(s16 *)(source + 16);
    *(u16 *)(destination + 4) = first;
    *(s16 *)(destination + 16) = second;
    return result;
}
