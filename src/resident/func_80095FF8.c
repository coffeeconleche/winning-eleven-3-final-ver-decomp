#include "common.h"

/* Partial access layout; record ownership and field meanings remain unknown. */
typedef struct {
    u8 unknown[0x38D];
    u8 byte38D;
    u8 unknown38E[0x30];
    s16 half3BE;
} Resident95FF8View;

extern u8 scratch2AC __asm__("0x1F8002AC");
extern u32 func_8005CE14(u32);

/* Zero skips the scratch read and callback. Compare the callback's low byte
 * against the record byte read after that call. Original helper/API provisional. */
s32 func_80095FF8(Resident95FF8View *record)
{
    /* Capture the actual halfword in the observed result register. */
    register s32 result __asm__("$2") = record->half3BE;

    if (result != 0) {
        result = func_8005CE14(scratch2AC);
        if (record->byte38D == (u8)result) {
            result = 1;
            /* Transparent actual-value identity retains the conditional one
             * assignment; it emits no instructions, accesses or clobbers. */
            __asm__("" : "=r"(result) : "0"(result));
        } else {
            result = 0;
        }
    } else {
        result = 0;
    }
    return result;
}
