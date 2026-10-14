#include "common.h"

extern u8 scratch29A __asm__("0x1F80029A");
extern u8 scratch2A9 __asm__("0x1F8002A9");
extern u8 *scratchCurrent __asm__("0x1F8002F4");
extern s32 func_800944B0(u8 *);
extern s32 func_80095384(u8 *);
extern void func_8009406C(u8 *);
extern void func_8006C6B8(u8 *);
extern void func_8006CA58(u8 *);
extern void func_8006C53C(u8 *);

/* Existing scratch and partial record access views. Complete layouts, mask
 * table extent, helper APIs and historical return convention are provisional. */
void func_8006C3D8(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 coordinate;
    s32 state;
    s32 index;
    s32 mask;

    if (scratch29A != 1) {
        return;
    }
    if (record[0x38D] != scratch2A9) {
        coordinate = *(s16 *)(scratchCurrent + 2);
        if (record[0x399] != 0) {
            if (coordinate < 0) {
                goto change_state;
            }
            goto process;
        }
        if (coordinate <= 0) {
            goto process;
        }
change_state:
        state = record[0x396];
        if (state == 0 || state == 7) {
            record[0x396] = 0x82;
        }
        return;
process:
        *(s16 *)(record + 0x3BE) = func_800944B0(record);
        *(s16 *)(record + 0x3BC) = (u8)func_80095384(record);
        *(s16 *)(*(u8 **)(scratch + 0x2F4) + 0x3DC) = 0;
        if (record[0x39A] == 0) {
            func_8009406C(record);
        }
        index = record[0x398];
        mask = *(u16 *)(record + 0x3D4);
        if ((*(u16 *)(scratch + 0x32 + index * 2) & mask) == 0) {
            if (scratch[0x2A9] != 0) {
                func_8006C6B8(record);
            } else {
                func_8006CA58(record);
            }
        }
    } else {
        *(s16 *)(record + 0x3BE) = func_800944B0(record);
        *(s16 *)(record + 0x3BC) = (u8)func_80095384(record);
    }
    func_8006C53C(record);
}
