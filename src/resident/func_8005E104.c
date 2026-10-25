#include "common.h"

/* Partial native record/helper views. Complete layouts and gameplay meanings
 * are unknown. Qualified loads retain the observed unsigned captures and
 * rereads; they do not establish historical volatile declarations or MMIO.
 * Every register-bound value is initialized before its actual use. */

extern u8 func_800489A8(void);
extern u32 func_800494C0(u8 *);
extern u32 func_8004968C(u8 *, s16, s16);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_8001E6B8(s32);
extern u32 func_800B1128(u32);

void func_8005E104(u8 *object)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 steps;
    s32 x, z;
    s32 dx, dz;
    s32 destination;
    s32 delta;
    u32 distance;
    u32 angle;
    u32 threshold;
    u32 side;
    u32 flag;
    u8 phase;
    register s32 magnitude __asm__("$2");
    u8 *argument;

    switch (object[0x396]) {
    case 0:
    case 1:
    case 3:
    case 7:
    case 15:
    case 22:
    case 23:
        object[0x396] = 27;
        object[0x397] = 0;
        *(u16 *)(object + 0x3C2) = 16;
        /* fallthrough */
    case 27:
        if ((s16)*(volatile u16 *)(scratch + 0x31C) < 17) return;
        phase = object[0x397];
        if (phase == 0 || phase == 24) return;
        *(u16 *)(scratch + 0xF2) = -*(u16 *)(object + 0x3C4);
        steps = func_800489A8();
        {
            u32 rawX = *(volatile u16 *)(scratch + 0xF8);
            s32 initialX;
            s32 initialZ;
            u32 squareDX;
            /* Preserve the real unsigned capture before sign extension. */
            initialX = (s16)rawX;
            dx = *(s16 *)(object + 2) - initialX;
            squareDX = (u32)dx * (u32)dx;
            initialZ = (s16)*(volatile u16 *)(scratch + 0xFC);
            dz = *(s16 *)(object + 6) - initialZ;
            if ((s32)(squareDX + (u32)dz * (u32)dz) > 0x400000) return;
            {
                s32 anchorX = initialX;
                s32 firstX;
                register s32 secondX __asm__("$2");
                register u32 squareZ __asm__("$6");
                u32 secondSide;
                if (*(u8 *)(object + 0x399) == 0) firstX = anchorX - 0x3320;
                else firstX = anchorX + 0x3320;
                {
                    register s32 squareInput __asm__("$2") =
                        (s16)*(volatile u16 *)(scratch + 0xFC);
                    squareZ = (u32)squareInput * (u32)squareInput;
                }
                secondSide = *(u8 *)(object + 0x399);
                secondX = anchorX + 0x3320;
                if (secondSide == 0) secondX = anchorX - 0x3320;
                distance = (u32)firstX * (u32)secondX + squareZ;
                /* Complete this distance before subsequent scratch loads. */
                __asm__("" : "=r"(scratch) : "0"(scratch), "r"(distance));
            }
        }
        {
            s32 headingX, headingZ;
            destination = -0x3320;
            headingX = (s16)*(volatile u16 *)(scratch + 0xF8);
            headingZ = (s16)*(volatile u16 *)(scratch + 0xFC);
            if (*(volatile u8 *)(object + 0x399) == 0) destination = 0x3320;
            delta = func_8005B36C(headingX, headingZ, destination, 0);
        }
        side = object[0x399];
        destination = -0x3320;
        if ((u32)((delta - (side << 7)) & 255) >= 129) {
            s32 headingX = (s16)*(volatile u16 *)(scratch + 0xF8);
            register u32 rawZ __asm__("$2") = *(volatile u16 *)(scratch + 0xFC);
            s32 headingZ;

            headingZ = (s16)rawZ;
            if (side == 0) destination = 0x3320;
            delta = (object[0x399] << 7) - func_8005B36C(
                headingX, headingZ, destination, 0);
        } else {
            s32 headingX = (s16)*(volatile u16 *)(scratch + 0xF8);
            register u32 rawZ __asm__("$2") = *(volatile u16 *)(scratch + 0xFC);
            s32 headingZ;

            headingZ = (s16)rawZ;
            if (side == 0) destination = 0x3320;
            delta = func_8005B36C(headingX, headingZ, destination, 0) -
                (object[0x399] << 7);
        }
        flag = (scratch + object[0x398])[0x2CF];
        threshold = 0x2400000;
        if (flag == 0) threshold = 0x1000000;
        angle = delta & 255;
        if (angle < 49 && distance < threshold) {
            if (flag != 1) {
                if (func_8001E6B8(3) == 0 && (distance > 0x8FFFFF || angle >= 25))
                    goto continuation;
            }
            object[0x396] = 25;
            object[0x397] = 0;
            if (func_8001E6B8(3) == 0 && func_800494C0(object) > 0xC40000) {
                *(u16 *)(object + 0x3C2) = 1;
                return;
            }
            *(u16 *)(object + 0x3C2) = 0;
            return;
        }
continuation:
        if (!scratch[0x328]) return;
        if ((u32)(object[0x397] - 32) < 2) return;
        x = (s16)*(volatile u16 *)(scratch + 0xF8);
        if (object[0x399]) {
            x = -x;
            argument = object;
            if (x < -0x23E1) goto close;
            goto alternate;
        } else {
            argument = object;
            if (x >= -0x23E1) goto alternate;
        }
close:
        {
            z = (s16)*(volatile u16 *)(scratch + 0xFC);
            magnitude = z;
            if (z < 0) {
                magnitude = -magnitude;
            }
            argument = object;
            if (magnitude >= 0x12F4) goto alternate;
            if (func_8004968C(argument,
                (s16)*(volatile u16 *)(scratch + 0xF8), z) > 0x8FFFFF) return;
            goto copy;
        }
alternate:
        if (func_800B1128(func_8004968C(argument,
            (s16)*(volatile u16 *)(scratch + 0xF8),
            (s16)*(volatile u16 *)(scratch + 0xFC))) / 66 + 10 >= steps + 4) return;
copy:
        *(u16 *)(object + 0x3D6) = *(u16 *)(scratch + 0x16 + object[0x398] * 2);
        return;
    default:
        return;
    }
}
