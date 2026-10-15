#include "common.h"

extern u8 D_800C6C4B;
extern void func_8005BA30(u8 *, u32, u32);
extern void func_8004B0F0(u8 *, u32, u32, u32);
extern void func_8004B414(void);
extern void func_80049DF0(u8 *, u32, u32, u32);

/* Partial record/API views. Phase arithmetic uses only the low input bytes.
 * Capture aids retain the measured register allocation without instructions.
 * Negation wraps as a word, preserving INT_MIN through negative-absolute-value
 * division by 736; the signed division itself has no exceptional denominator. */
void func_8002CE60(u8 *record, u32 previousPhase, u32 phase)
{
    register u32 initialPhase __asm__("$2") = phase;
    s32 direction;
    s32 flag;

    __asm__("" : "=r"(initialPhase) : "0"(initialPhase));
    phase = initialPhase;
    record[0x3AC] = (u8)(initialPhase - previousPhase) < 129;
    func_8005BA30(record, 84, 0);
    {
        register s32 lowPhase __asm__("$3") = (u8)phase;
        if (record[0x3AC] == 0) {
            direction = lowPhase + 84;
        } else {
            direction = lowPhase - 84;
        }
    }
    {
        s32 vertical = *(s32 *)(*(u8 **)0x1F8002F4 + 0xC);
        func_8004B0F0(record, (u8)direction, 26,
            (u32)((s32)(0U - (u32)(vertical < 0 ? (s32)(0U - (u32)vertical) : vertical)) / 736));
    }
    func_8004B414();
    flag = record[0x3AC];
    record[0x3D1] = 0;
    {
        register s32 finalPhase __asm__("$4") = (u8)phase;
        s32 amount = D_800C6C4B;
        direction = flag ? finalPhase - amount : finalPhase + amount;
        func_80049DF0(record, (u8)direction, 7, 7);
    }
    record[0x3AB] = phase;
}
