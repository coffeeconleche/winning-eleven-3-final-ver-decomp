#include "common.h"

extern u8 D_8010A397;
extern u8 D_8010A392;
extern u8 D_800C7D44[];
extern u8 D_800FF748[];
extern s32 func_8001E6B8(s32);
extern s32 func_80057AE4(u8 *, u32, u32);
extern void func_800AB620(s32);

/* Partial record/scratch/global views only: record bounds, object layouts,
 * helper contracts and the historical return convention remain provisional.
 * The 0x8010A39B/0x8010A39C counters are ordinary byte fields of the existing
 * D_800FF748 storage (base + 0xAC53 / + 0xAC54), not new symbols. The wrapped
 * facing difference narrows to a byte before the unsigned threshold tests, and
 * the block ordering is the measured one: the flag store and the frame check
 * read happen before the stack frame is set up. The empty input use keeps
 * the unsigned halfword view live so its signed narrowing stays the measured
 * separate sll/sra pair instead of folding into a single lh; it emits no
 * instruction and has no memory clobber. Ordinary native pointer accesses
 * replace two unnecessary scalar-address assembly names.
 *
 * The two mapped calls in 8003257C ignore the return residue. Their physical
 * a1 setup is not consumed here and is not an invented second formal input.
 * Signed halfword differences and their product fit s32; byte counters wrap
 * after callback-sensitive reloads. Native mapping/alignment and valid record
 * pointers are required; historical declarations and indirect uses are unknown. */
void func_80056000(u8 *record)
{
    u8 *base = D_800FF748;
    u8 *current;
    s32 side;
    s32 angle;
    s32 difference;
    s32 position;
    s32 depth;
    s32 target;
    s32 gap;
    u16 raw;

    D_8010A397 = 255;
    if (D_8010A392 != 0 || *(u8 *)0x1F80029A != 1) {
        return;
    }
    current = *(u8 **)0x1F8002F4;
    side = record[0x399] << 7;
    angle = current[0x3A4];
    difference = (u8)(side - angle) < 0x81 ? side - angle : angle - side;
    if ((u8)difference < 0x31) {
        position = *(s16 *)(record + 2);
        if (record[0x399] != 0) {
            if (-position >= -0x198F) {
                goto gate;
            }
            return;
        }
        if (position < -0x198F) {
            return;
        }
gate:
        if (func_8001E6B8(3) == 0 && func_80057AE4(record, 0, 0) != 0) {
            return;
        }
        func_800AB620(D_800C7D44[base[0xAC53] & 1] + 0xCAE);
        base[0xAC53] += 1;
    } else if ((u8)difference < 0x60) {
        raw = *(u16 *)0x1F8002BA;
        __asm__("" : : "r"(raw));
        target = (s16)raw;
        depth = *(s16 *)(record + 6);
        gap = depth - target;
        if (gap < 0) {
            gap = -gap;
        }
        if (gap < 0x2000) {
            return;
        }
        if (depth * target >= 0) {
            return;
        }
        if (record[0x399] != 0 ? target < 0 : target > 0) {
            func_800AB620((u8)((u32)base[0xAC54] % 3U) + 0xCB4);
        } else {
            func_800AB620((u8)((u32)base[0xAC54] % 3U) + 0xCB1);
        }
        base[0xAC54] += 1;
    }
}
