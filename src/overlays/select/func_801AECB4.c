#include "common.h"

extern u8 D_800FF748[], D_801DA620[], D_801D86F2;
extern s32 func_801AEFE0(const void *, const void *);
extern s32 func_801AF110(const void *, const void *);
extern void func_800AD6A8(void *, u32, u32, s32 (*)(const void *, const void *));

/* Six-byte access view; the untouched fields' meanings remain unknown. */
typedef struct {
    u8 value;
    u8 unknown1;
    u16 maximum;
    u16 unknown4;
} Record;

void func_801AECB4(void) {
    u8 *base = D_800FF748;
    u8 *descriptor = D_801DA620;
    s32 outer = 0;
    s32 offset = 0x93A4;

    do {
        s32 inner = 0;
        Record *record = (Record *)(base + offset);
        do {
            u32 value, maximum;
            descriptor[0] = outer;
            descriptor[1] = inner;
            value = record->value;
            maximum = record->maximum;
            if (maximum < value) {
                record->maximum = value;
            }
            descriptor += 2;
            inner++;
            record++;
        } while (inner < 22);
        outer++;
        offset += 132;
    } while (outer < 43);

    /* Only these modes sort the 43-by-22 two-byte index descriptors. */
    switch (D_801D86F2) {
    case 0:
        func_800AD6A8(D_801DA620, 946, 2, func_801AEFE0);
        break;
    case 1:
        func_800AD6A8(D_801DA620, 946, 2, func_801AF110);
        break;
    }
}
