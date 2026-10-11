#include "common.h"

extern void func_8005BA30(u8 *record, u32 selector, u32 index);

/* Partial byte-addressed access view; the record layout and API remain
 * provisional. Read 0x3A4 after the callback, which can modify the record.
 * Callers ignore v0: the original leaves 27 on the skipped path and the
 * zero-extended source byte on the taken path. No C return is inferred. */
void func_80054A1C(u8 *record)
{
    if (*(u16 *)(record + 0x38E) == 27) {
        func_8005BA30(record, 38, record[0x390]);
        record[0x3AA] = record[0x3A4];
    }
}
