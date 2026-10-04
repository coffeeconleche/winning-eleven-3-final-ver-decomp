#include "common.h"

/* Word call views preserve supplied bits; the callees narrow first/key to
 * bytes/halfwords internally. Their original prototypes remain unknown. */
extern void func_8001CEE0(s32 first, s32 key, s32 third, s16 fourth,
                         s16 fifth, u8 sixth, u8 seventh, s16 eighth);
extern u8 *func_8001D004(s32 key);

void func_8018EB54(u8 *record, u32 selector)
{
    u8 value;
    u8 *result;
    u32 quotient;
    u32 coordinate;
    u32 remainder;
    /* Retain the measured shared prefix lifetime across the first call. */
    register u32 prefix __asm__("$17") = 0xA000;

    func_8001CEE0((u8)selector + 1, (u8)selector | prefix, 0, 0, 80, 7, 0, 1);
    /* Empty tie prevents reuse of the first encoded key. */
    __asm__ volatile ("" : "=r"(selector) : "0"(selector));
    value = record[0x392];
    result = func_8001D004((u8)selector | prefix);
    quotient = (u32)value / 11;
    coordinate = ((u8)quotient << 6) + (record[0x398] << 7);
    remainder = (u8)((u32)value % 11);
    /* Word input retains byte narrowing and coordinate/remainder ordering;
     * these constraints emit no instructions and claim no record field names. */
    __asm__ volatile ("" : : "r"(remainder), "r"(coordinate));
    result[3] = coordinate;
    result[4] = remainder << 4;
}
