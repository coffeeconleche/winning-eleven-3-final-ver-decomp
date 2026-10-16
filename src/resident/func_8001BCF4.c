#include "common.h"

extern void func_800B5368(u8 *block);

/* Partial PS1 object/block views. The helper relocates the mutable block.
 * Keep each load after the helper and interleaved with destination stores:
 * the pointed storage is not assumed disjoint from the object.
 * The sole caller supplies three real words and ignores the residual v0.
 * Slot is the consumed low byte; native callers need the matching prototype.
 * The cursor identity preserves the initialized, used block+4 value without
 * instructions, memory effects, added storage, or fabricated dependencies. */
void func_8001BCF4(u8 *object, u8 slot, u8 *block)
{
    u8 *cursor;

    cursor = block + 4;
    asm("" : "=r"(cursor) : "0"(cursor));
    func_800B5368(cursor);
    cursor += 8;
    *(u32 *)(object + slot * 4 + 0x8C) = *(u32 *)cursor;
    cursor += 8;
    *(u32 *)(object + slot * 4 + 0xEC) = *(u32 *)cursor;
    cursor += 8;
    *(u32 *)(object + slot * 4 + 0x14C) = *(u32 *)cursor;
    *(u32 *)(object + slot * 4 + 0x1AC) = *(u32 *)(cursor + 4);
}
