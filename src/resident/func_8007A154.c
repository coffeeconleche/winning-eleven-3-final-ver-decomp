#include "common.h"

/* Existing scalar access views, not definitions or a volatility claim. */
extern u8 scratch2AD __asm__("0x1F8002AD");
extern u8 scratch2AE __asm__("0x1F8002AE");
extern u16 scratch294 __asm__("0x1F800294");
extern u16 scratch296 __asm__("0x1F800296");
extern u8 scratch309 __asm__("0x1F800309");
extern s32 D_800E7658;
extern u16 D_800E6B86;
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);

/* Partial record views preserve captured bytes and the separate signed
 * eligibility / unsigned counter reads. Helper APIs, full layout, native
 * alignment/alias contracts and the historical return declaration remain
 * provisional. The identified caller ignores the path-dependent V0 residue;
 * in particular, case 7 leaves the helper's actual word, not a Boolean. */
void func_8007A154(u8 *record)
{
    u8 state = record[0x397];
    u32 id;
    u32 count;

    switch (state) {
    case 0:
        id = record[0x38D];
        if (id == scratch2AD) {
            record[0x397] = state + 1;
        } else if (id == scratch2AE) {
            func_8005BA30(record, 90, 0);
            record[0x397] = 7;
        } else {
            record[0x396] = 1;
            record[0x397] = 0;
        }
        break;
    case 1:
        if (D_800E7658 < 16 ||
            (D_800E6B86 != 0 && (s16)scratch296 < 60)) {
            count = scratch296;
            scratch294 = 0;
            scratch296 = count + 1;
        } else {
            record[0x396] = 54;
            record[0x397] = 2;
            record[0x3D1] = 0;
            scratch309 = 255;
        }
        break;
    case 7:
        func_8005BD1C(record);
        break;
    }
}
