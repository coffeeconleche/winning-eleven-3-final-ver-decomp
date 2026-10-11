#include "common.h"

/* Pointer forwarding views for the two existing GTE matrix-load helpers.
 * Known callers ignore the result; the complete original APIs are unknown. */
extern void func_800B3ED8(void *);
extern void func_800B3F08(void *);

void func_800B4A14(void *matrix) {
    func_800B3ED8(matrix);
    func_800B3F08(matrix);
}
