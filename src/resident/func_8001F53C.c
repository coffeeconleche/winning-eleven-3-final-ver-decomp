#include "common.h"

extern u8 D_800FF748[], D_800E8208[];
extern void func_80021F28(void), func_8001FA1C(void);
extern void func_8001D14C(u32,u32,u32,u32,s32,u32,u32,u32,u32,u32);
extern void func_80021A68(u8 *,u8 *,u32,u32);
extern void func_80066BD8(u32), func_800512B8(u8 *,u32);
extern void func_8001D470(u8,u8,s16,s16,u8,u32,u32,u32,u8);
extern void func_8009B888(void), func_8005ADE4(void), func_8009BDAC(void);
extern void func_8009ADD4(void), func_80099F20(u8), func_80098428(void);
extern void func_8001FF7C(u8 *);

/* Scratch and record pointers are partial views of existing target storage.
 * Absolute scratch addresses require translation in a native port. No storage
 * is added.
 * phase is a real byte object read and written synchronously by 80021A68. */
void func_8001F53C(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *base = D_800FF748;
    u8 *record = base + 1000;
    s32 i = 0;
    u8 phase;
    u8 mode;
    do {
        record[0x38D] = i + 1;
        i++;
        record += 1000;
    } while (i < 22);
    func_80021F28();
    i = 0;
    do {
        u8 *current = scratch + i;
        current[0x2AA] = 255;
        if (scratch[0x2DF] == 0 &&
            scratch[0x2D1] + scratch[0x2D2] == 0) {
            current[0x305] = 0;
            current[0x2FF] = 1;
        }
        i++;
    } while (i < 2);
    func_8001FA1C();
    record = base + 11000;
    func_8001D14C(0,64,0,0,0,192,0xCCC,0xCCC,0xCCC,1);
    i = 11;
    *(s16 *)(*(u8 **)(scratch + 0x2F4) + 4) = -32;
    (*(u8 **)(scratch + 0x2F4))[0x3D3] = 1;
    phase = 0;
    do {
        if (record[0] != 0) {
            func_80021A68(record,&phase,scratch[0x2A8] >= 12,(u8)i);
        }
        i--;
        record -= 1000;
    } while (i > 0);
    record = base + 22000;
    i = 11;
    phase = 0;
    do {
        if (record[0] != 0) {
            func_80021A68(record,&phase,scratch[0x2A8] < 12,(u8)i);
        }
        i--;
        record -= 1000;
    } while (i > 0);
    func_80066BD8(2);
    func_80066BD8(13);
    func_800512B8(base + (u8)(scratch[0x2AD] % 24) * 1000,3);
    mode = scratch[0x2E1];
    *(s16 *)(scratch + 0x2B8) = 32767;
    *(s16 *)(scratch + 0x2B4) = 32767;
    if ((u8)mode == 5) {
        func_8001D470(17,9,0,0,192,4096,4096,4096,0);
    } else {
        func_8009B888();
    }
    func_8005ADE4();
    func_8009BDAC();
    func_8009ADD4();
    func_80099F20(0);
    func_80098428();
    func_8001FF7C(D_800E8208);
    func_8001FF7C(D_800E8208 + 0x3AC0);
}
