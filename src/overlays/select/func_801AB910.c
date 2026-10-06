#include "common.h"

extern u8 D_800FF748[];
extern u8 scratchE1 __asm__("0x1F8002E1");
extern u8 D_80108667, D_801D26BF, D_801D8FA0[];
extern u8 D_801D92DB, D_801D92A3, D_801D92BF;
extern u8 *D_801D26A0, *D_801D26A4, *D_801D1E78[];
extern s16 D_801D8D78, D_801D8D7A, D_801D8D7C, D_801D8D7E;
extern u8 D_801D8D80, D_801D8D81, D_801D8D82;
extern u8 D_801D8D83, D_801D8D84, D_801D8D85;
extern u8 D_801D26CC[], D_801D868C[], D_801D8660[], D_801D9030;
extern u8 D_801D26A8[], D_801D26C4[], D_801D26C8[];
extern u8 D_801D8FE5, D_801D8FE6, D_801D8FE7;
extern u8 D_801D8FFD, D_801D8FFE, D_801D8FFF;
/* Same-address array view for the later call; its extent is unknown. Keep the
 * original address setup separate from the preceding numeric append calls. */
extern u8 finalNumberText[] __asm__("D_801D26A8");

extern void func_800AB620(s32);
/* Observed full-word call-site views, not complete original APIs. */
extern void func_801940EC(u32, u32, void *, u32, u32, u32);
extern void func_801942E0(u32, u8 *, s32, s32, s32, u32,
                         u32, s32, u32, u32, u32, u32);
extern u8 *func_801A9168(u8 *, u8, u8, s32);
extern u8 *func_801A92A4(u8 *, s32);

/* Displacement-only access views, never local allocations. Complete original
 * records, bounds and field meanings remain unknown. */
typedef struct {
    u8 unknown0[0x8F24];
    u8 flags, name, byte26, byte27, byte28, byte29, byte2A, byte2B;
    u16 half2C, half2E;
    u8 unknown30[3], byte33, byte34;
} RowView;
typedef struct {
    u8 unknown0[0xAB80];
    u8 mapped;
} MapView;

static __inline__ RowView *rowView(u8 *base, u32 value) {
    return (RowView *)((u32)base + value * 36);
}

