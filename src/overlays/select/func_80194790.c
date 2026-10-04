#include "common.h"

extern u16 D_801D7DA8, D_801D7DAA, D_801D7DAC, D_801D7DAE;
extern s32 func_800AE6B8(void *, u32, u32, u32);
extern s32 func_800AE534(s32);
extern s32 func_800AE7E0(void *, void *);
/* The local entry is a B0/51 thunk. Only this caller's word argument and
 * pointer-or-minus-one result use are asserted, not an SDK API prototype. */
extern u16 *func_800ACEF8(u32);

void func_80194790(u8 *data) {
    /* Measured 128-byte word buffer and 96-byte three-halfword rows;
     * these real locals produce the original 264-byte frame without padding. */
    u32 expanded[16][2];
    u16 packed[16][3];
    u16 *rectangle = &D_801D7DA8;
    s32 index;
    *rectangle = 0x1C0;
    D_801D7DAA = 0x180;
    D_801D7DAC = 0x40;
    D_801D7DAE = 0x20;
    func_800AE6B8(rectangle, 0, 0, 0);
    func_800AE534(0);
    *rectangle = 0x1C0;
    D_801D7DAA = 0x1A0;
    D_801D7DAC = 0x30;
    D_801D7DAE = 0x10;
    func_800AE6B8(rectangle, 0, 0, 0);
    func_800AE534(0);
    D_801D7DAC = 3;
    D_801D7DAE = 0x10;
    index = 0;
    if (*data) {
        u16 *active = rectangle;
        u16 (*packedBase)[3] = packed;
        u32 (*expandedBase)[2] = expanded;
        do {
            u32 character;
            /* Keep the callback result and strided input in their distinct retail
             * temporaries; source is redefined before every post-callback use. */
            register u16 *source __asm__("$10");
            register u16 *rawSource __asm__("$3");
            s32 row, half, bit;
            if (index >= 58) { break; }
            active[0] = 0x1C0 + (index % 21) * 3;
            active[1] = 0x180 + (index / 21) * 16;
            character = *data;
            if (character == 10 || character == 11 || (u8)character == 32 || (u8)character == 92) {
                data++;
                continue;
            }
            rawSource = func_800ACEF8((u8)character << 8 | data[1]);
            source = rawSource;
            if (rawSource != (u16 *)-1) {
                u16 *destination;
                row = 0;
                destination = (u16 *)packedBase;
                for (; row < 15; row++) {
                    *destination = *source++;
                    destination += 3;
                }
                /* Only the first halfword in each row is initialized here. */
                packed[15][0] = 0;
            } else {
                u16 *destination;
                row = 15;
                destination = &packedBase[15][0];
                for (; row >= 0; row--) {
                    *destination = 0;
                    destination -= 3;
                }
            }
            {
                u32 *rowOutput;
                u32 rowOffset;
                row = 0;
                rowOutput = (u32 *)expandedBase;
                rowOffset = 0;
                for (; row < 16; row++) {
                    u32 *cellOutput;
                    source = (u16 *)((u32)packedBase + rowOffset);
                    half = 0;
                    cellOutput = rowOutput;
                    for (; half < 2; half++) {
                        s32 value = 0;
                        s32 bits;
                        bit = 0;
                        bits = *source;
                        for (; bit < 8; bit++) {
                            if ((bits >> (half * 8 + bit)) & 1) {
                                value |= 7;
                            }
                            value <<= 3;
                        }
                        *cellOutput++ = value;
                    }
                    rowOutput += 2;
                    rowOffset += 6;
                }
            }
            {
                /* These scoped bindings retain the mixed-width load/store cursor
                 * positions instead of advancing them into negative field offsets. */
                register u8 *input __asm__("$4");
                register u16 *output __asm__("$5");
                row = 0;
                input = (u8 *)expandedBase;
                output = (u16 *)packedBase;
                for (; row < 16; row++) {
                    output[0] = *(u32 *)input;
                    output[1] = *(u16 *)(input + 2) | input[4] << 8;
                    output[2] = *(u32 *)(input + 4) >> 8;
                    input += 8;
                    output += 3;
                }
            }
            func_800AE7E0(&D_801D7DA8, packed);
            func_800AE534(0);
            data += 2;
            index++;
        } while (*data);
    }
}
