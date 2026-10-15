#include "types.h"

typedef struct {
    u16 unknown0, value2, value4, value6;
    u8 unknown8[0x3BC - 8];
    u16 value3BC, value3BE;
} Resident9F554View;
extern u8 D_800FF748[];
extern u32 func_8009F554(Resident9F554View *, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);
extern void func_800676C4(u32, s32, s32, u32);
extern void func_800A3EC8(u8 *, s16 *, s16 *);
extern void func_800A3730(void);
extern void func_8009F574(void);

/* Partial views of existing record/scratch storage. Complete allocation
 * bounds and native helper declarations remain provisional. */
void func_800A4630(void)
{
    s16 x, z;
    s16 direction;
    u8 *scratch = (u8 *)0x1F800000;
    s32 count = 0;
    u8 *records = D_800FF748;
    u8 *record = records + 1000;
    u8 *side = records + 0x781;
    u8 identifier;
    u8 *associated;
    u32 selected;
    u32 offset;

    do {
        if ((scratch[0x2E1] & 255) != 5 || side[1] == 0) {
            identifier = side[-12];
            if (identifier == 1 || identifier == 12) {
                direction = -1;
                if (side[0] == 0) direction = 1;
                func_8009F554((Resident9F554View *)record,
                              -(direction * 0x3220), 0);
                func_8005BA30(record, 90, 0);
            } else {
                /* A3EC8 initializes both signed-halfword outputs. */
                func_800A3EC8(record, &x, &z);
                if (x < -0x3320) x = -0x3220;
                else if (x >= 0x3321) x = 0x3220;
                if (z >= 0x2101) z = 0x2000;
                else if (z < -0x2100) z = -0x2000;
                func_8009F554((Resident9F554View *)record, x, z);
                func_8005BA30(record, 1, 0);
            }
        }
        count++;
        side += 1000;
        record += 1000;
    } while ((u8)count < 22U);
    func_800A3730();
    func_8009F574();
    associated = *(u8 **)(scratch + 0x2F4);
    func_800676C4(0, *(s16 *)(associated + 2), *(s16 *)(associated + 6), 0);
    /* The first helper may change the associated pointer and coordinates. */
    associated = *(u8 **)(scratch + 0x2F4);
    func_800676C4(1, *(s16 *)(associated + 2), *(s16 *)(associated + 6), 0);
    selected = scratch[0x2AD] & 255;
    record = records + (u8)(selected % 24U) * 1000;
    offset = record[0x399] * 2;
    scratch[0x2AD] = (scratch + offset)[0x322];
}
