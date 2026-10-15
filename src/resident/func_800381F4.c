#include "common.h"

/* Same partial access type as the existing 800533F4 declaration. */
typedef struct {
    u8 unknown[2];
    s16 half2;
    u8 unknown4[2];
    s16 half6;
    u8 unknown8[0x391];
    u8 byte399;
} Resident533F4View;

extern u8 D_800FFB30[];
extern s32 func_8005CE14(u32);
extern s32 func_80052C6C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_800533F4(Resident533F4View *, u32, u32, u32);
extern u32 func_800495B8(u8 *);

/* Partial aligned record/bank views. Distances intentionally use low-word
 * unsigned arithmetic; the chosen pointer is consumed only after selection. */
u32 func_800381F4(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *candidate;
    u8 *view;
    u8 *chosen;
    u32 best = (u32)-1;
    s32 count = 0;
    s32 position;
    s32 check;
    u32 angle;
    u32 delta;
    u32 forward;
    u32 dx, dz;
    u32 distance;

    candidate = D_800FFB30 + (u8)func_8005CE14(record[0x38D]) * 1000;
    view = candidate;
    do {
        if (record != candidate && (u8)func_80052C6C(candidate) == 0) {
            position = *(s16 *)(view + 2);
            if (view[0x399] != 0) {
                check = -position < -0x21E2;
            } else {
                check = position < -0x21E2;
            }
            if (!check) {
                angle = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                     *(s16 *)(view + 2), *(s16 *)(view + 6));
                delta = angle - (*(u8 **)(scratch + 0x2F4))[0x3A4] - 128;
                forward = delta & 255;
                if (forward >= 129) {
                    check = (s32)((0U - delta) & 255) < 64;
                } else {
                    check = (s32)forward < 64;
                }
                if (check) {
                    dx = (u32)*(s16 *)(record + 2) - (u32)*(s16 *)(view + 2);
                    dz = (u32)*(s16 *)(record + 6) - (u32)*(s16 *)(view + 6);
                    distance = dx * dx + dz * dz;
                    if (distance <= 0x1000000) {
                        if (distance <= 0x23FFFF) {
                            view[0x396] = 27;
                            view[0x397] = 64;
                        } else if ((u8)func_800533F4((Resident533F4View *)record,
                                                  (u8)angle, 24, distance) == 0 &&
                                   func_800495B8(candidate) > 0xFFFFF && best >= distance) {
                            chosen = view;
                            best = distance;
                        }
                    }
                }
            }
        }
        count++;
        view += 1000;
        candidate += 1000;
    } while (count < 10);
    if (best == (u32)-1) {
        return 0;
    }
    return chosen[0x38D];
}
