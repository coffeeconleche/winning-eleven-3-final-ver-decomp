#include "common.h"

/* Signed values descend; bounds are unsigned, and the outer decrement is
 * unconditional even when the initial bounds are equal. Byte writes can alias
 * the values, so the value pair is reread only after swapping the byte pair. */
void func_801A97FC(u8 *indices, s32 *values, u32 left, u32 right) {
    do {
        u32 i;
        for (i = left; i < right; i++) {
            if (values[i] < values[i + 1]) {
                u8 next = indices[i + 1];
                u8 current = indices[i];
                s32 nextValue, currentValue;
                indices[i] = next;
                indices[i + 1] = current;
                nextValue = values[i + 1];
                currentValue = values[i];
                values[i] = nextValue;
                values[i + 1] = currentValue;
            }
        }
        right--;
    } while (left != right);
}
