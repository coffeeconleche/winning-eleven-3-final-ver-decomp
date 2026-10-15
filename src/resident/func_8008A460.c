#include "common.h"

/* Same partial scalar layout as the existing 5B864 definition; no storage.
 * Byte-pointer callers elsewhere have older private views. Native adaptation
 * must reconcile those declarations and preserve aligned writable PS1 layout. */
typedef struct {
    u8 before2[2];
    u16 half2;
    u8 between4[2];
    u16 half6;
    u32 word8;
    u8 betweenC[4];
    u32 word10;
    u8 between14[0x12];
    u16 half26;
    u8 between28[0x37C];
    u8 copied3A4;
    u8 between3A5[5];
    u8 phase3AA;
} RecordView;

extern void func_8005BA30(u8 *, u32, u32);
extern s32 func_8001E6B8(s32);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005B864(RecordView *, u16);
extern s32 func_8005C7A0(u32);
extern s32 func_8009462C(u8 *, s32, u32, s32, s32);
extern void func_800954E8(u8 *);
extern u32 func_8008ABA8(u8 *, s32);
extern u8 D_800C6BDC[];

/* Scratch contains original 32-bit pointers. Direction is captured AFTER
 * B864 but BEFORE C7A0, unlike adjacent state handlers. Preserve that order. */
void func_8008A460(u8 *object)
{
    u8 phase;
    u8 turn;
    u8 current;
    u8 *scratch;
    u8 *other;
    u32 heading;
    s32 direction;
    s32 random;
    s32 i;

    scratch = (u8 *)0x1F800000;
    switch (object[0x397]) {
    case 0:
        turn = object[0x3AC];
        current = object[0x3AA];
        if (turn != 0) {
            phase = current + 0x40;
        } else {
            phase = current - 0x40;
        }
        object[0x3AA] = phase;
        object[0x3AB] = phase;
        func_8005BA30(object, 0x21, 0);
        object[0x3AD] = 0;
        object[0x3D0] = func_8001E6B8(0x38) + 0x10;
        *(u32 *)(object + 0x3A0) = 0;
        object[0x397]++;
        break;
    case 1:
        if (object[0x390] != 0 || scratch[0x29A] != 7 || object[0x3D0] == 0) {
            func_8005BD1C(object);
            if (object[0x390] >= 6U && scratch[0x29A] == 1) {
                other = *(u8 **)(scratch + 0x2F4);
                heading = func_8005B36C(*(s16 *)(object + 2), *(s16 *)(object + 6),
                    *(s16 *)(other + 2), *(s16 *)(other + 6));
                object[0x3AA] = func_8005B7CC(heading & 0xFF, object[0x3AA], 4);
            }
            *(u32 *)(object + 0x3A0) = D_800C6BDC[object[0x390]];
            if (object[0x390] == 0x13) {
                object[0x396] = 0x82;
                object[0x397] = 0;
            }
        }
        break;
    }
    func_8005B864((RecordView *)object, *(u16 *)(object + 0x3A0));
    direction = (*(u8 **)(scratch + 0x2F4))[0x3A4] - 0x80;
    random = (s16)func_8005C7A0(3);
    func_8009462C(object, 0xC, direction & 0xFF, 0, random + 2);
    func_800954E8(object);
    if (object[0x390] >= 0xCU && *(s16 *)(object + 0x3BE) != 0) {
        i = 6;
        do {
            if (func_8008ABA8(object, i) & 0xFF) {
                break;
            }
            i--;
        } while (i >= 0);
    }
}
