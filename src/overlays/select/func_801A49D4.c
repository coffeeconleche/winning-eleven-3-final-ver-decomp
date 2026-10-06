#include "common.h"

extern u8 D_800FF748[];
extern u8 D_80108668;

/* Large-displacement access view, not a complete original record layout. */
typedef struct {
    u8 unknown[0x8F24];
    u8 status;
} StatusView;

static __inline__ u8 statusAt(u8 *base, u32 index) {
    u32 offset = index * 36;
    return ((StatusView *)((u32)base + offset))->status;
}

#define SELECTOR(base, index) \
    (*(u8 *)((u32)(base) + (u32)(index) + 0xAB80))

/* Return the first unused low-six-bit index in either status class. */
u8 func_801A49D4(u8 kind) {
    /* Removing this measured reservation changes only the two frame words.
     * Its original purpose is unknown; there are no artificial stack accesses. */
    u8 frameReserve[16];
    s32 count40 = 0;
    s32 count0 = 0;
    u8 *base = D_800FF748;
    s32 i;

    for (i = 0; i < D_80108668; i++) {
        s32 status = statusAt(base, SELECTOR(base, i)) & 0xC0;
        if (status == 0) {
            count0++;
        } else if (status == 64) {
            count40++;
        }
    }

    switch (kind) {
    case 0:
    default:
        if (count0 >= base[0x8F21]) {
            goto class40;
        }
        break;
    case 64:
        if (count40 < base[0x8F20] - base[0x8F21]) {
            goto class40;
        }
        break;
    }

    for (i = 0; i < base[0x8F21]; i++) {
        s32 missing = 1;
        s32 j;
        for (j = 0; j < base[0x8F20]; j++) {
            u32 status = statusAt(base, SELECTOR(base, j));
            if ((status & 0xC0) == 0 && (status & 63) == i) {
                missing = 0;
                break;
            }
        }
        if (missing) {
            break;
        }
    }
    return i;

class40:
    {
        s32 total = base[0x8F20];
        s32 firstRead = base[0x8F21];
        s32 first;
        i = 0;
        if (total - firstRead > 0) {
            u32 mapOffset = 0xAB80;
            u32 statusClass = 64;
            first = firstRead;
            do {
                s32 missing = 1;
                s32 j = 0;
                if (total) {
                    s32 bound = base[0x8F20];
                    do {
                        u32 status = statusAt(base,
                            *(u8 *)((u32)base + (u32)j + mapOffset));
                        if ((status & 0xC0) == statusClass &&
                            (status & 63) == i) {
                            missing = 0;
                            break;
                        }
                    } while (++j < bound);
                }
                if (missing) {
                    break;
                }
                total = base[0x8F20];
                i++;
            } while (i < total - first);
        }
        return i | 64;
    }
}
