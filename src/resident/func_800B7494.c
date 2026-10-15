#include "types.h"

u8 *func_800B7494(s32 sector, u8 *position)
{
    s32 biased = (s32)((u32)sector + 150U);
    s32 seconds = biased / 75;
    s32 frames = biased % 75;
    s32 minutes = seconds / 60;

    seconds %= 60;
    position[2] = (frames / 10) * 16 + frames % 10;
    position[1] = (seconds / 10) * 16 + seconds % 10;
    position[0] = (minutes / 10) * 16 + minutes % 10;
    return position;
}
