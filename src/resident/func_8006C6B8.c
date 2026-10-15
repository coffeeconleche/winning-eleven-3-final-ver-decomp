#include "common.h"

extern u8 D_8010C328[];
extern u8 D_8010C32F[];
extern u8 D_8010C330[];
extern s16 D_800C8524[];
extern u32 func_800484F8(s32, s32, u32, u32);
extern u32 func_8005B36C(s32, s32, s32, s32);

/* Partial aligned PS1 access views. Packed-table selectors retain their full
 * byte domains; numeric guest addresses do not assert a native array extent.
 * Squares and full-word negation wrap unsigned before signed interpretation.
 * Seven initialized, used register bindings have individual omission controls.
 * Complete record layouts, helper meanings and host backing remain unknown. */
void func_8006C6B8(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    register s32 offset __asm__("$2");
    s32 speed;
    u32 side;
    s32 position;
    s32 absolute;
    u16 raw;
    u8 *other;
    s32 dx;
    s32 dz;
    u32 direction;
    u32 phase;
    s32 goal;

    record[0x3B2] = 0;
    {
        u32 initialIndex = record[0x392];
        u32 initialSide = record[0x398];
        s32 packedOffset = initialIndex * 12;
        packedOffset += initialSide * 264;
        speed = ((*(u32 *)((u32)D_8010C330 + (u32)packedOffset) >> 11) & 127) + 100;
        *(u16 *)0x1F8000F2 = -(speed * 736) / 180 - (*(u8 *)((u32)D_8010C32F + (u32)packedOffset) & 15) + 70;
    }
    func_800484F8(*(s16 *)(record + 2), *(s16 *)(record + 6), record[0x3B4], 3);
    side = record[0x398];
    if (((u8 *)0x1F800000)[side + 0x2CF] == 0) {
        if (record[0x38D] == *(u8 *)0x1F8002A9) {
            *(u16 *)(record + 0x3D4) = *(u16 *)((side * 2U) + 0x1F800032);
            *(u16 *)0x1F80031C = 32;
        }
        return;
    }
    position = *(s16 *)0x1F8000F8;
    {
        u32 index = record[0x392];
        s32 packedOffset = index * 12;
        s32 tableLimit;
        s32 outside;
        packedOffset += side * 264;
        tableLimit = D_800C8524[*(u32 *)((u32)D_8010C328 + (u32)packedOffset) & 15];
        if (record[0x399] != 0) {
            outside = tableLimit < -position;
        } else {
            outside = tableLimit < position;
        }
        if (outside) return;
    }
    raw = *(u16 *)(scratch + 0x66);
    absolute = (s16)raw;
    if (absolute < 0) absolute = -absolute;
    if (absolute >= 0xCF5) return;
    other = *(u8 **)(scratch + 0x2F4);
    {
        register s32 recordX __asm__("$2") = *(s16 *)(record + 2);
        s32 otherX = *(s16 *)(other + 2);
        dx = recordX - otherX;
    }
    {
        register u32 firstSquare __asm__("$5") = (u32)dx * (u32)dx;
        register u32 secondSquare __asm__("$3");
        {
            register s32 recordZ __asm__("$2") = *(s16 *)(record + 6);
            s32 otherZ = *(s16 *)(other + 6);
            dz = recordZ - otherZ;
        }
        secondSquare = (u32)dz * (u32)dz;
        if ((s32)(firstSquare + secondSquare) <= 0xFFFFF) {
            offset = record[0x398] * 2;
            goto stamp;
        }
    }
    {
        u32 scratchPhase = record[0x399];
        u16 phaseCoordinate = *(u16 *)(scratch + 0x4A);
        s32 signedCoordinate = (s16)phaseCoordinate;
        s32 phaseLimit;
        s32 phaseInside;
        phaseLimit = *(s32 *)(scratchPhase * 4U + (u32)scratch + 0x314);
        if (scratchPhase != 0) {
            phaseLimit = (s32)(0U - (u32)phaseLimit);
            phaseInside = -signedCoordinate < phaseLimit;
            if (phaseInside) goto phasePassed;
        } else if ((phaseInside = signedCoordinate < phaseLimit)) {
phasePassed:
            raw = *(u16 *)(scratch + 0x66);
            absolute = (s16)raw;
            if (absolute < 0) absolute = -absolute;
            if (absolute >= 0x8B6) return;
            {
                u16 firstX = *(u16 *)(scratch + 0xF8);
                u16 firstZ = *(u16 *)(scratch + 0xFC);
                s32 x = (s16)firstX;
                s32 z = (s16)firstZ;
                goal = 0x3320;
                if (record[0x399] == 0) goal = -0x3320;
                direction = func_8005B36C(x, z, goal, 0);
            }
            phase = record[0x399];
            goal = 0x3320;
            if (((phase * 128U - direction) & 255U) >= 129U) {
                u16 branchX = *(u16 *)(scratch + 0xF8);
                register u16 branchZ __asm__("$2") = *(u16 *)(scratch + 0xFC);
                s32 x = (s16)branchX;
                s32 z = (s16)branchZ;
                if (phase == 0) goal = -0x3320;
                direction = func_8005B36C(x, z, goal, 0);
                if ((s32)((direction - (u32)record[0x399] * 128U) & 255U) < 88) return;
                goto update;
            } else {
                u16 oppositeX = *(u16 *)(scratch + 0xF8);
                register u16 oppositeZ __asm__("$2") = *(u16 *)(scratch + 0xFC);
                s32 x = (s16)oppositeX;
                s32 z = (s16)oppositeZ;
                if (phase == 0) goal = -0x3320;
                direction = func_8005B36C(x, z, goal, 0);
                if ((s32)(((u32)record[0x399] * 128U - direction) & 255U) < 88) return;
                goto update;
            }
        }
    }
    return;
update:
    offset = record[0x398] * 2;
    record[0x3B2] = 1;
stamp:
    *(u16 *)(record + 0x3D4) = *(u16 *)((u32)offset + (u32)scratch + 0x32);
}
