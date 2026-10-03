#include "common.h"

extern u8 D_800FF748[];
extern u16 D_800AD638;
extern void func_8019A700(void), func_8019A804(void), func_8019AED8(void);
extern void func_8019E4D8(void), func_8018F324(void);
extern s32 func_8019F994(void);
extern void func_800171FC(s32), func_800171C4(s32);

void func_8019A3FC(void) {
    u8 *base = D_800FF748;

    switch (*(u8 *)0x1F80029B) {
        case 0: func_8019A700(); break;
        case 1: func_8019A804(); break;
        case 2: func_8019AED8(); break;
        case 3: func_8019E4D8(); break;
        case 4:
            switch (func_8019F994()) {
                case 1:
                    func_800171FC(2);
                    base[0xABDA] = 1;
                    D_800AD638 = 3;
                    break;
                case 2:
                    func_800171C4(7);
                    func_800171FC(0);
                    base[0xABDA] = 0;
                    break;
            }
            break;
        case 5: func_8018F324(); break;
    }
}
