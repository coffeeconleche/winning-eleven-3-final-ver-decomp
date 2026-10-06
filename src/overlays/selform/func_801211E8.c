#include "common.h"

extern u8 D_800FF748[];
extern u16 D_80121FA4[], D_80121FA6[], D_80121C84[], D_80121C86[];
extern u16 D_801222C4[], D_801222C6[];
extern s32 D_801222F0[];
extern u8 *func_8001D004(u32);

/* Update 22 observed 12-byte records. Full layouts, table meanings and the
 * lookup helper's complete API remain unknown; selector lookups are unchecked.
 * Twelve scoped bindings and six empty sites preserve measured allocation and
 * capture/load order without instructions, extra accesses or clobbers. */
void func_801211E8(u8 side, u32 selectorArg) {
    register u32 selector __asm__("$17") = selectorArg;
    u32 sideView = side;
    /* Eight bytes retain the measured 40-byte frame. Removal changes only
     * ten frame words; the original purpose of this reservation is unknown. */
    u32 unusedFrame[2];
    u8 *packet = func_8001D004(sideView | 0x1000);
    u32 i;
    register u8 *base __asm__("$18");
    __asm__ volatile("" : "=r"(packet) : "0"(packet));
    i = 0;

    base = D_800FF748;
    __asm__ volatile("" : "=r"(base) : "0"(base));
    selector = (u8)selector;

    {
        register u32 enablePrefix __asm__("$3");
        u8 *enable;
        u8 *scratch;
        s32 *classification;
        register u32 mapStart __asm__("$14");
        u32 mapOrder;
        enablePrefix = selector + (u32)base;

        {
            u32 offset = 0xABDC;
            enable = (u8 *)(enablePrefix + offset);
        }
        {
            u32 high = 0x1F800000;
            scratch = (u8 *)(selector + high);
            __asm__ volatile("" : : "r"(scratch), "r"(high));
        }
        classification = D_801222F0;
        __asm__ volatile("" : "=r"(classification) : "0"(classification));
        mapStart = 0x88A5;

        mapOrder = 0x8E9C;

        for (; (u8)i < 22; i++) {
            s32 dy = 0;
            s32 dx = 0;
            register u32 index __asm__("$5");
            if (*enable) {
                switch ((u8)i) {
                case 1:
                    dx = sideView ? 3 : -4;
                    {
                        register s32 four __asm__("$3") = 4;
                        if (((classification[scratch[0x2FD]] >> 12) & 15) == four)
                            dy = sideView ? -5 : 4;
                    }
                    break;
                case 2: {
                        register s32 four __asm__("$3") = 4;
                        if (((classification[scratch[0x2FD]] >> 12) & 15) == four) {
                            dx = sideView ? -3 : 4;
                            dy = sideView ? 4 : -5;
                        }
                        break;
                    }
                }
            }
            index = (u8)i;
            __asm__ volatile("" : "=r"(index) : "0"(index));
            if (index && index < 11) {
                if (sideView) {
                    register u32 packetOffset __asm__("$4") = index * 12;
                    u32 selected;
                    u8 *record;

                    index -= 1;
                    selected = scratch[0x2FD];
                    index *= 4;
                    record = (u8 *)(packetOffset + (u32)packet);
                    *(u16 *)(record + 6) = D_80121FA4[(index + selected * 40) >> 1] + dx;
                    /* Reload after the preceding potentially aliasing coordinate store. */
                    *(u16 *)(record + 8) = D_80121FA6[(index + scratch[0x2FD] * 40) >> 1] + dy;
                } else {
                    register u32 packetOffset __asm__("$4") = index * 12;
                    u32 selected;
                    u8 *record;

                    index -= 1;
                    selected = scratch[0x2FD];
                    index *= 4;
                    record = (u8 *)(packetOffset + (u32)packet);
                    *(u16 *)(record + 6) = D_80121C84[(index + selected * 40) >> 1] + dx;
                    *(u16 *)(record + 8) = D_80121C86[(index + scratch[0x2FD] * 40) >> 1] + dy;
                }
            } else {
                if (!index) {
                    u32 zeroIndex = (u8)i;
                    register u8 *record __asm__("$2") = (u8 *)(zeroIndex * 12 + (u32)packet);

                    {
                        s32 x = -54;

                        *(u16 *)(record + 6) = x;
                        {
                            s32 y = -75;

                            *(u16 *)(record + 8) = y;
                        }
                    }
                } else {
                    register u32 recordOffset __asm__("$3") = index * 12;
                    register u32 relative __asm__("$4");
                    u8 *record;

                    relative = (index - 11) * 4;
                    __asm__ volatile("" : : "r"(relative));
                    record = (u8 *)(recordOffset + (u32)packet);
                    *(u16 *)(record + 6) = D_801222C4[relative >> 1] + dx;
                    *(u16 *)(record + 8) = D_801222C6[relative >> 1] + dy;
                }
                if (sideView) {
                    u8 *record = (u8 *)((u8)i * 12 + (u32)packet);
                    s32 x = *(s16 *)(record + 6);
                    *(u16 *)(record + 6) = x + (0xFFFCU - x) * 2;
                }
            }
            {
                u32 row;
                u32 colorIndex;
                u32 orderPrefix;
                u32 selected;
                u32 value;

                row = selector * 22 + (u32)base;
                orderPrefix = row + mapOrder;

                colorIndex = i & 255;

                selected = *(u8 *)(orderPrefix + colorIndex);
                value = *(u8 *)(row + mapStart + selected);
                if (value >= 2) {
                    u8 *record = (u8 *)(colorIndex * 12 + (u32)packet);
                    record[3] = 80;
                    record[4] = 144;
                } else {
                    u8 *record = (u8 *)(colorIndex * 12 + (u32)packet);
                    record[3] = 168;
                    record[4] = 200;
                }
            }
        }
    }
}
