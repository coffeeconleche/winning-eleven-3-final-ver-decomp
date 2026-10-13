#include "common.h"

extern u8 D_800FF748[];
extern u8 D_800FF740;
extern void func_800AB620(s32 value);
extern void func_8006FF48(u32 selector);

/* Partial scratch and buffer access views. The known caller ignores the
 * surviving result register; the original return declaration is unknown. */
void func_80017258(void)
{
    u8 *data = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s32 i = 0;
    u32 offset = 0x230;
    /* Retain the measured buffer-base register and positive field offsets. */
    register u8 *input __asm__("$6") = (u8 *)0x1F800000;

    for (; i < 2; offset += 8, i++, input += 0x22) {
        u32 status = input[0x38C];
        register u32 comparison __asm__("$2") = 255;
        /* The status and initialized comparison share the original selector
         * registers; comparison is reassigned before every later use. */
        if (status != comparison) {
            /* These views retain the measured record, augmented mask,
             * change mask and pressed-result allocation, not original types. */
            register u16 *state __asm__("$7") = (u16 *)(scratch + offset);
            u32 previous;
            register u32 buttons __asm__("$5");
            u32 raw;
            u32 type;
            register u32 changed __asm__("$3");
            register u32 pressed __asm__("$2");
            u32 axis;

            /* Capture the actual computed record before its halfword loads. */
            __asm__("" : "=r"(state) : "0"(state));
            previous = state[0];
            state[1] = previous;
            raw = ~(input[0x38F] | (input[0x38E] << 8));
            comparison = raw;
            /* Keep the measured full-word raw-mask copy before narrowing. */
            __asm__("" : "=r"(comparison) : "0"(comparison));
            buttons = comparison;
            state[0] = buttons;
            comparison = input[0x38D];
            /* Preserve the byte capture, shift and selector-constant order. */
            __asm__("" : "=r"(comparison) : "0"(comparison));
            type = comparison >> 4;
            __asm__("" : : "r"(type));
            comparison = 5;
            __asm__("" : : "r"(comparison));
            if (type == comparison) {
                goto analog;
            }
            comparison = 7;
            __asm__("" : : "r"(comparison));
            if (type == comparison) {
            analog:
                /* Both thresholds use the same captured axis byte. */
                axis = input[0x392];
                if (axis < 49) {
                    buttons = raw | 0x8000;
                }
                if (axis >= 176) {
                    buttons |= 0x2000;
                }
                axis = input[0x393];
                if (axis < 49) {
                    buttons |= 0x1000;
                }
                if (axis >= 176) {
                    buttons |= 0x4000;
                }
                state[0] = buttons;
            }
            changed = buttons ^ previous;
            pressed = buttons & changed;
            changed = previous & changed;
            state[2] = pressed;
            state[3] = changed;
        }
    }

    i = 0;
    if (scratch[0x2A1]) {
        s32 second = 1;
        u8 *cursor = scratch;
        for (; i < 2; i++, cursor += 8) {
            if ((*(u16 *)(cursor + 0x234) & 0x800) &&
                scratch[0x2A0] == 0) {
                if (scratch[0x2E2] == 0 && i == second) {
                    break;
                }
                D_800FF740 = i;
                func_800AB620(2);
                /* These writes follow the callback; the next iteration
                 * rereads the guards and pressed halfword. */
                scratch[0x2A0] = second;
                data[0xABD8] = 0;
                data[0xABD9] = 0;
                func_8006FF48(12);
            }
        }
    }
}
