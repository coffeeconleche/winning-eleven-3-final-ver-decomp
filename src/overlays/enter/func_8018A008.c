#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8001E6B8(s32), func_800AD678(void), func_8005C7A0(s32);
extern void func_8005BA30(void *, u32, u32);
extern void func_8001D14C(u32, u32, u32, u32, s32, u32, u32, u32, u32, u32);

/* Record fields, selector meanings and helper names remain unidentified. */
void func_8018A008(void)
{
    u8 *scratch;
    u8 *base;
    u8 *record;
    s32 i;
    /* Independent populated-record cursor; retain its original saved register. */
    register s32 position __asm__("$17");
    u8 *fields;
    u32 byteOffset = 1006;

    scratch = (u8 *)0x1F800000;
    base = D_800FF748;
    record = base + 1000;
    i = 0;
    position = 0;
    do {
        /* The real field offset becomes a walking cursor through strength reduction. */
        fields = base + byteOffset;
        if (i == 11)
            position = 11;
        if (record[0] != 0) {
            u8 *selector = scratch + i / 11;
            switch (selector[0x2DD]) {
            case 0:
            case 40:
            case 41:
            case 42:
                if (func_8001E6B8(2) == 0)
                    func_8005BA30(record, 53, 0);
                else
                    func_8005BA30(record, 79, 0);
                fields[0x3A6] = func_800AD678() % 2;
                break;
            case 27:
            case 28:
            case 29:
                func_8005BA30(record, 80, 0);
                fields[0x3A6] = 0;
                break;
            case 35: {
                s32 quotient = i / 11;
                s32 rowOffset = quotient * 11;
                u8 *row = (u8 *)(rowOffset * 2 + (u32)base);
                u8 kind;
                row += 0x8E9C;
                kind = row[i - rowOffset];
                if (kind == 2 || kind == 9) {
                    func_8005BA30(record, 80, 0);
                    fields[0x3A6] = 0;
                } else {
                    if (func_8001E6B8(2) == 0)
                        func_8005BA30(record, 53, 0);
                    else
                        func_8005BA30(record, 79, 0);
                    fields[0x3A6] = func_800AD678() % 2;
                }
                break;
            }
            default:
                switch (func_8001E6B8(3)) {
                case 0:
                    func_8005BA30(record, 79, 0);
                    fields[0x3A6] = func_800AD678() % 2;
                    break;
                case 1:
                    func_8005BA30(record, 80, 0);
                    fields[0x3A6] = 0;
                    break;
                case 2:
                    func_8005BA30(record, 53, 0);
                    fields[0x3A6] = func_800AD678() % 2;
                    break;
                default:
                    fields[0x396] = 1;
                    goto initialized;
                }
            }
            fields[0x396] = 1;

initialized:
            if (scratch[0x29A] == 10) {
                fields[0x39F] = 12;
                fields[0x3A0] = 24;
                fields[0x3CD] = 1;
            } else {
                fields[0x39F] = 0;
                fields[0x3A0] = 12;
                fields[0x3CD] = 0;
            }
            fields[0x3A4] = 192;
            fields[0x39E] = fields[0x3A4];
            fields[0x390] = 0;
            fields[0x3AA] = 0;
            *(u16 *)(fields + 0x20) = ((448 - fields[0x3A4]) % 256) << 4;

            if ((base[0x8F15] == 0 && position >= 11) ||
                (base[0x8F15] != 0 && position < 11)) {
                s32 random = func_8005C7A0(2);
                /* Scoped actual-value bindings retain the coordinate temporaries. */
                register s32 coordinate __asm__("$4");
                random += 256;
                coordinate = (position % 11) * 192;
                coordinate += random;
                *(u16 *)(fields - 4) = coordinate;
            } else {
                register s32 coordinate __asm__("$2") = func_8005C7A0(2);
                register s32 remainder __asm__("$3") = position % 11;
                /* Keep the signed remainder materialized before coordinate adjustments. */
                __asm__("" : : "r"(remainder));
                coordinate -= 256;
                coordinate -= remainder * 192;
                *(u16 *)(fields - 4) = coordinate;
            }
            position++;
            *(s16 *)fields = -0x1080;
        }
        i++;
        byteOffset += 1000;
        record += 1000;
    } while (i < 22);

    func_8001D14C(23, 65, 53, 0, -0x1080, 192, 0xE0C, 4096, 0xE0C, 1);
    record[0x39C] = 1;
}
