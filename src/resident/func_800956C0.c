#include "common.h"

/* Provisional call-site views. The first helper narrows all four arguments to
 * signed halfwords; the second narrows its three consumed arguments to bytes. */
extern u32 func_8005B36C(s32 first, s32 second, s32 third, s32 fourth);
extern u32 func_8005B7CC(u32 first, u32 second, u32 third);

/* Only these field accesses are established. Known callers also set a1, but
 * this function never consumes it or returns a result used by those callers. */
void func_800956C0(u8 *record)
{
    if (record[0x38D] == *(u8 *)0x1F8002A9) {
        record[0x3AB] = record[0x3AA];
    } else {
        u32 result = func_8005B36C(*(s16 *)(record + 2),
            *(s16 *)(record + 6), *(s16 *)0x1F800036, *(s16 *)0x1F800066);

        record[0x3AB] = func_8005B7CC((u8)result,
            (u8)((*(u8 **)0x1F8002F4)[0x3A4] + 0x80), 0x10);
    }
}
