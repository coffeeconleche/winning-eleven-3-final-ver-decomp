#include "common.h"

/* Local access view, not a recovered complete object layout. */
typedef struct {
    u8 pad000[2];
    s16 signedValue;             /* 0x002 */
    u8 pad004[0x394];
    u8 selector;                 /* 0x398 */
    u8 mode;                     /* 0x399 */
    u8 pad39A[0x28];
    u16 status;                  /* 0x3C2 */
    u8 pad3C4[0x10];
    u16 mask;                    /* 0x3D4 */
} RecordView;

/* Existing raw scratch halfwords; no storage or linker symbol is allocated.
 * The original table extent and valid selector domain remain unknown. */
extern u16 scratchMasks[] __asm__("0x1F80002E");

/* Known callers discard the result. This void view does not establish the
 * original return contract or the gameplay meanings of the fields. */
void func_8002A7D8(RecordView *record) {
    u32 selector = record->selector;
    u32 mask = record->mask;

    if (scratchMasks[selector] & mask) {
        u32 mode = record->mode;
        s32 value = record->signedValue;

        if (mode != 0) {
            if (-value < 0x17E3) {
                /* Empty real-value input retains this separate return path;
                 * it emits no instruction, access, or register clobber. */
                __asm__ volatile("" : : "r"(value));
                return;
            }
        } else if (value < 0x17E3) {
            return;
        }
        record->status = 1;
    }
}
