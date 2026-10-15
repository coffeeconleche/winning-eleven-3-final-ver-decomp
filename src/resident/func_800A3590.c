#include "types.h"

extern u8 D_800FF748[];
extern void func_800A03FC(void);
extern s32 func_8005CE30(u32);
extern void func_800A1484(u8 *, u8 *, u8 *, u32);
/* The second argument occupies the original a1 slot. This helper overwrites
 * it before use; the following two output pointers are consumed in a2/a3. */
extern void func_800A0F30(u8 *, u32, u8 *, u8 *);
extern s32 abs(s32);

/* Existing record storage with observed byte/halfword views. Complete record
 * layouts, helper APIs, selector domains and allocation bounds are unknown. */
void func_800A3590(void)
{
    u8 *records = D_800FF748;
    u8 *record;
    u8 *z;
    s32 count;
    u8 mode;
    s32 value;
    s32 clamped;

    if (*(u8 *)0x1F8002E1 != 5) {
        count = 0;
        func_800A03FC();
        record = (u8)func_8005CE30(*(u8 *)0x1F8002AD) * 0x3E8 + 0x3E8 + records;
        z = record + 6;
        do {
            if (z[0x38B] >= 0x11U && record[0] != 0) {
                func_800A1484(record, record + 2, z, 0xC00);
            }
            count++;
            z += 0x3E8;
            record += 0x3E8;
        } while ((u8)count < 10U);
        /* First-loop helpers may change the selector: reread and reselect. */
        count = 0;
        record = records + ((u8)func_8005CE30(*(u8 *)0x1F8002AD) * 0x3E8 + 0x3E8);
        z = record + 6;
        do {
            mode = z[0x3DB];
            if (mode != 0) {
                func_800A0F30(record, mode, record + 2, z);
                /* Promote signed16 to signed32 before abs: -32768 becomes
                 * 32768, preserving the original clamp at that extreme. */
                value = *(s16 *)(z - 4);
                if (abs(value) >= 0x2E09) {
                    clamped = -0x2E08;
                    if (value > 0) clamped = 0x2E08;
                    *(s16 *)(z - 4) = clamped;
                }
                value = *(s16 *)z;
                if (abs(value) >= 0x2081) {
                    clamped = -0x2080;
                    if (value > 0) clamped = 0x2080;
                    *(s16 *)z = clamped;
                }
            }
            count++;
            z += 0x3E8;
            record += 0x3E8;
        } while ((u8)count < 10U);
    }
}
