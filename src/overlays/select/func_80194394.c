#include "common.h"
extern u8 D_800FF748[];
extern u32 D_800EF8A8;
extern u8 D_801D269C, D_801D269D, D_801D8D70, D_801D8B0D, D_801D8D8C, D_801D8B14, D_801D8DBC, D_801D8B16;
extern u8 D_801D268C[], D_801D5994[], D_801D59AC[], D_801D59D0[];
extern void func_8006F360(void), func_8001B0B8(void);
extern void func_80019C34(void *);
extern void func_80194B64(void), func_80195944(void), func_80195DE0(void);
extern void func_801A4DA8(void), func_801A5188(void), func_801A5FA4(void), func_801A5508(void);
extern void func_801960E0(void), func_801B50F8(void), func_801B53DC(void), func_801BA15C(void);
extern void func_801BABC0(void), func_801BAFBC(void), func_801BD9F8(void), func_801BDB74(void);
extern void func_801BE77C(void), func_801BE9F0(void), func_801BF0F4(void), func_801BF478(void);
extern void func_801C220C(void), func_801C2B50(void), func_801AE020(void), func_801C4BF4(void);
extern void func_801C7A84(void), func_80191DF0(void), func_80193F18(void), func_801CBFE4(void);
extern void func_801C59C4(void);
/* Word-width caller ABI views: these helpers narrow selected fields internally.
 * They are access views, not claims about the complete original prototypes. */
extern void func_801C576C(void *, u32, u32, u32);
extern void func_801C588C(s32, s32, u32, u32, u32);

void func_80194394(void) {
    u32 word = *(u32 *)0x1F8002A4;
    u32 state = *(u8 *)0x1F800330;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *record, *field;
    s32 i;
    /* Capture the scratch word and byte before the externally visible store. */
    D_800EF8A8 = word;
    if (state == 1)
        func_8006F360();
    record = base + 0x5DC0;
    i = 0;
    field = base + 0x5DCC;
    /* Two independent 40-byte cursors retain the measured row and word views.
     * Both gates and the word field are reloaded for each row. */
    do {
        if (field[-8] != 0 && *(u32 *)field != 0)
            func_80019C34(record);
        i++;
        field += 40;
        record += 40;
    } while (i < 58);
    func_80194B64();
    func_80195944();
    func_80195DE0();
    if (scratch[0x1EC] == 0)
        func_8001B0B8();
    /* This selector is read after the callbacks above. The retained 138-word
     * table covers 0..137; omitted values have no dispatch side effect. */
    switch ((u8)scratch[0x2A2]) {
    case 0:
        break;
    case 1:
        func_801A4DA8();
        func_801A5188();
        if ((u8)scratch[0x2E1] == 3)
            func_801A5FA4();
        break;
    case 2:
        func_801A4DA8();
        func_801A5188();
        func_801A5508();
        break;
    case 4:
        func_801960E0();
        func_801B50F8();
        break;
    case 5:
        func_801960E0();
        func_801B53DC();
        break;
    case 16:
        func_801960E0();
        func_801BA15C();
        func_801BABC0();
        break;
    case 17: func_801BAFBC(); break;
    case 32: func_801BD9F8(); break;
    case 33: func_801BDB74(); break;
    case 34: func_801BE77C(); break;
    case 35: func_801BE9F0(); break;
    case 36: func_801BF0F4(); break;
    case 37: func_801BF478(); break;
    case 48:
        func_801960E0(); func_801C220C(); break;
    case 49:
        func_801960E0(); func_801C2B50(); break;
    case 64: func_801AE020(); break;
    case 65:
        func_801C576C(D_801D268C, D_801D269C, 0, D_801D269D);
        func_801960E0();
        break;
    case 128: func_801C4BF4(); break;
    case 129: func_801C7A84(); break;
    case 130:
        func_80191DF0();
        func_80193F18();
        goto follow;
    case 131:
        /* Each scalar read remains after the preceding callback, including
         * the repeated packed-byte and flag-byte reads below. */
        func_801C4BF4();
        func_801C576C(D_801D59AC, D_801D8D70 >> 4, 2, D_801D8B0D & 2);
        func_801C576C(D_801D59D0, D_801D8D70 & 15, 2, D_801D8B0D & 1);
        func_801C588C(-4, -19, base[0x8F13], 2, D_801D8B0D & 1);
        goto follow;
    case 132:
        func_801C4BF4();
        func_801C576C(D_801D59AC, D_801D8D8C, 2, D_801D8B14);
        goto follow;
    case 134:
        func_801C4BF4();
        func_801C576C(D_801D5994, D_801D8DBC, 2, D_801D8B16);
        func_801C588C(14, -10, scratch[0x338], 2, D_801D8B16);
        break;
    case 135: func_801CBFE4(); break;
    case 137:
follow:
        func_801C59C4();
        break;
    }
}
