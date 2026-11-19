#include "common.h"

s32 func_800B7598(const u8 *time)
{
    u8 packedMinutes = time[0];
    u8 packedSeconds = time[1];
    u32 elapsedSeconds;
    u8 frames;
    u32 fiveTimesSeconds;
    u32 position;

    /* Each input byte contains two packed decimal digits. */
    elapsedSeconds = ((packedMinutes >> 4) * 10U + (packedMinutes & 15U)) * 60U;
    elapsedSeconds += (packedSeconds >> 4) * 10U + (packedSeconds & 15U);
    /* Multiply by 75 as five times 16 minus five. */
    fiveTimesSeconds = elapsedSeconds * 5U;
    position = fiveTimesSeconds << 4;
    frames = time[2];
    position -= fiveTimesSeconds;
    /* Absolute CD time has a 150-sector offset from logical block zero. */
    return (s32)(position + ((frames >> 4) * 10U + (frames & 15U))) - 150;
}
