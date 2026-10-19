#include "common.h"

extern void func_800B0A80(void);
extern s32 func_800B0AB4(void);
extern u32 *D_800CEB98;
extern u32 *volatile D_800CEB9C;
extern u32 *D_800CEBA0;
extern u32 *D_800CEBA4;
extern u32 *D_800CEBA8;
extern u16 D_800CEAC8;
extern u16 D_800CEACA;

#define SF(p, n) (*(s16 *)((u8 *)(p) + (n)))
#define UF(p, n) (*(u16 *)((u8 *)(p) + (n)))

/* Native rectangle/transfer views; complete public API types are provisional.
 * The record supplies two aligned words, with signed extents at +4 and +6.
 * All halfword products and their signed rounding adjustments fit in s32;
 * the final block-count packing explicitly retains low-word wraparound.
 * Initialized register bindings and empty constraints retain measured code
 * generation only: none emits instructions, accesses memory or adds storage.
 * The status-pointer qualifier retains observed reloads; these views are not
 * a portable host implementation or a recovered MMIO declaration. */
s32 func_800AFD14(u32 *recordArg, u32 *bufferArg)
{
    register u32 *record asm("$17") = recordArg;
    u32 *buffer;
    s32 mode;
    s32 words;
    register s32 blocks asm("$3");
    s32 blockCount;
    s32 remaining;
    u16 wval;
    u16 hval;
    register u16 wu asm("$3");
    register u16 hu asm("$3");
    u16 maxu;
    s32 maxs;
    u32 base;
    register s32 total asm("$3");
    register s32 w asm("$5");
    register s32 h asm("$5");
    s32 less;
    register s32 scaled asm("$2");

    buffer = bufferArg;
    asm("" : "=r"(record) : "0"(record));
    func_800B0A80();
    w = SF(record, 4);
    wu = UF(record, 4);
    mode = 0;
    if (w < 0) goto w_zero;
    wval = wu;
    maxs = *(s16 *)&D_800CEAC8;
    maxu = D_800CEAC8;
    less = maxs < w;
    if (less) wval = maxu;
    goto w_done;
w_zero:
    wval = 0;
w_done:
    SF(record, 4) = wval;
    h = SF(record, 6);
    hu = UF(record, 6);
    if (h < 0) goto h_zero;
    hval = hu;
    maxs = *(s16 *)&D_800CEACA;
    maxu = D_800CEACA;
    less = maxs < h;
    if (less) hval = maxu;
    goto h_done;
h_zero:
    hval = 0;
h_done:
    SF(record, 6) = hval;
    total = (s32)SF(record, 4) * (s32)(s16)hval + 1;
    total += (u32)total >> 31;
    words = total >> 1;
    {
        register s32 firstBlocks asm("$16") = total >> 5;
        if (words <= 0) return -1;
        asm("" : "=r"(blocks) : "0"(firstBlocks));
    }
    scaled = blocks * 16;
    remaining = words - scaled;
    blockCount = blocks;
    {
        register u32 *statusSlot asm("$2") = D_800CEB9C;
        u32 status = *statusSlot;
        register u32 readyMask asm("$3") = 0x04000000;
        status &= readyMask;
        asm volatile("" : "=r"(readyMask) : "0"(readyMask));
        if (status == 0) {
            do {
                if (func_800B0AB4() != 0) return -1;
            } while ((*D_800CEB9C & 0x04000000) == 0);
        }
    }
    *D_800CEB9C = 0x04000000;
    *D_800CEB98 = 0x01000000;
    {
        u32 *slot = D_800CEB98;
        base = 0xA0000000;
        if (mode) base = 0xB0000000;
        *slot = base;
    }
    *D_800CEB98 = record[0];
    *D_800CEB98 = record[1];
    --remaining;
    asm("" : : "r"(remaining));
    {
        s32 firstStop = -1;
        if (remaining != firstStop) {
            asm volatile("" : "=r"(firstStop) : "0"(firstStop));
            do {
                *D_800CEB98 = *buffer++;
            } while (--remaining != -1);
        }
    }
    if (blockCount != 0) {
        *D_800CEB9C = 0x04000002;
        *D_800CEBA0 = (u32)buffer;
        *D_800CEBA4 = ((u32)blockCount << 16) | 0x10;
        *D_800CEBA8 = 0x01000201;
    }
    return 0;
}
