#include "common.h"

/* Partial measured field view only; complete record layout, mode meanings,
 * original helper API and return declaration remain provisional. Both
 * scheduling stages are disabled for this function's measured byte-store/
 * zero-result order. Either flag alone or neither differs at 140 bytes;
 * result-shaping and its empty input were eliminated. Natural 24-byte frame. */
typedef struct {
    u8 before38E[0x38E];
    u16 key38E;
    u8 between390[6];
    u8 mode396;
    u8 state397;
} RecordView;
extern void func_8005BA30(RecordView *, u32, u32);

s32 func_800537D0(RecordView *record)
{
    switch (record->mode396) {
    case 0:
    case 0x82:
        if (record->key38E != 1) {
            func_8005BA30(record, 1, 0);
        }
        return 1;
    case 1:
    case 3:
    case 7:
        record->mode396 = 24;
        record->state397 = 0;
        return 0;
    default:
        return 0;
    }
}
