#include "common.h"

typedef struct {
    u32 rotation[5];
    u32 translation[3];
} Transform;

extern u32 *func_800B4E48(const Transform *rotation, const u32 *vector, u32 *result);
extern void func_800B50F8(Transform *source, Transform *destination);

void func_800B4C14(Transform *source, Transform *destination)
{
    u32 offset[3];

    /* Rotate the destination translation before composing the rotations. */
    func_800B4E48(source, destination->translation, offset);
    func_800B50F8(source, destination);
    source->translation[0] = offset[0] + source->translation[0];
    source->translation[1] = offset[1] + source->translation[1];
    source->translation[2] = offset[2] + source->translation[2];
}
