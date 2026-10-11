#include "common.h"

/* Only the measured 40-byte stride and signed word at offset 0x24 are
 * represented. Table extent, field meaning, and original APIs are unknown.
 * Word updates wrap unsigned before signed comparisons, as on the target. */
typedef struct {
    u8 before24[36];
    s32 value24;
} Record40;
extern Record40 D_80105508[];

s32 func_8006F9EC(u8 selector, s32 target, u32 step)
{
    Record40 *record = &D_80105508[selector];
    s32 value = record->value24;
    s32 result = 0;

    if (value == target) {
        result = 1;
    } else if (value < target) {
        s32 updated = (s32)((u32)value + step);
        record->value24 = updated;
        if (updated >= target) {
            record->value24 = target;
            result = 1;
        }
    } else if (value > target) {
        s32 updated = (s32)((u32)value - step);
        record->value24 = updated;
        if (updated <= target) {
            record->value24 = target;
            result = 1;
        }
    }
    return result;
}
