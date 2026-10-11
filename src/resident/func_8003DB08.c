#include "common.h"

/* Offset-four halfword view only; complete record and APIs are provisional.
 * Two empty value identities retain signed scratch captures and their copies;
 * removing first/second/both gives 124/128-different/124 bytes. The 16-byte
 * local reservation retains the measured 40-byte frame, not recovered storage:
 * removal/halving gives 24/32-byte frames. None emits instructions, accesses,
 * clobbers, or address materialization; no bindings/extra flags are used. */
extern void func_8005C1CC(u16 *, u32);
extern s16 D_1F8000F2 __asm__("0x1F8000F2");

void func_8003DB08(u16 *record)
{
    s32 depth;
    u32 frameReservation[4];
    __asm__ volatile ("" : : "m"(frameReservation[0]));

    func_8005C1CC(record, 8);
    depth = D_1F8000F2;
    if (depth > 0) {
        s32 amount;
        __asm__ volatile ("" : "=r"(amount) : "0"(depth));
        record[2] = (u16)(record[2] - amount);
    }
    func_8005C1CC(record, 11);
    depth = D_1F8000F2;
    if (depth > 0) {
        s32 amount;
        __asm__ volatile ("" : "=r"(amount) : "0"(depth));
        record[2] = (u16)(record[2] - amount);
    }
}
