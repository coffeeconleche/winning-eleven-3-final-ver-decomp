#include "common.h"

/* Partial six-argument view: this caller uses the full returned word.
 * Complete historical declarations and record/scratch meanings are unknown. */
extern u32 func_80067860(u32 side, s32 x, s32 y, u32 candidate,
                         u32 limit, u32 distance);

/* Candidate arithmetic wraps as a full word; only call/return values narrow.
 * The scratch base, helper arguments and cross-call captures are real values
 * producing the natural 64-byte frame without allocation or instruction aids.
 * Storage extents, indirect callers and native pointer/alignment contracts
 * remain provisional; no side-value range or callback purity is assumed. */
u32 func_80033DC8(u8 *record, u32 position)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 iteration = 0;
    u32 limit = 2;
    u32 distance = 0x90000;
    u32 step = 2;

    do {
        u8 candidate = position;
        u32 first = func_80067860(record[0x399],
                                  (s16)*(u16 *)(scratch + 0x3E),
                                  (s16)*(u16 *)(scratch + 0x6E),
                                  candidate, limit, distance);

        if (first == 255) {
            /* Reread all live inputs after the first callback; compare the
             * second full result with the saved first full result. */
            if (func_80067860(record[0x399] ^ 1,
                              (s16)*(u16 *)(scratch + 0x3E),
                              (s16)*(u16 *)(scratch + 0x6E),
                              candidate, limit, distance) == first) {
                return candidate;
            }
        }
        if (iteration & 1) {
            position += step;
        } else {
            position -= step;
        }
        iteration++;
        step += 2;
    } while (iteration < 16);
    /* Exhaustion returns the updated candidate, not the last one tested. */
    return (u8)position;
}
