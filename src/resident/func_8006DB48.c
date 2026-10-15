#include "common.h"

/* Same partial access view as the existing 80095FF8 definition. */
typedef struct {
    u8 unknown[0x38D];
    u8 byte38D;
    u8 unknown38E[0x30];
    s16 half3BE;
} Resident95FF8View;

extern s32 func_800494C0(u8 *);
extern u32 func_8008ABA8(u8 *, s32);
extern s32 func_80095FF8(Resident95FF8View *);
extern u32 func_8008DB84(u8 *);
extern s32 func_80090370(u8 *);
extern s32 func_8008C618(u8 *);

/* Interpret distance sums as signed target words after unsigned wrapping.
 * Helpers remain opaque: later record/scratch reads are not snapshots. */
s32 func_8006DB48(u8 *record)
{
    u8 *current = *(u8 **)0x1F8002F4;
    u8 *scratch = (u8 *)0x1F800000;
    u32 dx = (u32)(s32)*(s16 *)(record + 2) -
             (u32)(s32)*(s16 *)(current + 2);
    u32 dz = (u32)(s32)*(s16 *)(record + 6) -
             (u32)(s32)*(s16 *)(current + 6);
    u8 state;
    u8 own;
    u8 angle;
    u32 forward;
    u32 submitted;
    s32 result;
    u32 phase;

    if ((s32)(dx * dx + dz * dz) <= 0xFFFFFF) {
        if (*(s16 *)(record + 0x3BE) != 0) {
            state = *(u8 *)0x1F8002A9;
            if (state != 0 && record[0x38D] != state) {
                submitted = func_8008ABA8(record, 0) & 0xFF;
                goto submitted_result;
            }
            if ((s16)*(u16 *)(scratch + 0x2B4) == 0x7FFF || scratch[0x2A9] != 0) {
                if ((u32)func_800494C0(record) > 0x3FFFFFU &&
                    func_80095FF8((Resident95FF8View *)record) == 0) {
                    own = record[0x3AA];
                    angle = (*(u8 **)(scratch + 0x2F4))[0x3A4];
                    forward = ((u32)own - (u32)angle) & 0xFF;
                    if (forward >= 0x81U) {
                        if ((s32)(((u32)angle - (u32)own) & 0xFF) < 0x31) {
                            goto first_attempt;
                        }
                        goto other_attempts;
                    }
                    if ((s32)forward < 0x31) {
                        goto first_attempt;
                    }
                    goto other_attempts;
                }
first_attempt:
                if (func_8008ABA8(record, 0) & 0xFF) {
                    return 1;
                }
            }
other_attempts:
            if (func_8008DB84(record) & 0xFF) {
                return 1;
            }
            if (func_80090370(record) != 0) {
                return 1;
            }
            submitted = func_8008C618(record);
submitted_result:
            if (submitted != 0) {
                return 1;
            }
            goto fallback;
        }
        if (record[0x39A] != 0) {
            if (record[0x38D] == scratch[0x2A9]) {
                result = 1;
                phase = 10;
                goto update;
            }
        }
    }
fallback:
    if (record[0x396] != 0x9D &&
        *(u16 *)(record + 0x3D4) == *(u16 *)(scratch + record[0x398] * 2 + 0x32)) {
        result = 1;
        phase = 0x9D;
update:
        record[0x396] = phase;
        record[0x397] = 0;
        return result;
    }
    return 0;
}
