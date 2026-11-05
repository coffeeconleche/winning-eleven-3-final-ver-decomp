#include "common.h"

extern void func_8006DD64(u8 *record);
extern void func_8006E5F0(u8 *record);
extern void func_8008A460(u8 *record);
extern void func_8008A65C(u8 *record);
extern void func_8008A740(u8 *record);
extern void func_8008A8A4(u8 *record);
extern void func_8008A9D4(u8 *record);
extern void func_8008B1F0(u8 *record);
extern void func_8008B700(u8 *record);
extern void func_8008B924(u8 *record);
extern void func_8008BF7C(u8 *record);
extern void func_8008C204(u8 *record);
extern void func_8008C348(u8 *record);
extern void func_8008CAB8(u8 *record);
extern void func_8008CDEC(u8 *record);
extern void func_8008D358(u8 *record);
extern void func_8008EAAC(u8 *record);
extern void func_8008ECC0(u8 *record);
extern void func_8008EFA4(u8 *record);
extern void func_8008F2DC(u8 *record);
extern void func_8008F734(u8 *record);
extern void func_8008FDB8(u8 *record);
extern void func_800917F0(u8 *record);
extern void func_80091EE4(u8 *record);
extern void func_80092578(u8 *record);
extern void func_80092C0C(u8 *record);
extern void func_800930E0(u8 *record);
extern void func_80093644(u8 *record);
extern void func_80093C68(u8 *record);
extern void func_80189894(u8 *record);

/* Replay-state dispatcher on the record phase byte at +0x396; empty cases
 * intentionally do nothing. */
void func_8008A240(u8 *record) {
    switch (record[0x396]) {
    case 0x81:
        func_8008BF7C(record);
        break;
    case 0x82:
        func_8006DD64(record);
        break;
    case 0x83:
        func_8008A460(record);
        break;
    case 0x84:
        func_8008A65C(record);
        break;
    case 0x85:
        func_8008A740(record);
        break;
    case 0x86:
        func_8008A8A4(record);
        break;
    case 0x87:
        func_8008EAAC(record);
        break;
    case 0x99:
        func_8008ECC0(record);
        break;
    case 0x88:
        func_8008EFA4(record);
        break;
    case 0x89:
        func_8008D358(record);
        break;
    case 0x8B:
        func_8008CAB8(record);
        break;
    case 0x9B:
        func_8008CDEC(record);
        break;
    case 0x8A:
        func_8008F734(record);
        break;
    case 0x9F:
        func_8008F2DC(record);
        break;
    case 0xA1:
        func_8008FDB8(record);
        break;
    case 0x8C:
    case 0x9A:
        func_800930E0(record);
        break;
    case 0x8D:
        func_80091EE4(record);
        break;
    case 0x8E:
        func_80092578(record);
        break;
    case 0x8F:
        func_800917F0(record);
        break;
    case 0x90:
        func_80092C0C(record);
        break;
    case 0xA0:
        func_80093644(record);
        break;
    case 0x91:
        func_8008B1F0(record);
        break;
    case 0x92:
        func_8008B924(record);
        break;
    case 0x94:
        func_8008B700(record);
        break;
    case 0x95:
        func_8008C348(record);
        break;
    case 0x96:
        func_8008A9D4(record);
        break;
    case 0x97:
        func_8008C204(record);
        break;
    case 0x9D:
        func_8006E5F0(record);
        break;
    case 0x93:
        func_80093C68(record);
        break;
    case 0xFE:
        func_80189894(record);
        break;
    case 0x98:
    case 0x9C:
    case 0x9E:
    case 0xA2:
    case 0xA3:
    case 0xA4:
    case 0xA5:
    case 0xA6:
    case 0xA7:
    case 0xA8:
    case 0xA9:
    case 0xAA:
    case 0xAB:
    case 0xAC:
    case 0xAD:
    case 0xAE:
    case 0xAF:
    case 0xB0:
    case 0xB1:
    case 0xB2:
    case 0xB3:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
    case 0xB8:
    case 0xB9:
    case 0xBA:
    case 0xBB:
    case 0xBC:
    case 0xBD:
    case 0xBE:
    case 0xBF:
    case 0xC0:
    case 0xC1:
    case 0xC2:
    case 0xC3:
    case 0xC4:
    case 0xC5:
    case 0xC6:
    case 0xC7:
    case 0xC8:
    case 0xC9:
    case 0xCA:
    case 0xCB:
    case 0xCC:
    case 0xCD:
    case 0xCE:
    case 0xCF:
    case 0xD0:
    case 0xD1:
    case 0xD2:
    case 0xD3:
    case 0xD4:
    case 0xD5:
    case 0xD6:
    case 0xD7:
    case 0xD8:
    case 0xD9:
    case 0xDA:
    case 0xDB:
    case 0xDC:
    case 0xDD:
    case 0xDE:
    case 0xDF:
    case 0xE0:
    case 0xE1:
    case 0xE2:
    case 0xE3:
    case 0xE4:
    case 0xE5:
    case 0xE6:
    case 0xE7:
    case 0xE8:
    case 0xE9:
    case 0xEA:
    case 0xEB:
    case 0xEC:
    case 0xED:
    case 0xEE:
    case 0xEF:
    case 0xF0:
    case 0xF1:
    case 0xF2:
    case 0xF3:
    case 0xF4:
    case 0xF5:
    case 0xF6:
    case 0xF7:
    case 0xF8:
    case 0xF9:
    case 0xFA:
    case 0xFB:
    case 0xFC:
    case 0xFD:
        break;
    }
}
