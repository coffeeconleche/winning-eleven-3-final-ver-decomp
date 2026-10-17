#include "common.h"

/* Native ABI/access views only; complete record layouts and historical
 * gameplay meanings remain unknown. Pointer arguments refer to existing
 * storage. The handwritten square-root helper consumes only its first word. */
extern u32 func_8005BD1C(u8 *);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_800B1128(u32);
extern u32 func_8002EB3C(u32, u32);
extern s32 func_8002F6C8(u32);
extern void func_8002F0FC(u32, u32, s16, s16, s32);
extern void func_8004B0F0(u8 *, u32, u32, u32);
extern void func_800512B8(u8 *, u8);
extern u8 func_80052D90(void *);
extern u8 func_80067860(u8, s16, s16, u8, u8, u32);
extern u8 func_8005B7CC(u8, u8, u8);
extern void func_8005B864(u8 *, u16);
extern void func_800954E8(u8 *);
extern u8 D_800FF748[];
extern u8 D_800CA674[];

void func_8008B924(u8 *object)
{
    u8 *pool;
    u8 *scratch = (u8 *)0x1F800000;
    s32 i;
    u8 *other;
    s16 index;
    s16 targetX;
    u8 heading;
    s32 zoom;
    u32 distance;
    u32 scale;
    s32 dx, dz;
    s32 speed;
    s32 offsetX, referenceX;
    u32 side;

    index = *(s16 *)(object + 0x3C2);
    pool = D_800FF748;
    if (index == 0) {
        func_8005BD1C(object);
        object[0x396] = 0x81;
        object[0x397] = 0;
        return;
    }
    /* Retain signed remainder and halfword narrowing before the slot stride. */
    other = pool + (s16)(index % 24) * 1000;
    switch (object[0x397]) {
    case 0:
        func_8005BA30(object, 0x70, 0);
        offsetX = *(s16 *)(object + 0x3C6);
        side = object[0x399];
        object[0x3AC] = 0;
        referenceX = *(s16 *)(other + 2);
        if (side != 0) {
            targetX = referenceX - offsetX;
        } else {
            targetX = referenceX + offsetX;
        }
        object[0x3AB] = func_8005B36C(*(s16 *)(object + 2),
            *(s16 *)(object + 6), targetX, *(s16 *)(other + 6));
        object[0x397]++;
        break;
    case 1:
        func_8005BD1C(object);
        switch (object[0x390]) {
        case 19:
            offsetX = *(s16 *)(object + 0x3C6);
            referenceX = *(s16 *)(other + 2);
            if (object[0x399]) {
                targetX = referenceX - offsetX;
            } else {
                targetX = referenceX + offsetX;
            }
            heading = func_8005B36C(*(s16 *)(object + 2),
                *(s16 *)(object + 6), targetX, *(s16 *)(other + 6));
            dx = *(s16 *)(object + 2) - targetX;
            dz = *(s16 *)(object + 6) - *(s16 *)(other + 6);
            /* These square/sum operations retain their low 32 bits. */
            distance = func_800B1128((u32)dx * (u32)dx + (u32)dz * (u32)dz);
            scale = (u8)func_8002EB3C(distance, 0x3000);
            zoom = func_8002F6C8(distance);
            func_8002F0FC(heading, scale, targetX, *(s16 *)(other + 6), (s16)zoom);
            {
                u8 *current = *(u8 **)(scratch + 0x2F4);
                *(u16 *)(current + 0x3CC) -= 2;
            }
            *(u16 *)(scratch + 0x2B8) = *(u16 *)(scratch + 0xFE);
            *(u16 *)(scratch + 0x2BA) = *(u16 *)(scratch + 0x100);
            func_8004B0F0(object, heading, scale, zoom);
            /* The helper can change the pointed record; reload the word. */
            (*(u8 **)(scratch + 0x2F4))[0x3B2] = 8;
            *(u32 *)(scratch + 0x2B0) = 1;
            func_800512B8(other, 1);
            other[0x396] = 11;
            other[0x397] = 0;
            *(u16 *)(other + 0x3CA) = 0;
            *(s16 *)(scratch + 0x31C) = -40;
            scratch[0x2FC] = 0;
            func_80067860(object[0x399], *(s16 *)(object + 2),
                *(s16 *)(object + 6), heading, 12, distance * distance);
            for (i = 0; i < 2; i++) {
                u8 id = (scratch + object[0x399] * 2 + i)[0x322];
                if (id != 255) {
                    u8 *selected = pool + (u8)(id % 24) * 1000;
                    if (selected[0x38D] != object[0x38D] &&
                        selected[0x38D] != other[0x38D] &&
                        !func_80052D90(selected)) {
                        selected[0x396] = 27;
                        selected[0x397] = 64;
                    }
                }
            }
            break;
        case 42:
            object[0x396] = 0x82;
            object[0x397] = 0;
            break;
        }
        break;
    }
    object[0x3AA] = func_8005B7CC(object[0x3AB], object[0x3AA], 8);
    speed = (D_800CA674[object[0x390]] * 8) / 3;
    *(s32 *)(object + 0x3A0) = speed;
    func_8005B864(object, speed);
    *(s32 *)(object + 0x3A0) = 0;
    func_800954E8(object);
}
