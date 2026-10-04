#include "common.h"
/* Measured byte-only view: 543 triplets, including the FF terminator.
 * The original aggregate type is unknown. Assignment preserves the complete
 * 0x65D-byte local copy and its compiler-generated alignment paths. */
typedef struct {
    u8 records[543][3];
} Triples1629;
extern Triples1629 D_80188F78;
extern u8 D_800FF748[], D_8010C1D8[];
extern s32 func_8001E6B8(s32);
/* The observed caller uses only the side effects; its original return type
 * is not established. No bound or remainder-range guard is added here. */
void func_80189720(void) {
    Triples1629 local;
    u8 choices[4];
    u8 *scratch = (u8 *)0x1F800000;
    u8 *base = D_800FF748;
    u8 *state = D_8010C1D8;
    u32 i, j, index;
    /* Selector bytes are reread after each callback, not captured before it. */
    local = D_80188F78;
    (base + base[0x8F15])[0x8F18] = func_8001E6B8(2);
    (base + (base[0x8F15] ^ 1))[0x8F18] = func_8001E6B8(2);
    for (i = 0; (u8)i < 2; i++) {
        for (j = 0; local.records[(u16)j][0] != 255; j++) {
            if ((scratch + (u8)i)[0x2DD] == local.records[(u16)j][0] &&
                (scratch + (u8)(i ^ 1))[0x2DD] == local.records[(u16)j][1]) {
                switch (local.records[(u16)j][2]) {
                case 4:
                    (base + (u8)i)[0x8F18] = 0;
                    break;
                case 3:
                    if ((base + (u8)(i ^ 1))[0x8F16] == 0)
                        (base + (u8)i)[0x8F18] = 0;
                    else
                        (base + (u8)i)[0x8F18] = 1;
                    break;
                case 2:
                    if ((base + (u8)(i ^ 1))[0x8F16] != 0)
                        (base + (u8)i)[0x8F18] = 0;
                    else
                        (base + (u8)i)[0x8F18] = 1;
                    break;
                case 1:
                    (base + (u8)i)[0x8F18] = 1;
                    break;
                }
            }
        }
    }
    for (j = 0; (u16)j < 2; j++) {
        switch ((scratch + (u16)j)[0x2DD]) {
        case 7: case 27: case 29:
            if ((base + (u16)j)[0x8F16] == 0) (base + (u16)j)[0x8F18] = 0;
            else (base + (u16)j)[0x8F18] = 1;
            break;
        }
    }
    if (scratch[0x2DD] == scratch[0x2DE]) {
        base[0x8F18] = 0;
        base[0x8F19] = 1;
    }
    for (j = 0; (u16)j < 4; j++)
        choices[(u16)j] = j;
    state[0x10] = func_8001E6B8(4);
    /* These sparse switches own the original 39- and 42-word tables.
     * Unlisted byte values leave the corresponding local entry unchanged. */
    for (j = 0; (u16)j < 2; j++) {
        switch ((scratch + (u16)j)[0x2DD]) {
        case 2: case 9: case 29: case 30: case 31: case 39: case 40:
            if ((base + (u16)j)[0x8F16] == 0) choices[1] = 255;
            break;
        case 15: case 25:
            if ((base + (u16)j)[0x8F16] == 3) choices[1] = 255;
            break;
        }
    }
    for (j = 0; (u16)j < 2; j++) {
        switch ((scratch + (u16)j)[0x2DD]) {
        case 1: case 5: case 8: case 14: case 17: case 21: case 23: case 32: case 36: case 42:
            if ((base + (u16)j)[0x8F16] == 0) choices[2] = 255;
            break;
        case 2: case 3: case 12: case 13: case 18: case 28: case 38: case 40:
            if ((base + (u16)j)[0x8F16] == 3) choices[2] = 255;
            break;
        }
    }
    index = func_8001E6B8(3);
    for (j = 0; (u16)j < 4; j++) {
        if (choices[(u16)index] != 255) break;
        if ((u16)index == 2) index = 0;
        else index++;
    }
    state[0x10] = (u16)index * 10 + (u32)state[0x10] % 10;
}
