#include "common.h"

/* Partial argument/result views established from the complete callees. */
extern u32 func_80094DC4(u8 *record);
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80095F40(void);
extern void func_800951C4(u8 *record, u32 value, s32 third, s32 fourth);
extern void func_80095090(u8 *record);
extern void func_80057968(u8 *record);
extern void func_80094FF4(u8 *record);
extern void func_80057848(u8 *record);

/* Known callers ignore the final callback's register residue. Record offsets
 * below describe only the observed accesses, not a complete record layout. */
void func_80095E8C(u8 *record)
{
    if ((u8)func_80094DC4(record)) {
        /* Keep the actual adjustment and byte in their original registers.
         * Removing either binding changes three words; removing both changes
         * four. No empty instruction, clobber or forced frame is required. */
        register u32 adjustment __asm__("$4") =
            (u32)func_8001E6B8(0x24) + 0x20;
        u32 flag = record[0x3AC];
        register u32 byte __asm__("$3") = record[0x3AB];
        u32 value;
        s32 third, fourth;

        /* Word arithmetic followed by explicit low-byte argument narrowing. */
        if (flag) value = byte + adjustment;
        else value = byte - adjustment;
        third = func_80095F40();
        fourth = (u32)func_8001E6B8(0x10) + 8;
        func_800951C4(record, (u8)value, third, fourth);
        func_80095090(record);
        func_80057968(record);
    } else {
        func_80094FF4(record);
        func_80057848(record);
    }
}
