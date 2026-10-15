#include "types.h"

typedef struct {
    u16 unknown0, value2, value4, value6;
    u8 unknown8[0x3BC - 8];
    u16 value3BC, value3BE;
} Resident9F554View;

extern u8 D_800FF748[];
extern void func_800A5340(void);
extern void func_800A484C(void);
extern void func_800A4D30(u8 *, s16 *, s16 *);
extern void func_800A3590(void);
extern void func_800A557C(void);
extern void func_8009F574(void);
extern u32 func_8009F554(Resident9F554View *, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);

/* Partial views of existing record/scratch storage. Native helper APIs and
 * complete allocation bounds remain provisional; no new guest storage. */
void func_800A5810(void)
{
    s16 x, z;
    u8 *scratch = (u8 *)0x1F800000;
    s32 count;
    u8 *records;
    u8 *record;
    u8 *identifier;
    u8 value;

    func_800A5340();
    count = 0;
    func_800A484C();
    records = D_800FF748;
    record = records + 0x3E8;
    identifier = records + 0x775;
    do {
        if ((scratch[0x2E1] & 255) != 5 || identifier[0xD] == 0) {
            value = identifier[0];
            if (value != scratch[0x2AD] && value != scratch[0x2AE]) {
                if (value == 1) {
                    func_8009F554((Resident9F554View *)record, -0x32A0, 0);
                    func_8005BA30(record, 90, 0);
                } else if (value == 12) {
                    func_8009F554((Resident9F554View *)record, 0x32A0, 0);
                    func_8005BA30(record, 90, 0);
                } else {
                    /* This helper writes both signed-halfword outputs. */
                    func_800A4D30(record, &x, &z);
                    if (x >= 0x3321) x = 0x3320;
                    if (x < -0x3320) x = -0x3320;
                    func_8009F554((Resident9F554View *)record, x, z);
                    func_8005BA30(record, 1, 0);
                }
            }
        }
        count++;
        identifier += 0x3E8;
        record += 0x3E8;
    } while ((u8)count < 22U);
    func_800A3590();
    func_800A557C();
    func_8009F574();
}
