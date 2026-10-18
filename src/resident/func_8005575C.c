#include "common.h"

extern u32 func_80049778(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);

#define H(p, n) (*(s16 *)((p) + (n)))
#define U(p, n) (*(u16 *)((p) + (n)))
#define P(p, n) (*(u8 **)((p) + (n)))
/* Preserve the original word negation even for the 0x80000000 bit pattern. */
#define ABS(v) ({ s32 magnitude = (v); \
    if (magnitude < 0) magnitude = (s32)(0U - (u32)magnitude); magnitude; })

/* Partial PS1 byte/halfword views, not native structure declarations.
 * Field meanings and the goal-test semantics remain provisional. Empty asm
 * keeps the measured branch shapes; it emits no instructions. */
s32 func_8005575C(u8 *obj)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *other;
    u32 first;
    s32 diff;
    s32 x;

    if (obj[0x39A] == 0) {
        goto zero;
    }
    if (obj[0x38D] != scratch[0x31E + obj[0x399] * 2]) {
        return 0;
    }
    if (func_80049778(obj) <= 0x8FFFF) {
        return 1;
    }
    if (scratch[0x2A9] != 0) {
        return 0;
    }
    other = P(scratch, 0x2F4);
    if (ABS(H(other, 6)) >= 0x8B6) {
        return 0;
    }
    x = H(other, 2);
    if (obj[0x399]) {
        if (-x < 0x23E3) {
            return 0;
        }
    } else if (x < 0x23E3) {
        return 0;
    }
    if ((s16)U(scratch, 0x2B8) != 0x7FFF) {
        return 0;
    }
    first = func_8005B36C(H(P(scratch, 0x2F4), 2), H(P(scratch, 0x2F4), 6),
        obj[0x399] == 0 ? 0x3320 : -0x3320, 0);
    first -= func_8005B36C(H(obj, 2), H(obj, 6), H(P(scratch, 0x2F4), 2), H(P(scratch, 0x2F4), 6));
    first = (u8)first;
    first = first < 0x81;
    if (first) {
        goto near_goal;
    }
    first = func_8005B36C(H(obj, 2), H(obj, 6), H(P(scratch, 0x2F4), 2), H(P(scratch, 0x2F4), 6));
    diff = (u8)(first - func_8005B36C(H(P(scratch, 0x2F4), 2), H(P(scratch, 0x2F4), 6),
        obj[0x399] == 0 ? 0x3320 : -0x3320, 0));
    diff = diff < 0x30;
    if (diff) {
        return 1;
    }
    __asm__ volatile("");
    goto zero;
near_goal:
    first = func_8005B36C(H(P(scratch, 0x2F4), 2), H(P(scratch, 0x2F4), 6),
        obj[0x399] == 0 ? 0x3320 : -0x3320, 0);
    first -= func_8005B36C(H(obj, 2), H(obj, 6), H(P(scratch, 0x2F4), 2), H(P(scratch, 0x2F4), 6));
    first = (u8)first;
    first = (s32)first < 0x30;
    if (first) {
        return 1;
    }
zero:
    return 0;
}