void func_801AB910(s32 request, u32 selectionWord) {
    u32 selection = selectionWord;
    u8 *base = D_800FF748;
    u8 *text;
    u8 *out, *name, *mapped;
    u8 *row;
    s32 clear;
    u8 byte;
    s16 *descriptor;

    if (scratchE1 == 2 && (D_80108667 & 0x40)) {
        text = D_801D26A4;
        D_801D26BF = 0;
    } else {
        text = D_801D26A0;
        D_801D26BF = 10;
    }
    if (request < 0) {
        for (clear = 144; clear >= 0; clear -= 24)
            D_801D8FA0[clear] = 0;
        D_801D92DB = 0;
        D_801D92A3 = 0;
        D_801D92BF = 0;
        func_800AB620(0x529);
        return;
    }
    D_801D8D78 = -100;
    D_801D8D7A = -64;
    D_801D8D7C = 200;
    D_801D8D7E = 160;
    D_801D8D80 = 192;
    D_801D8D81 = 192;
    D_801D8D82 = 192;
    if ((rowView(base, ((MapView *)(base + (u8)selection))->mapped)->flags
         & 0xC0) == 0x40) {
        D_801D8D83 = 160;
        D_801D8D84 = 160;
        D_801D8D85 = 0;
    } else {
        D_801D8D84 = 128;
        D_801D8D83 = 0;
        D_801D8D85 = 255;
    }
    func_801940EC(2, 0x60000000, &D_801D8D78, 1, 2, 1);
    D_801D8D7E = 29;
    if ((rowView(base, ((MapView *)(base + (u8)selection))->mapped)->flags
         & 0xC0) == 0x40) {
        D_801D8D80 = 128;
        D_801D8D81 = 128;
        D_801D8D82 = 0;
    } else {
        D_801D8D81 = 96;
        D_801D8D80 = 0;
        D_801D8D82 = 160;
    }
    descriptor = &D_801D8D78;
    func_801940EC(0, 0x70000000, descriptor, 1, 2, 1);
    *descriptor = -100;
    D_801D8D7A = 77;
    D_801D8D7C = 200;
    D_801D8D7E = 19;
    func_801940EC(1, 0x70000000, descriptor, 1, 2, 1);
    func_801942E0(5, D_801D26CC, -70, 79, 140, 3, 0, 0, 0, 1, 1, 1);
    D_801D9030 = 0;
    {
        s32 i = 44;
        u8 *cursor = D_801D868C;
        for (; i >= 0; i--)
            *cursor-- = 0;
    }
    out = D_801D8660;
    {
        /* Scoped bindings retain the actual marker and map-address lifetimes
         * around the intervening byte store, without extra accesses/clobbers. */
        register u32 marker __asm__("$2") = 31;
        register u32 slot __asm__("$16") = (u8)selection;
        slot = (u32)base + slot;
        *out = marker;
        slot += 0xAB80;
        mapped = (u8 *)slot;
    }
    *++out = rowView(base, *mapped)->name;
    *++out = 32;
    byte = rowView(base, *mapped)->flags;
    out = func_801A9168(out + 1, 4, byte & 0xC0, (byte & 0x3F) + 1);
    *out++ = 9;
    *out++ = 60;
    *out = 28;
    *++out = rowView(base, *mapped)->name;
    *++out = 11;
    *++out = 14;
    *++out = 9;
    *++out = 60;
    name = D_801D1E78[rowView(base, *mapped)->name];
    {
        u8 copied;
        /* Consume the actual loaded pointer before moving the output cursor.
         * This measured empty input emits no instructions or memory clobber. */
        __asm__ volatile("" : : "r"(name));
        out++;
        do {
            copied = *name++;
            *out++ = copied;
        } while (copied);
    }
    /* The original copy includes the zero byte; do not invent a new terminator. */
    out--;
    if (!(*(u32 *)(base + 0x8F1C) & 0x4F000000)) {
        *out++ = 32;
        *out++ = 32;
        *out = 32;
        *++out = rowView(base,
                        ((MapView *)(base + (u8)selection))->mapped)->byte27 + 65;
        *++out = 32;
        *++out = 'G';
        *++out = 'R';
        *++out = 'O';
        *++out = 'U';
        out[1] = 'P';
    }
    func_801942E0(0, D_801D8660, -92, -60, 184, 1, 0, 0, 0, 4, 1, 1);
    func_801942E0(1, text, -84, -31, 168, 1, 0, -1, 0, 4, 1, 1);
    {
        u32 slot = (u8)selection;
        row = base + slot * 36;
    }
    /* Numeric fields use the direct selected row, not the earlier mapped row.
     * Keep every field reload after its preceding append callback. */
    out = func_801A92A4(D_801D26A8, ((RowView *)row)->byte26);
    out = func_801A92A4(out + 1, ((RowView *)row)->byte29);
    out = func_801A92A4(out + 1, ((RowView *)row)->byte2B);
    out = func_801A92A4(out + 1, ((RowView *)row)->byte2A);
    out = func_801A92A4(out + 1, ((RowView *)row)->half2C);
    out = func_801A92A4(out + 1, ((RowView *)row)->half2E);
    out = func_801A92A4(out + 1, ((RowView *)row)->byte28);
    func_801942E0(2, finalNumberText, -84, -34, 168, 2, 0, -1, 0, 6, 1, 1);
    func_801A92A4(D_801D26C4, ((RowView *)row)->byte33);
    func_801942E0(3, D_801D26C4, -40, 57, 64, 2, 0, -1, 0, 6, 1, 1);
    D_801D8FE5 = 128;
    D_801D8FE6 = 128;
    D_801D8FE7 = 0;
    func_801A92A4(D_801D26C8, ((RowView *)row)->byte34);
    func_801942E0(4, D_801D26C8, 20, 57, 64, 2, 0, -1, 0, 6, 1, 1);
    D_801D8FFD = 128;
    D_801D8FFE = 48;
    D_801D8FFF = 0;
}
