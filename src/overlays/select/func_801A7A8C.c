#include "common.h"

extern u8 D_800FF748[];
extern u8 *func_8001D004(u16);

/* Set the byte fields and 0x28-byte slot words for one of eleven indexed
 * entries, using the 0x3080-0x309C records. The record layouts and the
 * meaning of the 0xDA-0xDE and 9 byte values are unknown. */
void func_801A7A8C(u8 index, u8 flag)
{
    u8 *first = func_8001D004(0x3080);
    u8 *second = func_8001D004(0x3081);
    u8 *base = D_800FF748;
    u8 *third = func_8001D004(0x3082);
    u8 *label;
    u8 *extra;

    switch (index) {
    case 0:
        label = func_8001D004(0x308B);
        if (flag) {
            second[0x16] = 9;
            second[0xA] = 9;
            label[0x16] = 0xDB;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x6020) = 0;
        } else {
            second[0x16] = 0xDC;
            second[0xA] = 0xDC;
            label[0x16] = 0xDA;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x6020) = 0x60000000;
        }
        break;
    case 1:
        label = func_8001D004(0x308C);
        extra = func_8001D004(0x3093);
        if (flag) {
            first[0x16] = 0xDD;
            first[0xA] = 0xDD;
            second[0x3A] = 9;
            second[0x2E] = 9;
            second[0x22] = 9;
            third[0xA] = 0xDD;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x6048) = 0;
            extra[0xA] = 0xDB;
            *(s32 *)(base + 0x6160) = 0;
        } else {
            first[0x16] = 0xDC;
            first[0xA] = 0xDC;
            second[0x3A] = 0xDC;
            second[0x2E] = 0xDC;
            second[0x22] = 0xDC;
            third[0xA] = 0xDE;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x6048) = 0x60000000;
            extra[0xA] = 0xDA;
            *(s32 *)(base + 0x6160) = 0x60000000;
        }
        break;
    case 2:
        label = func_8001D004(0x308D);
        extra = func_8001D004(0x3094);
        if (flag) {
            first[0x2E] = 0xDD;
            first[0x22] = 0xDD;
            second[0x52] = 9;
            second[0x46] = 9;
            third[0x16] = 0xDD;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x6070) = 0;
            extra[0xA] = 0xDB;
            *(s32 *)(base + 0x6188) = 0;
        } else {
            first[0x2E] = 0xDC;
            first[0x22] = 0xDC;
            second[0x52] = 0xDC;
            second[0x46] = 0xDC;
            third[0x16] = 0xDE;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x6070) = 0x60000000;
            extra[0xA] = 0xDA;
            *(s32 *)(base + 0x6188) = 0x60000000;
        }
        break;
    case 3:
        label = func_8001D004(0x308E);
        extra = func_8001D004(0x3095);
        if (flag) {
            first[0x46] = 0xDD;
            first[0x3A] = 0xDD;
            second[0x5E] = 9;
            third[0x3A] = 0xDD;
            third[0x2E] = 0xDD;
            third[0x22] = 0xDD;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x6098) = 0;
            extra[0xA] = 0xDB;
            *(s32 *)(base + 0x61B0) = 0;
        } else {
            first[0x46] = 0xDC;
            first[0x3A] = 0xDC;
            second[0x5E] = 0xDC;
            third[0x3A] = 0xDE;
            third[0x2E] = 0xDE;
            third[0x22] = 0xDE;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x6098) = 0x60000000;
            extra[0xA] = 0xDA;
            *(s32 *)(base + 0x61B0) = 0x60000000;
        }
        break;
    case 4:
        label = func_8001D004(0x308F);
        extra = func_8001D004(0x3096);
        if (flag) {
            first[0x5E] = 0xDD;
            first[0x52] = 0xDD;
            second[0x6A] = 9;
            third[0x46] = 0xDD;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x60C0) = 0;
            extra[0xA] = 0xDB;
            *(s32 *)(base + 0x61D8) = 0;
        } else {
            first[0x5E] = 0xDC;
            first[0x52] = 0xDC;
            second[0x6A] = 0xDC;
            third[0x46] = 0xDE;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x60C0) = 0x60000000;
            extra[0xA] = 0xDA;
            *(s32 *)(base + 0x61D8) = 0x60000000;
        }
        break;
    case 5:
        label = func_8001D004(0x3090);
        extra = func_8001D004(0x3097);
        if (flag) {
            first[0x76] = 0xDD;
            first[0x6A] = 0xDD;
            second[0x76] = 9;
            third[0x5E] = 0xDD;
            third[0x52] = 0xDD;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x60E8) = 0;
            extra[0xA] = 0xDB;
            *(s32 *)(base + 0x6200) = 0;
        } else {
            first[0x76] = 0xDC;
            first[0x6A] = 0xDC;
            second[0x76] = 0xDC;
            third[0x5E] = 0xDE;
            third[0x52] = 0xDE;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x60E8) = 0x60000000;
            extra[0xA] = 0xDA;
            *(s32 *)(base + 0x6200) = 0x60000000;
        }
        break;
    case 6:
    case 7:
    case 8:
        label = func_8001D004(0x3091);
        if (flag) {
            second[0x82] = 9;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x6110) = 0;
        } else {
            second[0x82] = 0xDC;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x6110) = 0x60000000;
        }
        switch (index) {
        case 6:
            extra = func_8001D004(0x3098);
            if (flag) {
                first[0x8E] = 0xDD;
                first[0x82] = 0xDD;
                third[0x6A] = 0xDD;
                second[0x8E] = 9;
                extra[0xA] = 0xDB;
                *(s32 *)(base + 0x6228) = 0;
            } else {
                first[0x8E] = 0xDC;
                first[0x82] = 0xDC;
                third[0x6A] = 0xDE;
                second[0x8E] = 0xDC;
                extra[0xA] = 0xDA;
                *(s32 *)(base + 0x6228) = 0x60000000;
            }
            break;
        case 7:
            extra = func_8001D004(0x3099);
            if (flag) {
                first[0xA6] = 0xDD;
                first[0x9A] = 0xDD;
                third[0x76] = 0xDD;
                second[0x9A] = 9;
                extra[0xA] = 0xDB;
                *(s32 *)(base + 0x6250) = 0;
            } else {
                first[0xA6] = 0xDC;
                first[0x9A] = 0xDC;
                third[0x76] = 0xDE;
                second[0x9A] = 0xDC;
                extra[0xA] = 0xDA;
                *(s32 *)(base + 0x6250) = 0x60000000;
            }
            break;
        case 8:
            extra = func_8001D004(0x309A);
            if (flag) {
                first[0xBE] = 0xDD;
                first[0xB2] = 0xDD;
                third[0x82] = 0xDD;
                second[0xA6] = 9;
                extra[0xA] = 0xDB;
                *(s32 *)(base + 0x6278) = 0;
            } else {
                first[0xBE] = 0xDC;
                first[0xB2] = 0xDC;
                third[0x82] = 0xDE;
                second[0xA6] = 0xDC;
                extra[0xA] = 0xDA;
                *(s32 *)(base + 0x6278) = 0x60000000;
            }
            break;
        }
        break;
    case 9:
    case 10:
        label = func_8001D004(0x3092);
        if (flag) {
            second[0xB2] = 9;
            label[0xA] = 0xDB;
            *(s32 *)(base + 0x6138) = 0;
        } else {
            second[0xB2] = 0xDC;
            label[0xA] = 0xDA;
            *(s32 *)(base + 0x6138) = 0x60000000;
        }
        switch (index) {
        case 9:
            extra = func_8001D004(0x309B);
            if (flag) {
                first[0xD6] = 0xDD;
                first[0xCA] = 0xDD;
                third[0x8E] = 0xDD;
                extra[0xA] = 0xDB;
                *(s32 *)(base + 0x62A0) = 0;
            } else {
                first[0xD6] = 0xDC;
                first[0xCA] = 0xDC;
                third[0x8E] = 0xDE;
                extra[0xA] = 0xDA;
                *(s32 *)(base + 0x62A0) = 0x60000000;
            }
            break;
        case 10:
            extra = func_8001D004(0x309C);
            if (flag) {
                first[0xEE] = 0xDD;
                first[0xE2] = 0xDD;
                third[0x9A] = 0xDD;
                extra[0xA] = 0xDB;
                *(s32 *)(base + 0x62C8) = 0;
            } else {
                first[0xEE] = 0xDC;
                first[0xE2] = 0xDC;
                third[0x9A] = 0xDE;
                extra[0xA] = 0xDA;
                *(s32 *)(base + 0x62C8) = 0x60000000;
            }
            break;
        }
        break;
    }
}
