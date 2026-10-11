#include "common.h"

/* Provisional call-site views: the inspected callees do not consume incoming
 * arguments. The known caller ignores v0; leave callback/default residues
 * intact without declaring a historical return API. */
extern void func_8004FD5C(void);
extern void func_8007CF7C(void);
extern void func_8007D5E8(void);
extern void func_8007D7E0(void);
extern void func_8007DCC4(void);

void func_8007CEDC(void)
{
    func_8004FD5C();
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_8007CF7C();
        break;
    case 1:
        func_8007D5E8();
        break;
    case 2:
        func_8007D7E0();
        break;
    case 3:
        func_8007DCC4();
        break;
    }
}
