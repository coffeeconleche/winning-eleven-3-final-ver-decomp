#include "common.h"

/* Local access view of the 20-entry, 28-byte descriptor table; the complete
 * original record type and field meanings are unknown. */
typedef struct {
    u16 half0;
    u8 byte2, byte3;
    u32 word4;
    u16 halves[4];
    u8 bytes[12];
} Descriptor28;

extern Descriptor28 D_801D92A0[];
extern void func_8019645C(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_8019659C(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_80196A60(s32, u16 *, u32);

void func_80195944(void) {
    /* Declaration order fixes the measured cursor/counter spill slots. */
    Descriptor28 *entry;
    s32 i;

    entry = D_801D92A0;
    for (i = 0; i < 20; i++, entry++) {
        s16 x, y;
        u16 width, height, selector;

        if (entry->byte3 == 0) {
            continue;
        }
        x = entry->halves[0];
        y = entry->halves[1];
        width = entry->halves[2];
        height = entry->halves[3];
        selector = entry->half0;
        /* Both flags are computed and combined before the single branch. */
        if ((width == 0) | (height == 0)) {
            continue;
        }
        switch (entry->byte2) {
        case 0:
            func_8019645C(0, x, y - 2, x + width - 1, y - 2,
                          0xE0, 0xE0, 0xE0, selector);
            func_8019645C(0, x, y - 1, x + width - 1, y - 1,
                          0x60, 0x60, 0x60, selector);
            func_8019645C(0, x - 1, y + height, x + width, y + height,
                          0xE0, 0xE0, 0xE0, selector);
            func_8019645C(0, x, y + height + 1, x + width - 1,
                          y + height + 1, 0x60, 0x60, 0x60, selector);
            func_8019645C(0, x - 2, y, x - 2, y + height - 1,
                          0xE0, 0xE0, 0xE0, selector);
            func_8019645C(0, x - 1, y, x - 1, y + height - 1,
                          0x60, 0x60, 0x60, selector);
            func_8019645C(0, x + width, y - 1, x + width, y + height,
                          0xE0, 0xE0, 0xE0, selector);
            func_8019645C(0, x + width + 1, y, x + width + 1,
                          y + height - 1, 0x60, 0x60, 0x60, selector);
            func_8019645C(0, x - 1, y - 1, x - 1, y - 1,
                          0xE0, 0xE0, 0xE0, selector);
            func_8019645C(0, x + width, y + height, x + width,
                          y + height, 0x60, 0x60, 0x60, selector);
            func_80196800(entry->word4, x, y, width, height,
                          entry->bytes[0], entry->bytes[1], entry->bytes[2], selector);
            break;
        case 1:
            func_8019659C(0, x, y, width, height,
                          entry->bytes[3], entry->bytes[4], entry->bytes[5], selector);
            func_80196800(entry->word4, x, y, width, height,
                          entry->bytes[0], entry->bytes[1], entry->bytes[2], selector);
            break;
        case 2:
            func_80196A60(entry->word4, entry->halves, selector);
            break;
        case 3:
            func_8019659C(0, x, y, width, height,
                          entry->bytes[3], entry->bytes[4], entry->bytes[5], selector);
            func_80196A60(entry->word4, entry->halves, selector);
            break;
        case 4:
            func_8019659C(0, x, y, width, height,
                          entry->bytes[3], entry->bytes[4], entry->bytes[5], selector);
            break;
        }
    }
}
