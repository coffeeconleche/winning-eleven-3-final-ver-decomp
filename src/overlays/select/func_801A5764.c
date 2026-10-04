#include "common.h"

extern u8 D_801D8078[], D_801D8198, D_801D8199;
extern s16 D_801D8080, D_801D8082, D_801D8088, D_801D808A;
extern s16 D_801D8090, D_801D8092, D_801D8098, D_801D809A;
extern s16 D_801D80A4, D_801D80A6, D_801D80AC, D_801D80AE;
extern s16 D_801D80B4, D_801D80B6, D_801D80BC, D_801D80BE;
extern s16 D_801D80C8, D_801D80CA, D_801D80D0, D_801D80D2;
extern s16 D_801D80D8, D_801D80DA, D_801D80E0, D_801D80E2;
extern s16 D_801D80EC, D_801D80EE, D_801D80F4, D_801D80F6;
extern s16 D_801D80FC, D_801D80FE, D_801D8104, D_801D8106;
extern s16 D_801D8110, D_801D8112, D_801D8118, D_801D811A;
extern s16 D_801D8120, D_801D8122, D_801D8128, D_801D812A;
extern s16 D_801D8134, D_801D8136, D_801D813C, D_801D813E;
extern s16 D_801D8144, D_801D8146, D_801D814C, D_801D814E;
extern s16 D_801D8158, D_801D815A, D_801D8160, D_801D8162;
extern s16 D_801D8168, D_801D816A, D_801D8170, D_801D8172;
extern s16 D_801D817C, D_801D817E, D_801D8184, D_801D8186;
extern s16 D_801D818C, D_801D818E, D_801D8194, D_801D8196;
extern void func_800ADD80(void *);
/* Observed word-width arguments: the callee dispatches on the first word
 * and narrows the second internally. The complete original API is unknown. */
extern void func_801A5A14(u32, u32);

void func_801A5764(u32 first, u32 second) {
    s32 i = 0;
    u8 *entry = D_801D8078;
    do {
        func_800ADD80(entry);
        i++;
        entry += 36;
    } while (i < 8);
    /* Eight measured 36-byte records; keep the scalar halfword stores in
     * their observed order without assuming a complete packet structure. */
    D_801D8080 = -170;
    D_801D8082 = 10;
    D_801D8088 = 170;
    D_801D808A = 10;
    D_801D8090 = -167;
    D_801D8092 = 13;
    D_801D8098 = 167;
    D_801D809A = 13;
    D_801D80A4 = 167;
    D_801D80A6 = 52;
    D_801D80AC = 167;
    D_801D80AE = 13;
    D_801D80B4 = 170;
    D_801D80B6 = 55;
    D_801D80BC = 170;
    D_801D80BE = 10;
    D_801D80C8 = 170;
    D_801D80CA = 55;
    D_801D80D0 = -170;
    D_801D80D2 = 55;
    D_801D80D8 = 167;
    D_801D80DA = 52;
    D_801D80E0 = -167;
    D_801D80E2 = 52;
    D_801D80EC = -170;
    D_801D80EE = 10;
    D_801D80F4 = -170;
    D_801D80F6 = 55;
    D_801D80FC = -167;
    D_801D80FE = 13;
    D_801D8104 = -167;
    D_801D8106 = 52;
    D_801D8110 = -170;
    D_801D8112 = 10;
    D_801D8118 = 170;
    D_801D811A = 10;
    D_801D8120 = -167;
    D_801D8122 = 13;
    D_801D8128 = 167;
    D_801D812A = 13;
    D_801D8134 = 167;
    D_801D8136 = 52;
    D_801D813C = 167;
    D_801D813E = 13;
    D_801D8144 = 170;
    D_801D8146 = 55;
    D_801D814C = 170;
    D_801D814E = 10;
    D_801D8158 = 170;
    D_801D815A = 55;
    D_801D8160 = -170;
    D_801D8162 = 55;
    D_801D8168 = 167;
    D_801D816A = 52;
    D_801D8170 = -167;
    D_801D8172 = 52;
    D_801D817C = -170;
    D_801D817E = 10;
    D_801D8184 = -170;
    D_801D8186 = 55;
    D_801D818C = -167;
    D_801D818E = 13;
    D_801D8194 = -167;
    D_801D8196 = 52;
    func_801A5A14(first, 0);
    func_801A5A14(second, 1);
    D_801D8198 = 1;
    D_801D8199 = 0;
}
