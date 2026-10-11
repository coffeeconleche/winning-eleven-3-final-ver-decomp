#include "common.h"

/* Word-slot call view, not a complete historical helper API. The callee
 * narrows a0/a1/a3 to byte/halfword/halfword and keeps a2 as a word. It reads
 * stack slots 0x10/1C/20/24/28/3C as halfwords, 0x14/18/2C/30/34 as bytes,
 * and 0x38 as a word; its final halfword is stored as a byte. This wrapper
 * supplies every outgoing stack slot with a word store. */
extern void func_8001CDAC(u32, u32, u32, s32, s32, u32, u32, u32,
                         u32, u32, u32, u32, u32, u32, u32, s32);

/* Callers ignore the callee's surviving result register. */
void func_8006FF48(u32 selector)
{
    u8 shade = (17u - (u8)selector) * 8u;

    func_8001CDAC(40, 4, 0x60000000, 0, 0, 6, 0,
                  0x7000, 0x7000, 0, 0, shade, shade, shade, 0, 1);
}
