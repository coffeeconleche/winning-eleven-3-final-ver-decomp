#include "common.h"

typedef struct {
    /* Accessed prefix only; the complete record layout is unknown. */
    u8 unknown[0x8F24];
    u8 status, value;
} RowView;
typedef struct { u8 unknown[0xAB80]; u8 mapped; } MappingView;
extern u8 D_800FF748[], D_801D8A70;
extern u8 D_80108667;
extern s32 func_801A2474(u8);
extern u8 func_801A24AC(u8);

void func_801A2198(s32 argument) {
    u32 mode = D_80108667;
    s32 selector;
    u8 *base;
    u32 mapped;
    selector = argument;
    base = D_800FF748;
    if ((mode & 15) == 0) {
        s32 result;
        /* Keep the distinct status-mask register used after the helper call. */
        register s32 mask __asm__("$19");
        /* Empty identity retains the measured base-relative access form. */
        __asm__("" : "=r"(base) : "0"(base));
        result = func_801A2474((u8)selector);
        mask = 0xC0;
        if (result == 1) {
            mapped = ((MappingView *)base)->mapped;
            D_801D8A70 = 0;
            if ((((RowView *)((u32)(mapped * 36)+(u32)base))->status & 0xC0) == 0xC0)
                return;
            for (;;) {
                u32 scaled;
                mapped = ((u8 *)((u32)base+(u32)(u8)++D_801D8A70))[0xAB80];
                scaled = mapped * 36;
                if ((((RowView *)((u32)base+scaled))->status & 0xC0) == 0xC0)
                    return;
            }
        } else {
            s32 found;
            u32 offset = 0xAB80;
            u8 *prefix = base+offset;
            do {
                u8 *row;
                D_801D8A70 = func_801A24AC((u8)selector);
                mapped = ((u8 *)((u32)base+(u32)D_801D8A70))[offset];
                row = (u8 *)((u32)base+(u32)(mapped * 36));
                found = 0;
                if ((((RowView *)row)->status & 0xC0) == mask)
                    found = 1;
                else {
                    selector = ((RowView *)row)->value;
                    if (func_801A2474((u8)selector) == 1) {
                        u32 first = prefix[0];
                        u32 scaled;
                        D_801D8A70 = 0;
                        scaled = first * 36;
                        if ((((RowView *)((u32)base+scaled))->status & 0xC0) != mask) {
                            u32 loopOffset = 0xAB80;
                            s32 loopMask = 0xC0;
                            do {
                                u32 scaled;
                                mapped = ((u8 *)((u32)base+(u32)(u8)++D_801D8A70))[loopOffset];
                                scaled = mapped * 36;
                                if ((((RowView *)((u32)base+scaled))->status & 0xC0) == loopMask)
                                    break;
                            } while (1);
                        }
                        found = 1;
                    }
                }
            } while (found == 0);
        }
    } else {
        /* Empty identity retains the measured base-relative access form. */
        __asm__("" : "=r"(base) : "0"(base));
        mapped = ((MappingView *)base)->mapped;
        D_801D8A70 = 0;
        if ((((RowView *)((u32)(mapped * 36)+(u32)base))->status & 0xC0) != 0xC0) {
            do {
                u32 scaled;
                mapped = ((u8 *)((u32)base+(u32)(u8)++D_801D8A70))[0xAB80];
                scaled = mapped * 36;
                if ((((RowView *)((u32)base+scaled))->status & 0xC0) == 0xC0)
                    break;
            } while (1);
        }
    }
}
