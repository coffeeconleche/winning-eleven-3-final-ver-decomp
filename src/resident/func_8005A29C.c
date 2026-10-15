#include "common.h"

extern u8 D_800FF748[];
extern u16 D_800C7DB0[];
extern u16 D_800C7DB4[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

void func_8005A29C(u8 *record)
{
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *current;
    u8 angle;
    s32 own;
    u32 forward;
    s32 selected;
    s32 value;
    s32 height;
    s32 argument;
    u8 counter;
    u32 event;
    u32 eventFour;

    if (*(s32 *)0x1F8002B0 == 4) {
        angle = (*(u8 **)0x1F8002F4)[0x3A4];
        own = record[0x399] << 7;
        forward = ((u32)own - (u32)angle) & 0xFF;
        if (forward >= 0x81U) {
            selected = (s32)(((u32)angle - (u32)own) & 0xFF) < 0x31;
        } else {
            selected = (s32)forward < 0x31;
        }
        if (selected != 0) {
            if ((scratch[0x2E1] & 0xFF) != 5) {
                func_800AB620(0x51C);
            }
            func_800AB620(0x10);
            if (base[0xAC4F] == 4 && func_8001E6B8(4) == 0) {
                argument = D_800C7DB0[base[0xAC68] & 1];
                goto submit;
            }
            current = *(u8 **)(scratch + 0x2F4);
            value = *(s16 *)(current + 0x3C2);
            if (value < 0) {
                value = -value;
            }
            if ((u32)(value - 0x652) < 0x281U) {
                value = *(s16 *)(current + 0x3C4);
                if (value < 0) {
                    value = -value;
                }
                if (value < 0xA17) {
                    argument = D_800C7DB4[base[0xAC68] & 1];
                    goto submit;
                }
            }
            value = *(s16 *)(current + 0x3C6);
            if (value < 0) {
                value = -value;
            }
            if (value < 0x392) {
                height = *(s16 *)(current + 4);
                if (height < *(s16 *)(current + 0x3C4) + 0x40 &&
                    height < -0x266) {
                    event = base[0xAC4F];
                    eventFour = 4;
                    /* Preserve the event word and its actual comparison operand. */
                    __asm__("" : "=r"(event), "=r"(eventFour) : "0"(event), "1"(eventFour));
                    if ((event & 0xFF) == eventFour || (u32)(event - 6) < 2U) {
                        argument = base[0xAC68];
                        argument &= 3;
                        argument |= 0xD28;
submit:
                        func_800AB620(argument);
                        counter = base[0xAC68];
                        base[0xAC75] = 1;
                        base[0xAC68] = counter + 1;
                    }
                }
            }
        }
    }
}
