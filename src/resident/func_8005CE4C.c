#include "common.h"

extern void func_8009CF84(void);
extern void func_8009D008(void);
extern void func_8009D148(void);
extern void func_8009D250(void);
extern void func_8009D35C(void);
extern void func_8009D380(void);
extern void func_8009D3C8(void);
extern void func_8009D670(void);
extern void func_8009D4C4(void);
extern void func_8009D81C(void);
extern void func_8009D9C4(void);
extern void func_8009DCC0(void);
extern void func_8009E244(void);
extern void func_8009D3A4(void);
extern void func_8009E318(void);
extern void func_8009E664(void);
extern void func_8009EBC0(void);

/* Replay-frame phase dispatcher on the record mode at +0x3E2. */
void func_8005CE4C(u8 *record) {
    *(u16 *)(record + 0x3D6) = 0;
    *(u16 *)(record + 0x3D4) = 0;
    record[0x3DA] = record[0x3DA] + 1;
    switch (record[0x3E2]) {
    case 0:
        func_8009CF84();
        break;
    case 1:
        func_8009D008();
        break;
    case 2:
        func_8009D148();
        break;
    case 3:
        func_8009D250();
        break;
    case 4:
        func_8009D35C();
        break;
    case 5:
        func_8009D380();
        break;
    case 6:
        func_8009D3C8();
        break;
    case 9:
        func_8009D670();
        break;
    case 8:
        func_8009D4C4();
        break;
    case 10:
        func_8009D81C();
        break;
    case 11:
        func_8009D9C4();
        break;
    case 12:
        func_8009DCC0();
        break;
    case 13:
        func_8009E244();
        break;
    case 14:
        func_8009D3A4();
        break;
    case 15:
        func_8009E318();
        break;
    case 16:
        func_8009E664();
        break;
    case 17:
        func_8009EBC0();
        break;
    case 32:
        break;
    case 7:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    default:
        record[0x3E2] = 0;
        record[0x3E3] = 0;
        break;
    }
}
