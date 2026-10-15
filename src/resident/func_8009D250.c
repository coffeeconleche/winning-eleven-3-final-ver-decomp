#include "types.h"

/* The helper consumes the record pointer; its incoming a1/a2 registers are
 * overwritten before use. Its path-dependent result register is ignored. */
extern void func_8005CFB8(u8 *);

/* Partial record and existing scratch-memory views. Full selector domains,
 * scratch table extents and record allocation bounds remain unknown. */
void func_8009D250(u8 *record)
{
    u32 identifier;
    u8 *scratch = (u8 *)0x1F800000;

    if (((u8 *)0x1F8002CF)[record[0x398]] == 1) {
        identifier = record[0x38D];
        if (identifier == ((u8 *)0x1F80031F)[record[0x399] * 2]) {
            /* Retain unsigned byte and signed word remainder domains. */
            if ((u8)(identifier % 22U) != *(s32 *)0x1F800290 % 22) {
                *(u16 *)(record + 0x3D6) = 0;
                record[0x39C] = 0;
                return;
            }
        }
    }
    func_8005CFB8(record);
    /* Read this flag after the helper, which may modify scratch or record. */
    if ((scratch[0x29A] & 255) != 3) {
        record[0x3E2] = 0;
        record[0x3E3] = 0;
    }
}
