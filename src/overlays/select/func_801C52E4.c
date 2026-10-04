#include "common.h"

/* Access view only; the complete original descriptor type is unknown. */
typedef struct { u16 half0, half2, half4, half6; u8 bytes[12]; } Fields20;
extern u8 D_801D42A8, D_801D89E8, D_801D8FB8;
/* The second byte belongs to the existing 89E8 storage, not new data. */
extern u8 D_801D89E9 __asm__("D_801D89E8+1");
extern void func_801941E0(u32, u32, Fields20 *, u32, u32, u32);
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
/* Callers narrow the result to a byte; the measured word result is 0 or 1. */
s32 func_801C52E4(u32 index, s32 width, s32 height, u8 *pointer,
                   s32 value4, s32 value5) {
    s32 mode;
    register u8 *incoming __asm__("$19");
    s32 result;
    s32 first, second;
    u32 limit;
    u8 effective;
    s32 ten;
    /* Original code leaves bytes[3..11] as prior stack contents even though
     * 941E0 reads them. Do not initialize those unspecified descriptor fields. */
    Fields20 fields;
    /* Entry-only captures retain the original stack-load order. The second
     * word returns to an ordinary local so its tail sign extension uses v0. */
    mode = D_801D42A8;
    __asm__("" : : "r"(mode), "r"(value4));
    {
        register s32 capture __asm__("$21") = value5;
        __asm__("" : "=r"(capture) : "0"(capture));
        value5 = capture;
    }
    /* Keep the incoming pointer capture ahead of the zero-result setup. */
    incoming = pointer;
    __asm__("" : : "r"(incoming));
    result = 0;
    switch (mode) {
    case 0:
        /* Retain the measured signed multiply/divide sequence, without adding
         * a denominator guard or simplifying the original runtime division. */
        ten = 10;
        first = (s16)width * ten / ten;
        second = (s16)height * ten / ten;
        D_801D8FB8 = 0;
        fields.half0 = 0;
        fields.half2 = 0;
        D_801D89E9 = 10;
        D_801D89E8 = 10;
        fields.bytes[0] = 32;
        fields.bytes[1] = 32;
        fields.bytes[2] = 96;
        fields.half4 = first;
        fields.half6 = second;
        func_801941E0((u8)index, 0, &fields, 0, 3, 1);
        goto advance;
    case 1:
        effective = --D_801D89E8;
        limit = D_801D89E9;
        /* Preserve limit-mask-before-counter-mask scheduling. */
        __asm__("" : : "r"((u32)(u8)limit), "r"((u32)effective));
        if (effective > (u8)limit) effective = limit;
        first = (s16)width * effective / (s32)(u8)limit;
        second = (s16)height * effective / (s32)(u8)limit;
        fields.half0 = 0;
        fields.half2 = 0;
        fields.bytes[0] = 32;
        fields.bytes[1] = 32;
        fields.bytes[2] = 96;
        fields.half4 = first;
        fields.half6 = second;
        func_801941E0((u8)index, 0, &fields, 0, 3, 1);
        /* The descriptor call may change these bytes; reread after it. */
        if (D_801D89E8 != 0) break;
        goto advance;
    case 2:
        effective = ++D_801D89E8;
        limit = D_801D89E9;
        __asm__("" : : "r"((u32)(u8)limit), "r"((u32)effective));
        if (effective > (u8)limit) effective = limit;
        first = (s16)width * effective / (s32)(u8)limit;
        second = (s16)height * effective / (s32)(u8)limit;
        fields.half0 = 0;
        fields.half2 = 0;
        fields.bytes[0] = 32;
        fields.bytes[1] = 32;
        fields.bytes[2] = 96;
        fields.half4 = first;
        fields.half6 = second;
        func_801941E0((u8)index, 0, &fields, 0, 3, 1);
        /* Compare the stored, unclamped counter again after the callback. */
        if (D_801D89E8 > D_801D89E9) {
            func_801942E0(0, pointer, -156, 62, 312, 0, 0, 0, 0, 3, 1, 1);
            func_801942E0(1, pointer, -190, (s16)value4, 380, 3, 0, (s16)value5, 0, 12, mode, 1);
            goto advance;
        }
        break;
advance:
        D_801D42A8++;
        break;
    case 3:
        D_801D42A8 = 0;
        result = 1;
        break;
    }
    return result;
}
