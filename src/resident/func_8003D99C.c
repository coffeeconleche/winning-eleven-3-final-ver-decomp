#include "common.h"

/* Pointer-only offset view, not a recovered complete historical object.
 * No object is allocated; guest/native pointer and layout contracts are unknown. */
typedef struct {
    u8 unknown0[0x392];
    u8 byte392;
    u8 unknown393[5];
    u8 byte398;
    u8 unknown399[2];
    u8 byte39B;
    u8 unknown39C[8];
    u8 byte3A4;
    u8 unknown3A5[7];
    u8 byte3AC;
} Resident3D99CView;

extern u8 D_8010C32C[], D_8010C330[];
extern s32 func_8005C7A0(u32);

/* Table extents, native guest-pointer/alias/alignment and historical APIs
 * remain provisional. Preserve the full incoming word until the final wrap. */
u32 func_8003D99C(Resident3D99CView *record, u32 direction, u32 flag)
{
    s32 amplitude;
    Resident3D99CView *reference;
    u32 otherByte;
    s32 forward;

    if (record->byte39B != 0) {
        u32 index = record->byte392;
        u32 selector = record->byte398;
        u32 word = *(u32 *)(D_8010C32C + index * 12 + selector * 264);
        amplitude = 27 - ((word >> 20) & 15);
    } else {
        u32 index = record->byte392;
        u32 selector = record->byte398;
        u32 word = *(u32 *)(D_8010C32C + index * 12 + selector * 264);
        amplitude = (~(word >> 20)) & 15;
    }

    if ((u8)flag != 0) {
        u32 index = record->byte392;
        u32 selector = record->byte398;
        u32 word = *(u32 *)(D_8010C330 + index * 12 + selector * 264);
        u32 current = record->byte3AC;
        if (current != ((word >> 4) & 1)) {
            amplitude += 4;
        }
    }

    reference = *(Resident3D99CView **)0x1F8002F4;
    otherByte = reference->byte3A4;
    forward = (u8)(direction - otherByte);
    if ((u32)forward > 128) {
        s32 reverse = (u8)(otherByte - direction);
        if (reverse < 33) {
            /* Keep this real amplitude at the reverse-path adjustment boundary;
             * without the identity, GCC merges the two adjustment paths. */
            __asm__("" : "=r"(amplitude) : "0"(amplitude));
            amplitude += 6;
        }
    } else if (forward < 33) {
        amplitude += 6;
    }

    direction += (u32)func_8005C7A0((u8)amplitude);
    return (u8)direction;
}
